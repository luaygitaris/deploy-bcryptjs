/*
  Warnings:

  - A unique constraint covering the columns `[dataStudentId]` on the table `users` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[dataTeacherId]` on the table `users` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "users" ADD COLUMN     "dataStudentId" TEXT,
ADD COLUMN     "dataTeacherId" TEXT;

-- CreateIndex
CREATE UNIQUE INDEX "users_dataStudentId_key" ON "users"("dataStudentId");

-- CreateIndex
CREATE UNIQUE INDEX "users_dataTeacherId_key" ON "users"("dataTeacherId");

-- AddForeignKey
ALTER TABLE "users" ADD CONSTRAINT "users_dataStudentId_fkey" FOREIGN KEY ("dataStudentId") REFERENCES "Student"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "users" ADD CONSTRAINT "users_dataTeacherId_fkey" FOREIGN KEY ("dataTeacherId") REFERENCES "Teacher"("id") ON DELETE SET NULL ON UPDATE CASCADE;
