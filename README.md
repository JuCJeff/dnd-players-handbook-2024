# D&D 2024 Backend

A modern backend API service connected to a relational PostgreSQL database modeling the ruleset for the [D&D 2024 Player's Handbook](https://www.dndbeyond.com/sources/dnd/phb-2024?srsltid=AfmBOoqZarA805tnE_0NeLdz3hvfE7TmKstq_6aSDC-KOywBG7D5QDuH)! 🎲

## Tech Stack

- Runtime: [Bun](https://bun.com/)

- API Framework: [Hono](https://hono.dev/)

- ORM: [Drizzle ORM](https://orm.drizzle.team/)

- Database: PostgreSQL (Production via [Neon](https://neon.com/))

## Prerequisite installs

### Docker

  Install [Docker Desktop](https://www.docker.com/products/docker-desktop/) (macOS/Windows) or follow the [Docker Engine install guide](https://docs.docker.com/engine/install/) on Linux.

  If you have Homebrew installed locally, you can install through:

  ```bash
  brew install --cask docker
  ```

### Bun (only needed for [Option B](#option-b-native-bun) below)

  Install bun through their installation doc [here](https://bun.com/docs/installation)

## How to run Hono backend

### Option A: Docker (recommended, no Bun install required)

Copy the example env file

```bash
cp .env.example .env
```

Start Postgres + the app (migrations run automatically on startup)

```bash
docker compose up
```

The API is now live at `http://localhost:3000` with hot reload.

### Option B: Native Bun

Install dependencies

```bash
bun install
```

Copy the example env file

```bash
cp .env.example .env
```

Start local Postgres through docker compose

```bash
docker compose up -d db
```

Apply migrations

```bash
bun run db:migrate
```

Run the app

```bash
bun run dev
```

## Working with the database

Change a schema file under `src/db/schema/`, then generate a migration:

```bash
bun run db:generate
```

Apply it locally

```bash
bun run db:migrate
```

Browse/edit data visually

```bash
bun run db:studio
```

## Production (Neon)

Only admins push schema changes to Neon. This requires a `.env.production` file
(ask an admin for the connection string) holding the Neon `DATABASE_URL`. Once
in place:

```bash
bun run db:migrate:prod
```

## Contributors

<a href="https://github.com/JuCJeff/dnd-players-handbook-2024/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=JuCJeff/dnd-players-handbook-2024" />
</a>
