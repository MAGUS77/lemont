# 📘 DOCUMENTACIÓN TÉCNICA

## Estructura del Proyecto

```
lemont/
├── index.html                # Tu web (único archivo necesario)
├── INICIO_RAPIDO.md         # Guía de 5 minutos
├── GUIA_DESPLIEGUE.md       # Guía completa
├── REFERENCIA_TECNICA.md    # Este archivo
└── README.md                 # Presentación del proyecto
```

---

## Estructura HTML de `index.html`

### Secciones principales:

1. **Head** (líneas 1-180)
   - Meta tags
   - Google Fonts
   - CSS inline

2. **Body** (líneas 180-240)
   - Header con título
   - Main con formulario
   - Script con lógica

3. **Script** (líneas 240-310)
   - Lógica de estrellas
   - Envío de formulario
   - Redirecciones

---

## Variables Configurables

### Email Destino
```javascript
const emailDestino = 'pedrodelmonte235@gmail.com';
```
- Todos los formularios van a este email
- FormSubmit reenvía desde aquí

### URL de Destino
```javascript
const urlCuchilleria = 'https://www.gomezpamplona.com';
```
- A donde se redirige si rating > 3
- Puede ser Google Reviews, tu web, etc.

---

## Lógica de Condiciones

### Si rating ≤ 3 (Baja valoración)
```javascript
if(rating <= 3) {
  // 1. Asigna acción a FormSubmit
  form.action = `https://formsubmit.co/${emailDestino}`;
  // 2. Muestra mensaje
  messageDiv.innerText = '📤 Enviando tu feedback...';
  // 3. Envía el formulario
  form.submit();
}
```

**Resultado:** Email llega a `emailDestino`

### Si rating > 3 (Alta valoración)
```javascript
else {
  // 1. Muestra mensaje
  messageDiv.innerHTML = `🎉 ¡Gracias...`;
  // 2. Envía datos en background
  fetch(`https://formsubmit.co/${emailDestino}`, {...});
  // 3. Redirige después de 2 segundos
  window.location.href = urlCuchilleria;
}
```

**Resultado:** Email + Redirección

---

## Campos del Formulario

| Campo | Nombre | Tipo | Requerido |
|-------|--------|------|-----------|
| Nombre | `nombre` | text | SÍ |
| Apellido | `apellido` | text | SÍ |
| Valoración | `rating` | hidden | SÍ |
| Comentario | `comentario` | textarea | NO |

---

## Eventos JavaScript

### Hover en Estrellas
```javascript
star.addEventListener('mouseenter', () => {
  // Escala y rota las estrellas al pasar el ratón
  s.style.transform = 'scale(1.15) rotate(15deg)';
});
```

### Click en Estrellas
```javascript
star.addEventListener('click', () => {
  // Captura valor (1-5)
  rating = star.getAttribute('data-value');
  // Marca como seleccionadas
  star.classList.add('selected');
  // Marca también anteriores
  while(prev) {prev.classList.add('selected');}
});
```

### Submit del Formulario
```javascript
form.addEventListener('submit', e => {
  e.preventDefault();  // Previene recarga
  // Valida que haya rating
  if(rating === 0) alert('Selecciona una valoración');
  // Decide qué hacer según rating
  if(rating <= 3) {...} else {...}
});
```

---

## Estilos CSS Principales

### Gradiente de Fondo
```css
background: linear-gradient(135deg, #fef9e7 0%, #fff9c4 100%);
```

### Coloer de Estrellas
```css
.star { color: #e0e0e0; }
.star:hover { color: #f4c542; }
.star.selected { color: #f4c542; }
```

### Animaciones
```css
@keyframes slideDown { /* Header */}
@keyframes fadeInUp { /* Main */}
@keyframes fadeIn { /* Mensaje */}
```

### Responsive
```css
@media(max-width:480px) {
  header h1 { font-size: 2.5rem; }
  main { padding: 35px 25px; }
}
```

---

## Integración FormSubmit

### Cómo envía los datos:

1. **Primer envío:**
   - Usuario completa form
   - Click en "Enviar"
   - FormSubmit envía email de confirmación

2. **Usuario confirma:**
   - Haz click en el enlace del email
   - Confirmas tu dirección

3. **Envíos posteriores:**
   - Todos los datos llegan a tu email automáticamente

### Datos que recibe:

```
Nombre: Juan
Apellido: García
Valoración: 5
Comentario: Excelente servicio
IP: 192.168.1.1
Fecha: 12/02/2026
```

### Funciones FormSubmit usadas:

```html
<!-- Redireccionar después de envío -->
<input type="hidden" name="_next" value="URL">

<!-- Desactivar captcha -->
<input type="hidden" name="_captcha" value="false">
```

---

## Flujo Técnico Completo

```
┌─────────────────────────────────────┐
│ Usuario abre index.html             │
│ (Todo ocurre en el navegador)        │
└──────────────┬──────────────────────┘
               │
               ▼
┌─────────────────────────────────────┐
│ Carga:                              │
│ - Poppins font de Google             │
│ - CSS (180 líneas)                   │
│ - HTML form                          │
└──────────────┬──────────────────────┘
               │
               ▼
┌─────────────────────────────────────┐
│ Usuario interactúa:                 │
│ - Escribe nombre                     │
│ - Selecciona estrellas               │
│ - Escribe comentario (opcional)      │
└──────────────┬──────────────────────┘
               │
               ▼
┌─────────────────────────────────────┐
│ Click "Enviar"                      │
│ Script valida (rating > 0)           │
└──────────────┬──────────────────────┘
               │
        ┌──────┴──────┐
        │             │
        ▼             ▼
    ≤3 ★         >3 ★
        │             │
        ▼             ▼
   Email solo    Email + Redirige
   (FormSubmit)   (FormSubmit + JS)
```

---

## FormData API Utilizada

```javascript
const formData = new FormData(form);
const nombre = formData.get('nombre');
```

Esto captura automáticamente:
- `form.nombre`
- `form.apellido`
- `form.comentario`
- `form.rating` (hidden)

---

## Fetch API (para rating alto)

```javascript
fetch(`https://formsubmit.co/${emailDestino}`, {
  method: 'POST',
  body: formData
}).catch(() => {});  // Silencia errores
```

Esto envía datos en background sin esperar respuesta.

---

## Personalización de Textos

### Para cambiar cualquier texto, busca:

| Elemento | Busca | En |
|----------|-------|-----|
| Título | `<h1>Lemon</h1>` | HTML |
| Subtítulo | `Gracias por tu visita` | HTML |
| Placeholder nombre | `¿Cuál es tu nombre?` | HTML |
| Pedir rating | `¿Cómo fue tu experiencia?` | HTML |
| Botón | `Enviar valoración` | HTML |
| Mensaje rating bajo | `🙏 Gracias ${nombre}...` | JS |
| Mensaje rating alto | `🎉 ¡Gracias ${nombre}...` | JS |

---

## Personalización de Colores

### Paleta actual:
- 🟡 Amarillo principal: `#f4c542`
- 🟡 Amarillo oscuro: `#f0a931` (hover)
- 🟡 Fondo claro: `#fef9e7`
- 🟡 Fondo claro: `#fff9c4`
- ⚫ Texto: `#333`
- 🟢 Google: `#0f9d58`

### Para cambiar a otra paleta:
1. Busca los valores hexadecimales
2. Reempliza por otro color
3. Ejemplo - Azul:
   - `#f4c542` → `#2196F3`
   - `#f0a931` → `#1976D2`

---

## Performance

- **Tamaño:** ~15 KB (solo HTML, CSS inline)
- **Carga:** Instantánea (<1 segundo)
- **Dependencias externas:**
  - Google Fonts (Poppins)
  - FormSubmit.co (para emails)
- **Sin librerías pesadas** (jQuery, Bootstrap, etc.)

---

## Seguridad

- ✅ No hay backend propio (seguro)
- ✅ Datos enviados a FormSubmit encriptado
- ✅ Sin base de datos expuesta
- ✅ FormSubmit usa HTTPS

**Nota:** Los datos van: Usuario → FormSubmit → Tu Email

---

## Validaciones

```javascript
// Validar que hay rating
if(rating === 0) {
  alert('Por favor, selecciona una valoración');
  return;
}
```

**Lo que ya está validado en HTML:**
- Campo nombre: `required`
- Campo apellido: `required`
- Otros campos opcionales

---

## Debugging

### Para ver errores en consola:
1. Abre: F12 (o Cmd+Option+I en Mac)
2. Ve a "Console"
3. Prueba el formulario
4. Mira qué errores aparecen

### Comán útiles:
```javascript
console.log('rating:', rating);
console.log('formData:', formData);
console.log('emailDestino:', emailDestino);
```

---

## Extensiones Posibles

### Agregar Google Analytics:
```html
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_ID"></script>
```

### Agregar WhatsApp:
```html
<a href="https://wa.me/34XXX">Escribir por WhatsApp</a>
```

### Agregar Teléfono:
```html
<a href="tel:+34123456789">Llamar</a>
```

### Agregar reCAPTCHA:
```html
<input type="hidden" name="_captcha" value="false">
```

---

## Archivos Generados

```
index.html          (15.3 KB)
INICIO_RAPIDO.md    (3.2 KB)
GUIA_DESPLIEGUE.md  (12.5 KB)
REFERENCIA_TECNICA  (Este archivo)
README.md           (0.5 KB)
```

---

## Version Info

- **Versión:** 1.0
- **Fecha:** 12 Febrero 2026
- **Navegadores:** Todos modernos
- **Responsivo:** SÍ (Móvil, tablet, desktop)
- **PWA:** NO (pero funciona offline menos envío)

---

## Recursos Útiles

- [FormSubmit Documentation](https://formsubmit.co)
- [MDN Web Docs](https://developer.mozilla.org)
- [CSS Tricks](https://css-tricks.com)
- [JavaScript Info](https://javascript.info)

---

**¿Preguntas técnicas? Consulta esta documentación.**
