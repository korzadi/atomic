#!/usr/bin/env bash
set -euo pipefail

MODEL="atomic-v0.1.Q4_K_M.gguf"
URL="https://github.com/korzadi/atomic/releases/download/v0.1/$MODEL"
WORKDIR="$(mktemp -d)"
trap 'rm -rf "$WORKDIR"' EXIT

command -v ollama >/dev/null || {
    echo "Error: Ollama no está instalado."
    exit 1
}

command -v curl >/dev/null || {
    echo "Error: curl no está instalado."
    exit 1
}

echo "Descargando Atomic v0.1..."
curl -fL --progress-bar "$URL" -o "$WORKDIR/$MODEL"

echo "Descargando Modelfile..."
curl -fsSL https://raw.githubusercontent.com/korzadi/atomic/main/Modelfile -o "$WORKDIR/Modelfile"

cd "$WORKDIR"
echo "Instalando Atomic..."
ollama create atomic:v0.1 -f Modelfile

echo "Atomic v0.1 instalado correctamente."
echo "Ejecuta: ollama run atomic:v0.1"
