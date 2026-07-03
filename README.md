# D&D 2024 Backend

A modern backend API service connected to a relational PostgreSQL database modeling the ruleset for the [D&D 2024 Player's Handbook](https://www.dndbeyond.com/sources/dnd/phb-2024?srsltid=AfmBOoqZarA805tnE_0NeLdz3hvfE7TmKstq_6aSDC-KOywBG7D5QDuH)! 🎲

## Tech Stack

- Runtime: [Bun](https://bun.com/)

- API Framework: [Hono](https://hono.dev/)

- ORM: [Drizzle ORM](https://orm.drizzle.team/)

- Database: PostgreSQL (Production via [Neon](https://neon.com/), Local dev via Docker coming up)

## Local Development Setup

To install dependencies:

```bash
bun install
```

To run:

```bash
bun run index.ts
```

This project was created using `bun init` in bun v1.3.14. [Bun](https://bun.com) is a fast all-in-one JavaScript runtime.
