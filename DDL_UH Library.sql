--------------        books
CREATE TABLE `books` (
  `ISBN` char(13) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Author` varchar(255) DEFAULT NULL,
  `Publisher` varchar(255) DEFAULT NULL,
  `DateOfPublication` date DEFAULT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci





----------------        book_copies
CREATE TABLE `book_copies` (
  `BarCode` varchar(20) NOT NULL,
  `ISBN` char(13) NOT NULL,
  `LoanAvailability` char(1) DEFAULT 'Y',
  PRIMARY KEY (`BarCode`),
  KEY `ISBN` (`ISBN`),
  CONSTRAINT `book_copies_ibfk_1` FOREIGN KEY (`ISBN`) REFERENCES `books` (`ISBN`),
  CONSTRAINT `book_copies_chk_1` CHECK ((`LoanAvailability` in (_utf8mb4'Y',_utf8mb4'N')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci





----------   loans
CREATE TABLE `loans` (
  `LoanID` int NOT NULL AUTO_INCREMENT,
  `UserID` char(8) NOT NULL,
  `BarCode` varchar(20) NOT NULL,
  `IssueDate` date NOT NULL,
  `OverdueDate` date NOT NULL,
  PRIMARY KEY (`LoanID`),
  KEY `UserID` (`UserID`),
  KEY `BarCode` (`BarCode`),
  CONSTRAINT `loans_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  CONSTRAINT `loans_ibfk_2` FOREIGN KEY (`BarCode`) REFERENCES `book_copies` (`BarCode`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci





------------------------  reservation
CREATE TABLE `reservation` (
  `ReservationID` int NOT NULL AUTO_INCREMENT,
  `UserID` char(8) NOT NULL,
  `BarCode` varchar(20) NOT NULL,
  `ReservationDate` date NOT NULL,
  PRIMARY KEY (`ReservationID`),
  KEY `UserID` (`UserID`),
  KEY `BarCode` (`BarCode`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`BarCode`) REFERENCES `book_copies` (`BarCode`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci





---------------users
CREATE TABLE `users` (
  `UserID` char(8) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Telephone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci




