#!/bin/bash
# Script para descargar todos los archivos necesarios para Netlify

echo "🍋 Lemon Feedback - Descargador para Netlify"
echo "============================================"
echo ""
echo "Este script descarga todo lo necesario para publicar en Netlify"
echo ""

# Crear carpeta
mkdir -p lemon-feedback
cd lemon-feedback

echo "📥 Descargando archivos..."

# URLs base de GitHub (reemplaza MAGUS77/lemont si es diferente)
REPO="https://raw.githubusercontent.com/MAGUS77/lemont/main"

# Descargar index.html
wget -q "$REPO/index.html" -O index.html
echo "✅ index.html descargado"

# Descargar documentación
wget -q "$REPO/README.md" -O README.md
echo "✅ README.md descargado"

wget -q "$REPO/NETLIFY_SETUP.md" -O NETLIFY_SETUP.md
echo "✅ NETLIFY_SETUP.md descargado"

echo ""
echo "🎉 Archivos listos en carpeta: lemon-feedback/"
echo ""
echo "📋 Próximos pasos:"
echo "1. Personaliza index.html (tu email y URL)"
echo "2. Abre https://netlify.com"
echo "3. Arrastra index.html a Netlify"
echo "4. Tu web estará en línea en segundos"
echo ""
