import { pgTable, uuid, varchar } from 'drizzle-orm/pg-core';

export const abilities = pgTable('abilities', {
  abilityId: uuid('id').defaultRandom().primaryKey(),
  name: varchar('name', { length: 15 }).notNull(),
  abbreviation: varchar('abbreviation', { length: 3 }).notNull(),
});

export type Ability = typeof abilities.$inferSelect;
