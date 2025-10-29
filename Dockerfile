FROM denoland/deno:2.5.4

WORKDIR /plc

COPY --chown=deno:deno . .

RUN deno install --entrypoint --allow-import ./src/serve.ts
RUN deno install --entrypoint --allow-import ./src/serve-plc.ts
RUN deno install --entrypoint --allow-import ./src/ingest.ts
