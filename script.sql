 CREATE TABLE IF NOT EXISTS "Essencia_Perfume" (
	"id_perfume"	INTEGER,
	"id_essencia"	INTEGER,
	PRIMARY KEY("id_perfume","id_essencia"),
	FOREIGN KEY("id_perfume") REFERENCES "Perfumes"("id")
);
CREATE TABLE IF NOT EXISTS "Essencias" (
	"id"	INTEGER,
	"nome"	TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Fixacoes" (
	"id"	INTEGER,
	"nome"	TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Marcas" (
	"id"	INTEGER,
	"nome"	TEXT UNIQUE,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Volumes" (
	"id"	INTEGER,
	"nome"	TEXT UNIQUE,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Perfumes" (
	"id"	INTEGER,
	"nome"	TEXT,
	"quantidade"	INTEGER,
	"id_volume"	INTEGER,
	"id_marca"	INTEGER,
	"id_fixacao"	INTEGER,
	FOREIGN KEY("id_marca") REFERENCES "Marcas"("id"),
	FOREIGN KEY("id_fixacao") REFERENCES "Fixacoes"("id"),
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("id_volume") REFERENCES "Volumes"("id")
);
