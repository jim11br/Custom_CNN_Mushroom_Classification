BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "mushroom" (
	"name"	TEXT NOT NULL,
	"type"	INTEGER NOT NULL,
	"description"	TEXT,
	PRIMARY KEY("name")
);
INSERT INTO "mushroom" VALUES ('Aleuria Aurantia',1,'It is generally regarded as edible, though difficult to collect intact and not necessarily choice, with no particularly notable North American lookalikes.');
INSERT INTO "mushroom" VALUES ('Amanita Bisporigera',0,'Amanita bisporigera is a deadly poisonous species of fungus in the family Amanitaceae.');
INSERT INTO "mushroom" VALUES ('Amanita Fulva',1,'Amanita fulva is one of the few good edible species in the genus Amanita. Though this particular species is considered edible, it must be identified with care as other members of the genus Amanita are poisonous and some are deadly.');
INSERT INTO "mushroom" VALUES ('Amanita Muscaria',0,'Amanita muscaria is a highly poisonous mushroom due to the fact that it contains psychoactive alkaloids: muscarine, ibotenic acid and muscimol. The latter two substances are structurally similar to gamma-aminobutyric acid (GABA) and they act as neurotransmitters in the CNS, stimulating glutamate receptors.');
INSERT INTO "mushroom" VALUES ('Boletus Edulis',1,'Boletus edulis, known as the king mushroom, cep or porcini, is a very important edible wild mushroom. It is harvested in Italy, Eastern Europe, China, Southern Africa, and North America. The dry rot fungus, Serpula lacrymans, is a saprotrophic member of the Boletales.');
INSERT INTO "mushroom" VALUES ('Cortinarius Orellanus',0,'Cortinarius orellanus, commonly known as the fool''s webcap or fools webcap, is a species of deadly fungus in the family Cortinariaceae native to Europe. Within the genus it belongs to a group known as the Orellani, all of which are highly toxic—eating them results in kidney failure, which is often irreversible.');
INSERT INTO "mushroom" VALUES ('Gyromitra Esculenta',1,'Gyromitra esculenta is one of the mushrooms known as false morels. It is harvested and eaten by many people in northern Europe and also in the USA, although it is poisonous, even fatal, unless properly dried and boiled.');
INSERT INTO "mushroom" VALUES ('Laetiporus Sulphureus',1,'Laetiporus sulphureus is a saprophyte and occasionally a weak parasite, causing brown cubical rot in the heartwood of trees on which it grows. Unlike many bracket fungi, it is edible when young, although adverse reactions have been reported.');
INSERT INTO "mushroom" VALUES ('Leccinum Scabrum',1,'Leccinum scabrum is generally considered to be a good edible mushroom and can be used in recipes that call for Ceps Boletus edulis (although in both flavour and texture a Cep is superior). Alternatively, use Brown Birch Boletes to make up the required quantity if you do not have sufficient Ceps.');
INSERT INTO "mushroom" VALUES ('Morchella Esculenta',1,'The morels Morchella esculenta and Morchella conica are well known and often collected as delicious, edible mushrooms.');
INSERT INTO "mushroom" VALUES ('Omphalotus Olearius',0,'Unlike chanterelles, Omphalotus olearius and other Omphalotus species contain the toxin illudin S, and are poisonous to humans. While not lethal, consuming this mushroom leads to very severe cramps, vomiting, and diarrhea.');
INSERT INTO "mushroom" VALUES ('Russula Mariae',1,'Russula mariae can be found from summer to early autumn under hardwoods, especially oaks. It is a good edible. It is in the Russulaceae family of the Russulales.');
INSERT INTO "mushroom" VALUES ('Agaricus Bisporus',1,'Agaricus bisporus is one of the most consumed edible mushrooms in the world, and its benefit to human health has been widely reported. The mushroom is a popular part of the human diet');
COMMIT;
