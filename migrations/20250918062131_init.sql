-- Create "groups" table
CREATE TABLE "public"."groups" (
  "id" bigserial NOT NULL,
  "name" character varying(20) NOT NULL,
  PRIMARY KEY ("id")
);
-- Create "users" table
CREATE TABLE "public"."users" (
  "id" bigserial NOT NULL,
  "name" character varying(20) NOT NULL,
  PRIMARY KEY ("id")
);
-- Create "group_users" table
CREATE TABLE "public"."group_users" (
  "group_id" bigint NOT NULL,
  "user_id" bigint NOT NULL,
  CONSTRAINT "group_users_group_id_fkey" FOREIGN KEY ("group_id") REFERENCES "public"."groups" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "group_users_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION
);
-- Create "tasks" table
CREATE TABLE "public"."tasks" (
  "id" bigserial NOT NULL,
  "name" character varying(20) NOT NULL,
  "user_id" bigint NOT NULL,
  PRIMARY KEY ("id"),
  CONSTRAINT "tasks_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION
);
