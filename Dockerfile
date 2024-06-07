FROM ollama/ollama:latest

#RUN nohup ollama serve &
#RUN ollama pull llamafamily/llama3-chinese-8b-instruct

COPY ./run-ollama.sh /tmp/run-ollama.sh

WORKDIR /tmp

RUN chmod +x run-ollama.sh \
    && ./run-ollama.sh

#CMD ["/bin/ollama", "serve"]

EXPOSE 11434