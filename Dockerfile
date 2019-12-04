FROM golang:1.13 as build
WORKDIR /go/src/printenv
COPY main.go .
RUN go build -o /bin/printenv

FROM gcr.io/distroless/base
COPY --from=build /bin/printenv /bin/printenv
CMD ["/bin/printenv"]
