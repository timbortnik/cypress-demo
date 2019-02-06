FROM cypress/base:8

WORKDIR /app
COPY . .

RUN npm ci

CMD ["/bin/sh", "./cyrun.sh"]