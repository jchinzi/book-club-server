DROP TABLE IF EXISTS members;

CREATE TABLE members (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  eligible BOOLEAN
);

INSERT INTO members (first_name, last_name, eligible) VALUES ('Jennifer','Chinzi',FALSE);
INSERT INTO members (first_name, last_name, eligible) VALUES ('Joslin','Harmon',FALSE);
INSERT INTO members (first_name, last_name, eligible) VALUES ('Maggie','Rotter',FALSE);
INSERT INTO members (first_name, last_name, eligible) VALUES ('Amelia','Wade',FALSE);
INSERT INTO members (first_name, last_name, eligible) VALUES ('Satya','Peterson',FALSE);
INSERT INTO members (first_name, last_name, eligible) VALUES ('Victoria','Langley',FALSE);
INSERT INTO members (first_name, last_name, eligible) VALUES ('Kathryn','Wahlberg',TRUE);
INSERT INTO members (first_name, last_name, eligible) VALUES ('Ashley','Rolph',TRUE);