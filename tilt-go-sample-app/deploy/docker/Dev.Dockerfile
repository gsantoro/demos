FROM cgr.dev/chainguard/bash:latest@sha256:27dc752a2ebacd10571c4045d3e1732f4bbb764446373ac85626602b69132776

RUN mkdir /app

COPY build/ /app

CMD ["/app/hello"]