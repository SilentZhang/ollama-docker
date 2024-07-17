FROM ollama/ollama:latest

#RUN nohup ollama serve &
#RUN ollama pull llamafamily/llama3-chinese-8b-instruct

COPY ./run-ollama.sh /tmp/run-ollama.sh
COPY ./self-llama3.Modelfile /tmp/self-llama3.Modelfile

WORKDIR /tmp

RUN chmod +x run-ollama.sh \
    && ./run-ollama.sh

#CMD ["/bin/ollama", "serve"]

EXPOSE 11434