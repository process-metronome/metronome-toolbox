FROM python:3.8.6-alpine AS build
RUN apk add make
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
RUN make html

FROM nginx:alpine
COPY --from=build  /app/_build/html /usr/share/nginx/html/