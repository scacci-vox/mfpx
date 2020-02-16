-- Drop outdated tables
DROP TABLE IF EXISTS blitz;
DROP TABLE IF EXISTS classic;
DROP TABLE IF EXISTS rapid;

-- Create new tables
CREATE TABLE blitz(
  "ID_No" INT,
  "Name" TEXT,
  "Fed" TEXT,
  "Sex" TEXT,
  "ClubNumber" INT,
  "ClubName" TEXT,
  "Birthday" TEXT,
  "Rtg_Nat" INT,
  "Fide_No" INT,
  "Rtg_Int" INT,
  "Title" TEXT,
  "Type" TEXT,
  "Status" TEXT,
  "K" INT
);
CREATE TABLE classic(
  "ID_No" INT,
  "Name" TEXT,
  "Sex" TEXT,
  "Fed" TEXT,
  "ClubNumber" INT,
  "ClubName" TEXT,
  "Birthday" TEXT,
  "Rtg_Nat" INT,
  "Fide_No" INT,
  "Rtg_Int" INT,
  "Title" TEXT,
  "Type" TEXT,
  "Status" TEXT
);
CREATE TABLE rapid(
  "ID_No" INT,
  "Name" TEXT,
  "Fed" TEXT,
  "Sex" TEXT,
  "ClubNumber" INT,
  "ClubName" TEXT,
  "Birthday" TEXT,
  "Rtg_Nat" INT,
  "Fide_No" INT,
  "Rtg_Int" INT,
  "Title" TEXT,
  "Type" TEXT,
  "Status" TEXT,
  "K" INT
);

-- Import tables
.mode csv
.separator ";"
.import lists/blitz.csv blitz
.import lists/classic.csv classic
.import lists/rapid.csv rapid
.mode column
