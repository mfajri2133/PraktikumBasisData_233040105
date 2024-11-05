-- Tabel Genre
CREATE TABLE Genre (
    GenreID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

-- Tabel Movie
CREATE TABLE Movie (
    MovieID INT IDENTITY(1,1) PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    ReleaseDate DATE
);

-- Tabel MoviesGenres untuk Many-to-Many antara Movie dan Genre
CREATE TABLE MoviesGenres (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    MovieID INT NOT NULL,
    GenreID INT NOT NULL,
    FOREIGN KEY (MovieID) REFERENCES Movie(MovieID) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
    FOREIGN KEY (GenreID) REFERENCES Genre(GenreID) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

-- Tabel Users
CREATE TABLE Users (
    UserID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    isAdmin TINYINT DEFAULT 0
);

-- Tabel Borrowing
CREATE TABLE Borrowing (
    BorrowingID INT IDENTITY(1,1) PRIMARY KEY,
    UserID INT NOT NULL,
    BorrowDate DATE NOT NULL,
    ReturnDate DATE,
    BorrowStatus TINYINT DEFAULT 0,
    FOREIGN KEY (UserID) REFERENCES Users(UserID) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

-- Tabel BorrowingDetail untuk hubungan Many-to-Many antara Borrowing dan Movie
CREATE TABLE BorrowingDetail (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    BorrowingID INT NOT NULL,
    MovieID INT NOT NULL,
    FOREIGN KEY (BorrowingID) REFERENCES Borrowing(BorrowingID) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
    FOREIGN KEY (MovieID) REFERENCES Movie(MovieID) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);
