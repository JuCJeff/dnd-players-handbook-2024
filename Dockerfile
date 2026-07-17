FROM oven/bun:1-slim AS base

WORKDIR /app

COPY package.json bun.lock ./

# ---- Dev: full dependencies, source is bind-mounted by docker-compose ----
FROM base AS dev

RUN bun install --frozen-lockfile

EXPOSE 3000

CMD ["bun", "--hot", "src/index.ts"]

# ---- Production: standalone image, no bind mounts, no dev dependencies ----
FROM base AS production

RUN bun install --frozen-lockfile --production

COPY src ./src

ENV NODE_ENV="production"

EXPOSE 3000

USER bun

CMD ["bun", "run", "src/index.ts"]
