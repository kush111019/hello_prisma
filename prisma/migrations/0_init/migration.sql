-- CreateTable
CREATE TABLE `employee` (
    `employeeId` INTEGER NOT NULL DEFAULT 0,
    `name` VARCHAR(30) NULL,
    `city` VARCHAR(30) NULL,
    `salary` INTEGER NULL,

    PRIMARY KEY (`employeeId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `employer` (
    `employerId` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(30) NULL,
    `city` VARCHAR(30) NULL,
    `isExists` BOOLEAN NOT NULL,
    `eid` INTEGER NULL,

    UNIQUE INDEX `employerId`(`employerId`),
    INDEX `eid`(`eid`),
    PRIMARY KEY (`employerId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `employer` ADD CONSTRAINT `employer_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee`(`employeeId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

