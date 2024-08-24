FROM cgr.dev/chainguard/bash:latest@sha256:27dc752a2ebacd10571c4045d3e1732f4bbb764446373ac85626602b69132776 AS builder

RUN mkdir /app
COPY build/ /app


# FROM cgr.dev/chainguard/static:latest@sha256:791657dd88dea8c1f9d3779815429f9c681a9a2778fc66dac3fbf550e1f1d9c8 
FROM scratch

COPY --from=builder /app /app

CMD ["/app/hello"]