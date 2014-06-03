DROP TABLE if EXISTS settlers_Battles;
DROP TABLE if EXISTS settlers_Units;
DROP TABLE if EXISTS settlers_Adventures;




CREATE TABLE settlers_Units (
	ID SERIAL,
	UnitName VARCHAR(25) NOT NULL,

	PRIMARY KEY (ID)
);


CREATE TABLE settlers_Adventures (
	ID SERIAL,
	MapName VARCHAR(64) NOT NULL,

	PRIMARY KEY (ID)
);


CREATE TABLE settlers_Battles (
	ADVENTURE_FK BIGINT unsigned NOT NULL,
	BattleNo TINYINT unsigned NOT NULL,
	E1Qty SMALLINT unsigned NULL,
	E1_UNIT_FK BIGINT unsigned NULL,
	E2Qty SMALLINT unsigned NULL,
	E2_UNIT_FK BIGINT unsigned NULL,
	E3Qty SMALLINT unsigned NULL,
	E3_UNIT_FK BIGINT unsigned NULL,
	E4Qty SMALLINT unsigned NULL,
	E4_UNIT_FK BIGINT unsigned NULL,
	E5Qty SMALLINT unsigned NULL,
	E5_UNIT_FK BIGINT unsigned NULL,
	P1Qty SMALLINT unsigned NULL,
	P1_UNIT_FK BIGINT unsigned NULL,
	P2Qty SMALLINT unsigned NULL,
	P2_UNIT_FK BIGINT unsigned NULL,
	P3Qty SMALLINT unsigned NULL,
	P3_UNIT_FK BIGINT unsigned NULL,
	P4Qty SMALLINT unsigned NULL,
	P4_UNIT_FK BIGINT unsigned NULL,
	P5Qty SMALLINT unsigned NULL,
	P5_UNIT_FK BIGINT unsigned NULL,
	L1Min SMALLINT unsigned NULL,
	L1Max SMALLINT unsigned NULL,
	L1_UNIT_FK BIGINT unsigned NULL,
	L2Min SMALLINT unsigned NULL,
	L2Max SMALLINT unsigned NULL,
	L2_UNIT_FK BIGINT unsigned NULL,
	L3Min SMALLINT unsigned NULL,
	L3Max SMALLINT unsigned NULL,
	L3_UNIT_FK BIGINT unsigned NULL,
	L4Min SMALLINT unsigned NULL,
	L4Max SMALLINT unsigned NULL,
	L4_UNIT_FK BIGINT unsigned NULL,
	L5Min SMALLINT unsigned NULL,
	L5Max SMALLINT unsigned NULL,
	L5_UNIT_FK BIGINT unsigned NULL,

	PRIMARY KEY (ADVENTURE_FK, BattleNo),
	FOREIGN KEY (ADVENTURE_FK) REFERENCES settlers_Adventures (ID),
	FOREIGN KEY (E1_UNIT_FK) REFERENCES settlers_Units (ID),
	FOREIGN KEY (E2_UNIT_FK) REFERENCES settlers_Units (ID),
	FOREIGN KEY (E3_UNIT_FK) REFERENCES settlers_Units (ID),
	FOREIGN KEY (E4_UNIT_FK) REFERENCES settlers_Units (ID),
	FOREIGN KEY (E5_UNIT_FK) REFERENCES settlers_Units (ID),
	FOREIGN KEY (P1_UNIT_FK) REFERENCES settlers_Units (ID),
	FOREIGN KEY (P2_UNIT_FK) REFERENCES settlers_Units (ID),
	FOREIGN KEY (P3_UNIT_FK) REFERENCES settlers_Units (ID),
	FOREIGN KEY (P4_UNIT_FK) REFERENCES settlers_Units (ID),
	FOREIGN KEY (P5_UNIT_FK) REFERENCES settlers_Units (ID),
	FOREIGN KEY (L1_UNIT_FK) REFERENCES settlers_Units (ID),
	FOREIGN KEY (L2_UNIT_FK) REFERENCES settlers_Units (ID),
	FOREIGN KEY (L3_UNIT_FK) REFERENCES settlers_Units (ID),
	FOREIGN KEY (L4_UNIT_FK) REFERENCES settlers_Units (ID),
	FOREIGN KEY (L5_UNIT_FK) REFERENCES settlers_Units (ID)
);


INSERT INTO settlers_Units VALUES (1,		'Bowmen');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Caltrop');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Cannoneers');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Cavalry');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Crazy Cook');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Crossbowmen');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Cultists');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Dark Priests');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Deckscrubbers');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Elites');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Fanatics');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Firedancers');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Guard Dogs');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Gunmen');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Knifethrowers');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Longbowmen');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Metal Toothed');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Militia');
INSERT INTO settlers_Units VALUES (DEFAULT, 'none');
INSERT INTO settlers_Units VALUES (DEFAULT, 'One-Eyed Bert');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Petty Officers 2nd class');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Rangers');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Recruits');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Roughnecks');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Saber-rattlers');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Scavengers');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Shadowsneakers');
INSERT INTO settlers_Units VALUES (DEFAULT, 'skip');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Skunk');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Soldiers');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Stone Throwers');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Swamp Witch');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Thugs');
INSERT INTO settlers_Units VALUES (DEFAULT, 'Wolves');
-- INSERT INTO settlers_Units VALUES (, '');

INSERT INTO settlers_Adventures VALUES (1, 'Outlaws');
INSERT INTO settlers_Adventures VALUES (DEFAULT, 'Stealing from the Rich');
INSERT INTO settlers_Adventures VALUES (DEFAULT, 'The Dark Priests');
INSERT INTO settlers_Adventures VALUES (DEFAULT, 'The Lost Skull');
INSERT INTO settlers_Adventures VALUES (DEFAULT, 'Tropical Sun');
-- INSERT INTO settlers_Adventures VALUES ();