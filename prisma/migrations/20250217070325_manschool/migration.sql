/*
  Warnings:

  - You are about to drop the column `passwors` on the `users` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "users" DROP COLUMN "passwors",
ADD COLUMN     "password" TEXT;
