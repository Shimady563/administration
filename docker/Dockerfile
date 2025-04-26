FROM python:3.10-alpine as builder
WORKDIR /builder
COPY . .
RUN make install


FROM python:3.10-alpine as runtime
WORKDIR /app
COPY --from=builder /app /app
EXPOSE 8000
CMD ["make", "run"]
