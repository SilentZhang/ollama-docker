#!/usr/bin/env bash

ollama serve &
ollama list
ollama pull dolphin-llama3
ollama create zc-llama3 -f self-llama3.Modelfile