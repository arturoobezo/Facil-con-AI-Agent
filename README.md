# 🤖 Fácil con AI Agent

<p align="center">
  <img src="logo.png" alt="Fácil con AI Agent Logo" width="120"/>
</p>

<p align="center">
  <strong>Tu estudio de desarrollo local, impulsado por IA — 100% privado, sin suscripciones, sin nube.</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Ollama-compatible-blueviolet?style=flat-square" />
  <img src="https://img.shields.io/badge/Python-Pyodide-blue?style=flat-square" />
  <img src="https://img.shields.io/badge/licencia-MIT-green?style=flat-square" />
  <img src="https://img.shields.io/badge/offline-100%25-success?style=flat-square" />
</p>

---

## ¿Qué es?

**Fácil con AI Agent** es una interfaz de chat local que conecta con tus modelos de IA instalados en [Ollama](https://ollama.com), directamente desde el navegador. Escribe una instrucción, y la IA genera código que se previsualiza al instante en un **Sandbox** interactivo — sin enviar nada a servidores externos.

Diseñado para que cualquier persona pueda crear proyectos web, scripts de Python y mucho más, solo con lenguaje natural.

---

## ✨ Características

- 💬 **Chat con contexto** — historial de conversación completo por sesión
- ⚡ **Sandbox en tiempo real** — previsualiza HTML, CSS y JavaScript al instante
- 🐍 **Ejecución de Python** — corre scripts Python directamente en el navegador con Pyodide
- 🗂️ **Múltiples sesiones** — guarda y retoma conversaciones desde el sidebar
- 📎 **Adjuntos** — sube imágenes o archivos de texto como contexto para la IA
- 🔗 **Lectura de enlaces** — extrae el contenido de URLs para enriquecer el prompt
- 📦 **Exportar proyecto** — descarga el resultado como `.html` o como `.zip` con archivos separados
- 🔍 **Gestor de modelos** — instala, visualiza y elimina modelos de Ollama sin salir del app
- 🔒 **100% local y privado** — ningún dato sale de tu máquina

---

## 🚀 Inicio rápido (Windows)

### 1. Instala Ollama

Descarga e instala Ollama desde [ollama.com](https://ollama.com/download).

### 2. Descarga un modelo

Abre una terminal y ejecuta:

```bash
ollama pull llama3
```

> Puedes explorar más modelos en [ollama.com/search](https://ollama.com/search).

### 3. Lanza la aplicación

Haz doble clic en **`Facil_con_AI_Agent_Run.bat`**

El script automáticamente:
- Verifica que Ollama esté instalado
- Configura los permisos CORS necesarios (`OLLAMA_ORIGINS=*`)
- Inicia el servidor de Ollama
- Abre `index.html` en tu navegador

---

## 🖥️ Uso manual (sin el .bat)

Si prefieres arrancar todo a mano:

```bash
# 1. Configurar CORS para que el navegador pueda conectarse
set OLLAMA_ORIGINS=*      # Windows
export OLLAMA_ORIGINS=*   # macOS / Linux

# 2. Arrancar Ollama
ollama serve

# 3. Abrir index.html en tu navegador
```

---

## 📁 Estructura del proyecto

```
facil-con-ai-agent/
├── index.html                  # Interfaz principal
├── style.css                   # Estilos de la aplicación
├── script.js                   # Lógica del chat, sandbox y gestor
├── logo.png                    # Logo de la app
└── Facil_con_AI_Agent_Run.bat  # Lanzador automático para Windows
```

---

## 🧩 Dependencias externas (cargadas por CDN)

| Librería | Uso |
|---|---|
| [Pyodide v0.25](https://pyodide.org) | Ejecución de Python en el navegador |
| [JSZip 3.10](https://stuk.github.io/jszip/) | Empaquetado de proyectos en `.zip` |
| [Microlink API](https://microlink.io) | Extracción de contenido de URLs |

---

## 🔧 Modelos recomendados

| Modelo | Uso ideal | Comando |
|---|---|---|
| `llama3` | Chat general y código | `ollama pull llama3` |
| `deepseek-coder` | Código y programación | `ollama pull deepseek-coder` |
| `mistral` | Rápido y eficiente | `ollama pull mistral` |
| `phi3` | Ligero, bueno en PCs modestas | `ollama pull phi3` |

---

## ❓ Preguntas frecuentes

**¿Por qué el selector dice "Ollama inactivo"?**
Asegúrate de que Ollama esté corriendo (`ollama serve`) y de haber configurado `OLLAMA_ORIGINS=*`. El `.bat` hace esto automáticamente.

**¿Puedo usarlo en macOS o Linux?**
Sí. Solo abre `index.html` en tu navegador después de correr `ollama serve` con la variable de entorno configurada. El archivo `.bat` es exclusivo de Windows.

**¿Mis conversaciones se guardan en la nube?**
No. Todo se guarda en el `localStorage` de tu navegador, localmente.

**¿Puedo instalar modelos desde la app?**
Sí. Usa el campo "Instalar" en el header, escribe el nombre del modelo (ej: `gemma3`) y haz clic en 🚀 Instalar.

---

## 📄 Licencia

MIT — libre para usar, modificar y distribuir.

---

<p align="center">Hecho con ❤️ para la comunidad hispanohablante de IA local</p>
