-- Outlaws ------------------------------------------------------------------------
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	1,
	100, (SELECT ID FROM settlers_Units WHERE UnitName = 'Scavengers'),
	 50, (SELECT ID FROM settlers_Units WHERE UnitName = 'Stone Throwers'),
	null, null,	null, null,	null, null,
	 48, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	 72, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cavalry'),
	 80, (SELECT ID FROM settlers_Units WHERE UnitName = 'Crossbowmen'),
	null, null,	null, null,
	42, 48, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	2,
	100, (SELECT ID FROM settlers_Units WHERE UnitName = 'Thugs'),
	 60, (SELECT ID FROM settlers_Units WHERE UnitName = 'Rangers'),
	null, null,	null, null,	null, null,
	105, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	 77, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cavalry'),
	 18, (SELECT ID FROM settlers_Units WHERE UnitName = 'Crossbowmen'),
	null, null, null, null,
	80, 100, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	3,
	 50, (SELECT ID FROM settlers_Units WHERE UnitName = 'Scavengers'),
	 50, (SELECT ID FROM settlers_Units WHERE UnitName = 'Stone Throwers'),
	 50, (SELECT ID FROM settlers_Units WHERE UnitName = 'Guard Dogs'),
	null, null,	null, null,
	 75, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	125, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null, null, null,
	60, 75, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	4,
	 60, (SELECT ID FROM settlers_Units WHERE UnitName = 'Thugs'),
	100, (SELECT ID FROM settlers_Units WHERE UnitName = 'Rangers'),
	null, null,	null, null,	null, null,
	 55, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	  5, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	130, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cavalry'),
	 10, (SELECT ID FROM settlers_Units WHERE UnitName = 'Crossbowmen'),
	null, null,
	38, 55, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	5,
	 40, (SELECT ID FROM settlers_Units WHERE UnitName = 'Thugs'),
	 40, (SELECT ID FROM settlers_Units WHERE UnitName = 'Roughnecks'),
	 80, (SELECT ID FROM settlers_Units WHERE UnitName = 'Rangers'),
	null, null,	null, null,
	 20, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	 20, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	110, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cavalry'),
	 50, (SELECT ID FROM settlers_Units WHERE UnitName = 'Crossbowmen'),
	null, null,
	20, 20, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	14, 19, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	6,
	100, (SELECT ID FROM settlers_Units WHERE UnitName = 'Guard Dogs'),
	 80, (SELECT ID FROM settlers_Units WHERE UnitName = 'Stone Throwers'),
	  1, (SELECT ID FROM settlers_Units WHERE UnitName = 'Skunk'),
	null, null,	null, null,
	 90, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	110, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null,	null, null,
	68, 88, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	7,
	 80, (SELECT ID FROM settlers_Units WHERE UnitName = 'Scavengers'),
	null, null, null, null, null, null, null, null,
	 26, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	134, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cavalry'),
	 40, (SELECT ID FROM settlers_Units WHERE UnitName = 'Crossbowmen'),
	null, null, null, null,
	22, 25, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	8,
	 80, (SELECT ID FROM settlers_Units WHERE UnitName = 'Stone Throwers'),
	null, null, null, null, null, null, null, null,
	110, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cavalry'),
	null, null, null, null, null, null, null, null,
	null, null, (SELECT ID FROM settlers_Units WHERE UnitName = 'none'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	9,
	 30, (SELECT ID FROM settlers_Units WHERE UnitName = 'Thugs'),
	 80, (SELECT ID FROM settlers_Units WHERE UnitName = 'Guard Dogs'),
	 50, (SELECT ID FROM settlers_Units WHERE UnitName = 'Rangers'),
	null, null, null, null,
	200, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null, null, null, null, null,
	35, 41, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	10,
	 50, (SELECT ID FROM settlers_Units WHERE UnitName = 'Scavengers'),
	 50, (SELECT ID FROM settlers_Units WHERE UnitName = 'Guard Dogs'),
	 50, (SELECT ID FROM settlers_Units WHERE UnitName = 'Stone Throwers'),
	null, null, null, null,
	 75, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	125, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null, null, null,
	60, 75, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	11,
	 80, (SELECT ID FROM settlers_Units WHERE UnitName = 'Roughnecks'),
	100, (SELECT ID FROM settlers_Units WHERE UnitName = 'Rangers'),
	null, null, null, null, null, null,
	 40, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	125, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cavalry'),
	 35, (SELECT ID FROM settlers_Units WHERE UnitName = 'Crossbowmen'),
	null, null, null, null,
	29, 35, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	12,
	 40, (SELECT ID FROM settlers_Units WHERE UnitName = 'Roughnecks'),
	 80, (SELECT ID FROM settlers_Units WHERE UnitName = 'Guard Dogs'),
	 60, (SELECT ID FROM settlers_Units WHERE UnitName = 'Rangers'),
	null, null, null, null,
	150, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	 50, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null, null, null,
	121, 146, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	13,
	 30, (SELECT ID FROM settlers_Units WHERE UnitName = 'Scavengers'),
	 30, (SELECT ID FROM settlers_Units WHERE UnitName = 'Guard Dogs'),
	100, (SELECT ID FROM settlers_Units WHERE UnitName = 'Stone Throwers'),
	null, null, null, null,
	 20, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	 25, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	155, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cavalry'),
	null, null, null, null,
	11, 20, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	30, 30, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cavalry'),
	null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	14,
	100, (SELECT ID FROM settlers_Units WHERE UnitName = 'Scavengers'),
	 30, (SELECT ID FROM settlers_Units WHERE UnitName = 'Guard Dogs'),
	 30, (SELECT ID FROM settlers_Units WHERE UnitName = 'Stone Throwers'),
	null, null, null, null,
	101, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	 99, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null, null, null,
	79, 99, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	15,
	150, (SELECT ID FROM settlers_Units WHERE UnitName = 'Roughnecks'),
	null, null, null, null, null, null, null, null,
	 55, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	145, (SELECT ID FROM settlers_Units WHERE UnitName = 'Crossbowmen'),
	null, null, null, null, null, null,
	44, 50, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	16,
	 60, (SELECT ID FROM settlers_Units WHERE UnitName = 'Thugs'),
	 60, (SELECT ID FROM settlers_Units WHERE UnitName = 'Guard Dogs'),
	 60, (SELECT ID FROM settlers_Units WHERE UnitName = 'Rangers'),
	null, null, null, null,
	200, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null, null, null, null, null,
	65, 77, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	17,
	  2, (SELECT ID FROM settlers_Units WHERE UnitName = 'Skunk'),
	  1, (SELECT ID FROM settlers_Units WHERE UnitName = 'Metal Toothed'),
	null, null, null, null, null, null,
	  5, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	 50, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	145, (SELECT ID FROM settlers_Units WHERE UnitName = 'Crossbowmen'),
	null, null, null, null,
	0, 5, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	18,
	 60, (SELECT ID FROM settlers_Units WHERE UnitName = 'Thugs'),
	 60, (SELECT ID FROM settlers_Units WHERE UnitName = 'Guard Dogs'),
	 60, (SELECT ID FROM settlers_Units WHERE UnitName = 'Rangers'),
	null, null, null, null,
	200, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null, null, null, null, null,
	65, 77, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	19,
	180, (SELECT ID FROM settlers_Units WHERE UnitName = 'Thugs'),
	  1, (SELECT ID FROM settlers_Units WHERE UnitName = 'One-Eyed Bert'),
	null, null, null, null, null, null,
	 50, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	 70, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	 80, (SELECT ID FROM settlers_Units WHERE UnitName = 'Crossbowmen'),
	null, null, null, null,
	50, 50, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	54, 64, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	20,
	 60, (SELECT ID FROM settlers_Units WHERE UnitName = 'Scavengers'),
	 60, (SELECT ID FROM settlers_Units WHERE UnitName = 'Stone Throwers'),
	null, null, null, null, null, null,
	 24, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	 35, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	141, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cavalry'),
	null, null, null, null,
	null, null, (SELECT ID FROM settlers_Units WHERE UnitName = 'skip'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	21,
	 50, (SELECT ID FROM settlers_Units WHERE UnitName = 'Scavengers'),
	 50, (SELECT ID FROM settlers_Units WHERE UnitName = 'Stone Throwers'),
	null, null, null, null, null, null,
	 16, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	160, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cavalry'),
	 24, (SELECT ID FROM settlers_Units WHERE UnitName = 'Crossbowmen'),
	null, null, null, null,
	null, null, (SELECT ID FROM settlers_Units WHERE UnitName = 'skip'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	22,
	 80, (SELECT ID FROM settlers_Units WHERE UnitName = 'Scavengers'),
	 20, (SELECT ID FROM settlers_Units WHERE UnitName = 'Stone Throwers'),
	null, null, null, null, null, null,
	 30, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	123, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cavalry'),
	 47, (SELECT ID FROM settlers_Units WHERE UnitName = 'Crossbowmen'),
	null, null, null, null,
	null, null, (SELECT ID FROM settlers_Units WHERE UnitName = 'skip'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	23,
	 60, (SELECT ID FROM settlers_Units WHERE UnitName = 'Scavengers'),
	 60, (SELECT ID FROM settlers_Units WHERE UnitName = 'Stone Throwers'),
	null, null, null, null, null, null,
	 24, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	 35, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	141, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cavalry'),
	null, null, null, null,
	null, null, (SELECT ID FROM settlers_Units WHERE UnitName = 'skip'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	24,
	 60, (SELECT ID FROM settlers_Units WHERE UnitName = 'Guard Dogs'),
	 60, (SELECT ID FROM settlers_Units WHERE UnitName = 'Stone Throwers'),
	null, null, null, null, null, null,
	 62, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	138, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null, null, null,
	null, null, (SELECT ID FROM settlers_Units WHERE UnitName = 'skip'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Outlaws'),	25,
	 80, (SELECT ID FROM settlers_Units WHERE UnitName = 'Scavengers'),
	null, null, null, null, null, null, null, null,
	 26, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	134, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cavalry'),
	 40, (SELECT ID FROM settlers_Units WHERE UnitName = 'Crossbowmen'),
	null, null, null, null,
	null, null, (SELECT ID FROM settlers_Units WHERE UnitName = 'skip'),
	null, null, null, null, null, null, null, null, null, null, null, null);



-- The Dark Priests ---------------------------------------------------------------
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'The Dark Priests'), 1,
	 40, (SELECT ID FROM settlers_Units WHERE UnitName = 'Wolves'),
	null, null, null, null, null, null, null, null,
	 50, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null,
	2, 2, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'The Dark Priests'), 2,
	 20, (SELECT ID FROM settlers_Units WHERE UnitName = 'Thugs'),
	 10, (SELECT ID FROM settlers_Units WHERE UnitName = 'Guard Dogs'),
	null, null, null, null,	null, null,
	 20, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	 40, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null, null, null,
	12, 19, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'The Dark Priests'), 3,
	 20, (SELECT ID FROM settlers_Units WHERE UnitName = 'Thugs'),
	 10, (SELECT ID FROM settlers_Units WHERE UnitName = 'Rangers'),
	null, null, null, null,	null, null,
	160, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cavalry'),
	null, null, null, null, null, null, null, null,
	null, null, (SELECT ID FROM settlers_Units WHERE UnitName = 'none'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'The Dark Priests'), 4,
	 20, (SELECT ID FROM settlers_Units WHERE UnitName = 'Thugs'),
	 20, (SELECT ID FROM settlers_Units WHERE UnitName = 'Guard Dogs'),
	 20, (SELECT ID FROM settlers_Units WHERE UnitName = 'Rangers'),
	  1, (SELECT ID FROM settlers_Units WHERE UnitName = 'Skunk'),
	null, null,
	 42, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	158, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null, null, null,
	27, 41, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'The Dark Priests'), 5,
	 30, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cultists'),
	 40, (SELECT ID FROM settlers_Units WHERE UnitName = 'Dark Priests'),
	null, null, null, null, null, null,
	  6, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	194, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cavalry'),
	null, null, null, null, null, null,
	2, 6, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'The Dark Priests'), 6,
	 30, (SELECT ID FROM settlers_Units WHERE UnitName = 'Shadowsneakers'),
	 30, (SELECT ID FROM settlers_Units WHERE UnitName = 'Dark Priests'),
	null, null, null, null, null, null,
	 35, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	 30, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null, null, null,
	31, 33, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'The Dark Priests'), 7,
	 60, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cultists'),
	 20, (SELECT ID FROM settlers_Units WHERE UnitName = 'Dark Priests'),
	null, null, null, null, null, null,
	 18, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	182, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cavalry'),
	null, null, null, null, null, null,
	13, 17, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'The Dark Priests'), 8,
	 30, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cultists'),
	 20, (SELECT ID FROM settlers_Units WHERE UnitName = 'Shadowsneakers'),
	 10, (SELECT ID FROM settlers_Units WHERE UnitName = 'Firedancers'),
	null, null, null, null,
	100, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null,
	24, 27, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'The Dark Priests'), 9,
	 40, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cultists'),
	 20, (SELECT ID FROM settlers_Units WHERE UnitName = 'Shadowsneakers'),
	 30, (SELECT ID FROM settlers_Units WHERE UnitName = 'Dark Priests'),
	  1, (SELECT ID FROM settlers_Units WHERE UnitName = 'Swamp Witch'),
	null, null,
	 50, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	 30, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	 20, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cavalry'),
	100, (SELECT ID FROM settlers_Units WHERE UnitName = 'Crossbowmen'),
	null, null,
	50, 50, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	23, 28, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	6, 17, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cavalry'),
	null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'The Dark Priests'), 10,
	 25, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cultists'),
	 25, (SELECT ID FROM settlers_Units WHERE UnitName = 'Shadowsneakers'),
	 30, (SELECT ID FROM settlers_Units WHERE UnitName = 'Fanatics'),
	 10, (SELECT ID FROM settlers_Units WHERE UnitName = 'Firedancers'),
	null, null,
	 55, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	 70, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null, null, null,
	45, 55, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'The Dark Priests'), 11,
	 30, (SELECT ID FROM settlers_Units WHERE UnitName = 'Shadowsneakers'),
	 50, (SELECT ID FROM settlers_Units WHERE UnitName = 'Fanatics'),
	 10, (SELECT ID FROM settlers_Units WHERE UnitName = 'Firedancers'),
	null, null, null, null,
	 65, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	 40, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null, null, null,
	53, 62, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'The Dark Priests'), 12,
	 40, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cultists'),
	 40, (SELECT ID FROM settlers_Units WHERE UnitName = 'Shadowsneakers'),
	 40, (SELECT ID FROM settlers_Units WHERE UnitName = 'Dark Priests'),
	  1, (SELECT ID FROM settlers_Units WHERE UnitName = 'Dark High Priest'),
	null, null,
	 40, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	 85, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	 40, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cavalry'),
	 75, (SELECT ID FROM settlers_Units WHERE UnitName = 'Crossbowmen'),
	null, null,
	40, 40, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	17, 21, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	40, 40, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cavalry'),
	null, null, null, null, null, null);



