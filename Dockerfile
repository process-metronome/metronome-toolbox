FROM python:3.8.6-alpine AS build
RUN apk add make
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
RUN make html

FROM nginx:alpine
RUN apk --no-cache add ca-certificates
COPY nginx-toolbox.conf /etc/nginx/conf.d/
COPY --from=build  /app/dist/html /usr/share/nginx/html/