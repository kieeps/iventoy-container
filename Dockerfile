FROM debian

WORKDIR /app
COPY ./iventoy /app
RUN apt update && apt upgrade -y
RUN chmod +x /app/lib/iventoy

CMD ["/bin/bash", "-c", "bash /app/iventoy.sh start && sleep infinity"]