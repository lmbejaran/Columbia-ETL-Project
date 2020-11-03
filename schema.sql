-- drop table if exists
DROP TABLE IF EXISTS happiness CASCADE;
DROP TABLE IF EXISTS suicide CASCADE;
DROP TABLE IF EXISTS countries CASCADE;
CREATE TABLE countries (
	id SERIAL NOT NULL,
	country VARCHAR NOT NULL,
	PRIMARY KEY (id)
);
CREATE TABLE happiness (
	id SERIAL NOT NULL,
	country_id INT NOT NULL,
	year DATE,
	rank VARCHAR,
	happiness_score INT,
	economy INT,
	family INT,
	health INT,
	freedom INT,
	govt_trust INT,
	generosity INT,
	dystopia INT,
	FOREIGN KEY (country_id) REFERENCES countries(id),
	PRIMARY KEY (id)
);
CREATE TABLE suicide (
	id SERIAL NOT NULL,
	country_id INT NOT NULL,
	year DATE,
	sex VARCHAR,
	age VARCHAR,
	suicides INT,
	population INT,
	suicide_rate INT,
	FOREIGN KEY (country_id) REFERENCES countries(id),
	PRIMARY KEY (id)
);