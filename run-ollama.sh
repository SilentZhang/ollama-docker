#!/usr/bin/env bash

ollama serve &
ollama list
ollama pull llamafamily/llama3-chinese-8b-instruct