-- The Lost Skull -----------------------------------------------------------------
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'The Lost Skull'),	1,
	 80, (SELECT ID FROM settlers_Units WHERE UnitName = 'Deckscrubbers'),
	120, (SELECT ID FROM settlers_Units WHERE UnitName = 'Knifethrowers'),
	null, null, null, null,	null, null,
	 18, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	182, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cavalry'),
	null, null, null, null, null, null,
	12, 16, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'The Lost Skull'),	2,
	 80, (SELECT ID FROM settlers_Units WHERE UnitName = 'Caltrop'),
	120, (SELECT ID FROM settlers_Units WHERE UnitName = 'Deckscrubbers'),
	null, null, null, null,	null, null,
	 60, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	140, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null, null, null,
	40, 60, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'The Lost Skull'),	3,
	 60, (SELECT ID FROM settlers_Units WHERE UnitName = 'Caltrop'),
	140, (SELECT ID FROM settlers_Units WHERE UnitName = 'Saber-rattlers'),
	null, null, null, null,	null, null,
	 80, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	120, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null, null, null,
	58, 79, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'The Lost Skull'),	4,
	 80, (SELECT ID FROM settlers_Units WHERE UnitName = 'Gunmen'),
	 20, (SELECT ID FROM settlers_Units WHERE UnitName = 'Petty Officers 2nd Class'),
	  1, (SELECT ID FROM settlers_Units WHERE UnitName = 'Crazy Cook'),
	null, null,	null, null,
	135, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	 65, (SELECT ID FROM settlers_Units WHERE UnitName = 'Soldiers'),
	null, null, null, null, null, null,
	120, 135, (SELECT ID FROM settlers_Units WHERE UnitName = 'Recruits'),
	null, null, null, null, null, null, null, null, null, null, null, null);



-- Tropical Sun -------------------------------------------------------------------
INSERT INTO settlers_Battles VALUES (
	(SELECT ID FROM settlers_Adventures WHERE MapName = 'Tropical Sun'), 1,
	 30, (SELECT ID FROM settlers_Units WHERE UnitName = 'Scavengers'),
	 30, (SELECT ID FROM settlers_Units WHERE UnitName = 'Rangers'),
	null, null, null, null,	null, null,
	190, (SELECT ID FROM settlers_Units WHERE UnitName = 'Cavalry'),
	null, null, null, null, null, null, null, null,
	null, null, (SELECT ID FROM settlers_Units WHERE UnitName = 'none'),
	null, null, null, null, null, null, null, null, null, null, null, null);
