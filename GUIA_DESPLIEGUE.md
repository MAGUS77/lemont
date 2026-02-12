# 🍋 LEMON FEEDBACK - Guía Completa de Uso y Despliegue

## 📌 Resumen Rápido

Este proyecto es un **formulario de feedback interactivo** para Cuchillería Gómez Pamplona que:
- ⭐ Recibe valoraciones con estrellas
- 📧 Envía automaticamente emails si la valoración es baja (1-3 estrellas)
- 🔗 Redirige a la web de la cuchillería si la valoración es alta (4-5 estrellas)

**Archivo único:** `index.html` - Eso es todo lo que necesitas

---

## 🚀 CÓMO USAR

### Para Usar Localmente (Tu Ordenador)

**Paso 1:** Descarga `index.html`

**Paso 2:** Abre el archivo con tu navegador
- Opción A: Haz doble clic en el archivo
- Opción B: Click derecho → "Abrir con" → Tu navegador

**¡Listo!** La web funcionará completamente local

---

## 🌐 CÓMO PUBLICAR EN INTERNET (GRATIS)

### OPCIÓN 1: GitHub Pages (LO MÁS FÁCIL)

**Paso 1: Crea una cuenta en GitHub**
- Ve a [github.com](https://github.com)
- Regístrate (si no tienes cuenta)

**Paso 2: Crea un repositorio**
- Click en "New Repository"
- Nombre: `lemon-feedback`
- Marca "Public"
- Click "Create repository"

**Paso 3: Sube tu archivo**
- Abre el repositorio que acabas de crear
- Click en "Add file" → "Upload files"
- Arrastra `index.html` al recuadro
- Click "Commit changes"

**Paso 4: Activa GitHub Pages**
- Ve a "Settings" (en la pestaña del repo)
- Ve a "Pages" (en el menú izquierdo)
- En "Source", selecciona "main"
- Click "Save"

**¡LISTO!** Tu web estará en: `https://tuusuario.github.io/lemon-feedback`

---

### OPCIÓN 2: Vercel (AÚN MÁS RÁPIDO)

**Paso 1:** Ve a [vercel.com](https://vercel.com)

**Paso 2:** Click en "Create"

**Paso 3:** Elige "Import Git Repository"

**Paso 4:** Conecta tu cuenta de GitHub

**Paso 5:** Selecciona el repositorio `lemon-feedback`

**¡LISTO!** Se despliega automáticamente en segundos

---

### OPCIÓN 3: Netlify

**Paso 1:** Ve a [netlify.com](https://netlify.com)

**Paso 2:** "Add new site" → "Import an existing project"

**Paso 3:** Conecta GitHub

**Paso 4:** Selecciona tu repositorio

**¡LISTO!** Tu web está en línea

---

## ⚙️ CONFIGURACIÓN IMPORTANTE

### Cambiar el Email Destino

**Abre `index.html` con un editor de texto** (Notepad++, VS Code, etc.)

**Busca esta línea (alrededor de la 230):**
```javascript
const emailDestino = 'pedrodelmonte235@gmail.com';
```

**Reempliza con tu email:**
```javascript
const emailDestino = 'tu-email@gmail.com';
```

**Guarda el archivo**

---

### Cambiar URL de la Cuchillería

**Busca esta línea (alrededor de la 231):**
```javascript
const urlCuchilleria = 'https://www.gomezpamplona.com';
```

**Reempliza con tu URL:**
```javascript
const urlCuchilleria = 'https://www.lacuchilleria.com';
```

---

### Cambiar Textos

**Para cambiar el título:**
Busca:
```html
<h1>Lemon</h1>
```

**Para cambiar el subtítulo:**
Busca:
```html
<p>Gracias por tu visita. Cuéntanos cómo fue tu experiencia.</p>
```

**Para cambiar el botón:**
Busca:
```html
<button type="submit">✨ Enviar valoración</button>
```

---

## 📧 PRIMEROS PASOS CON EMAILS

**La primera vez que alguien envíe un formulario:**

1. Recibirás un email de confirmación de FormSubmit
2. Haz click en el enlace de confirmación
3. ¡A partir de ahí, todos los emails llegarán a tu bandeja!

**Si no recibes el email de confirmación:**
- Revisa la carpeta de SPAM/Correo no deseado
- Asegúrate de que el email es correcto en el código

---

## 🔗 CÓMO COMPARTIR TU WEB

Una vez publicada, puedes compartirla así:

### Opción 1: Copiar y Pegar la URL
```
https://tuusuario.github.io/lemon-feedback
```

### Opción 2: Generar un Código QR
1. Ve a [qr-code-generator.com](https://www.qr-code-generator.com/)
2. Pega tu URL
3. Descarga el QR
4. Imprímelo y ponlo en tu tienda

### Opción 3: Acortador de URLs
- [bit.ly](https://bit.ly) - Acorta tu URL y rastrea clics
- [tinyurl.com](https://tinyurl.com)

---

## 📱 VER CÓMO SE VE EN MÓVIL

Prueba tu web en diferentes dispositivos:
- **Ordenador:** Abre en tu navegador
- **Móvil:** Escanea el código QR o pega la URL
- **Tablet:** Igual que móvil

Verás que se adapta perfectamente a cualquier pantalla.

---

## 🎯 FLUJO DE LA WEB

```
1. Usuario entra a tu web
         ↓
2. Llena nombre, apellido y elige estrellas
         ↓
3. Escribe un comentario (opcional)
         ↓
4. Hace click en "Enviar"
         ↓
5. ¿Cuántas estrellas?
    │
    ├─ SI: 1, 2 o 3 estrellas → Email llega a tu bandeja
    │
    └─ SI: 4 o 5 estrellas → Se redirige a tu web para dejar reseña
```

---

## 🛠️ EDITORES RECOMENDADOS PARA MODIFICAR

**Gratuitos:**
- Visual Studio Code: [code.visualstudio.com](https://code.visualstudio.com)
- Notepad++: [notepad-plus-plus.org](https://notepad-plus-plus.org)
- Sublime Text: [sublimetext.com](https://sublimetext.com)

**Online (sin instalar):**
- [Replit.com](https://replit.com) - Edita y publica online
- [JSFiddle](https://jsfiddle.net) - Prueba cambios al instante

---

## ❓ PREGUNTAS FRECUENTES

**P: ¿Necesito un servidor?**
R: NO. GitHub Pages es gratuito y lo hace por ti.

**P: ¿Cuánto cuesta?**
R: 100% GRATIS. GitHub Pages es gratuito, FormSubmit es gratuito.

**P: ¿Cuántos emails puedo recibir?**
R: FormSubmit permite 50/mes gratis. Si necesitas más, ten plan premium.

**P: ¿Se ve bien en móvil?**
R: SÍ. Está completamente optimizado para todos los tamaños.

**P: ¿Puedo cambiar los colores?**
R: SÍ. Busca el `<style>` en el HTML y modifica los valores de color.

**P: ¿Qué es FormSubmit?**
R: Un servicio que recibe los datos del formulario y te lo envía por email. Es seguro y gratuito.

---

## 🚨 IMPORTANTE: PRIMEROS PASOS

**DESPUÉS de publicar:**

1. ✅ Prueba el formulario tú mismo
2. ✅ Verifica que llegas los emails
3. ✅ Comprueba que la redirección funciona
4. ✅ Prueba en móvil
5. ✅ Asegúrate de CONFIRMAR tu email en FormSubmit

---

## 💡 TIPS PROFESIONALES

✅ **Genera un QR:**
- Impácto visual en la tienda
- Los clientes no tienen que escribir la URL

✅ **Pon el enlace en redes sociales:**
- Instagram: Enlace en biografía
- WhatsApp: Comparte el enlace

✅ **Rastrear clics:**
- Usa bit.ly para ver cuánta gente accede

✅ **Horarios:**
- Ten la web disponible 24/7
- Los clientes pueden valorar en cualquier momento

---

## 🎨 PERSONALIZACIÓN EXTRA (Avanzado)

### Cambiar colores principales

En el `<style>`, busca:
```css
background:linear-gradient(135deg, #fef9e7 0%, #fff9c4 100%);
```

Cambia `#fef9e7` y `#fff9c4` por otros colores. Ej:
```css
background:linear-gradient(135deg, #e3f2fd 0%, #bbdefb 100%);  /* Azul */
background:linear-gradient(135deg, #f3e5f5 0%, #e1bee7 100%);  /* Púrpura */
```

### Cambiar tamaño del botón

Busca:
```css
button {
    padding:18px 30px;
```

Aumenta los números para hacerlo más grande.

---

## 📊 MONITORIZAR RESPUESTAS

**Opción 1: Email**
- Los emails llegan a tu bandeja
- Puedes contar respuestas manualmente

**Opción 2: Google Forms**
- Copia los datos a Google Forms
- Tiene gráficas automáticas

**Opción 3: Integración con Zapier**
- Conecta FormSubmit con tu herramienta favorita
- Dashboard automático

---

## 🔒 SEGURIDAD

✅ Tu web es 100% segura
✅ FormSubmit encripta los datos
✅ No hay base de datos con información sensible
✅ Cada email proviene de un usuario real

---

## 📞 SOPORTE

- **FormSubmit:** [formsubmit.co](https://formsubmit.co)
- **GitHub Pages:** [pages.github.com](https://pages.github.com)
- **Vercel:** [vercel.com/docs](https://vercel.com/docs)

---

## 📝 CHECKLIST FINAL

Antes de publicar:
- [ ] Email configurado correctamente
- [ ] URL de la cuchillería actualizada
- [ ] Todos los textos personalizados
- [ ] Probado localmente
- [ ] Probado en móvil

Después de publicar:
- [ ] Confirmé mi email en FormSubmit
- [ ] Probé el formulario completo
- [ ] Puse el QR o enlace en la tienda
- [ ] Compartí en redes sociales

---

**¡Listo para usar! 🚀**

Cualquier duda, consulta esta guía o pide ayuda a un técnico.

---

*Creado: Febrero 12, 2026*
*Para Cuchillería Gómez - Pamplona*
