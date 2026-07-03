CREATE TABLE "abilities" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"name" varchar(15) NOT NULL,
	"abbreviation" varchar(3) NOT NULL
);
