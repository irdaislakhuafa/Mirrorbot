FROM python:3.11.7-alpine

WORKDIR /usr/src/app
RUN chmod -Rv 777 /usr/src/app
RUN apk update && \
  apk add --no-cache git gcc python3-dev psutils psutils-dev psutils-doc
COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt
RUN pip3 install --no-cache-dir -r requirements-cli.txt


CMD ["bash","start.sh"]
