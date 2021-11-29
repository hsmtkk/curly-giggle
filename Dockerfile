FROM golang:1.17 AS builder

WORKDIR /opt

COPY . .

RUN go build

FROM public.ecr.aws/lambda/provided:al2 AS runtime

COPY --from=builder /opt/curly-giggle /usr/local/bin/curly-giggle

ENTRYPOINT ["/usr/local/bin/curly-giggle"]

