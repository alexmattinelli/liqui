FROM debian:stable

RUN apt-get update && apt-get install -y liquidsoap

WORKDIR /app

COPY . .

CMD ["liquidsoap", "radio.liq"]
