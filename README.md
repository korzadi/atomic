# Atomic

Atomic v0.1 is an instruction-tuned language model based on Qwen3.

## Características

- Formato GGUF Q4_K_M.
- Contexto configurado: 24.850 tokens.
- Temperatura: 0.7.
- Compatible con Ollama.
- Instalación automática.

## Requisitos

- Ollama instalado.
- Conexión a Internet.
- Memoria suficiente para ejecutar el modelo.

## Instalación automática

    curl -fsSL https://raw.githubusercontent.com/korzadi/atomic/main/install.sh | bash

## Ejecutar

    ollama run atomic:v0.1

## Instalación manual

Descarga el GGUF desde GitHub Releases y colócalo junto al Modelfile.

    ollama create atomic:v0.1 -f Modelfile
    ollama run atomic:v0.1

## Descargas

https://github.com/korzadi/atomic/releases

## Licencia

El código de instalación y configuración está bajo Apache License 2.0.

Los pesos del modelo están sujetos a las condiciones de licencia aplicables al modelo base Qwen3.

## Autor

Korzadi

https://github.com/korzadi/atomic
