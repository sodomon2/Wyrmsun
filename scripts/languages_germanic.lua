--       _________ __                 __
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/
--  ______________________                           ______________________
--                        T H E   W A R   B E G I N S
--         Stratagus - A free fantasy real time strategy game engine
--
--      (c) Copyright 2015-2016 by Andrettin
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

DefineLanguage("proto-germanic", {
	Name = "Proto-Germanic",
	Family = "germanic"
})

DefineLanguage("northwest-germanic", {
	Name = "Northwest Germanic",
	Family = "germanic"
})

DefineLanguage("old-norse", {
	Name = "Old Norse",
	Family = "germanic",
	NameTranslations = {
		"Airmanareiks", "Jormunrek", -- "Jǫrmunrekr" is the Old Norse equivalent of the Gothic name "Airmanareiks; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 18
		-- Proto-Germanic Personal Names
		"Branda", "Brand",
		"Erala", "Jarl",
		"Gudavulfa", "Gudolf",
		"Karla", "Karl",
		"Magan", "Magi",
		"Skeldu", "Skjold",
		"Thrahila", "Thrall",
		-- Proto-Germanic Settlement Names
		"Ansugardiz", "Asgard",
		"Segiztuna", "Sigtun",
		-- "Runic" (Northwest Germanic?) Personal Names
		"Hlewagastiz", "Hliugast" -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.9.2b.
	}
})

DefineLanguage("old-danish", {
	Name = "Old Danish",
	Family = "germanic",
	DialectOf = "old-norse"
})

DefineLanguage("danish", {
	Name = "Danish",
	Family = "germanic"
})

DefineLanguage("old-swedish", {
	Name = "Old Swedish",
	Family = "germanic",
	DialectOf = "old-norse"
})

DefineLanguage("swedish", {
	Name = "Swedish",
	Family = "germanic"
})

DefineLanguage("norwegian", {
	Name = "Norwegian",
	Family = "germanic"
})

DefineLanguage("old-icelandic", {
	Name = "Old Icelandic",
	Family = "germanic",
	DialectOf = "old-norse"
})

DefineLanguage("west-germanic", {
	Name = "West Germanic",
	Family = "germanic"
})

DefineLanguage("old-high-german", {
	Name = "Old High German",
	Family = "germanic",
	NameTranslations = {
		-- Proto-Germanic
		"Karla", "Karal"
	}
})

DefineLanguage("middle-high-german", {
	Name = "Middle High German",
	Family = "germanic",
	NameTranslations = {
		"Airmanareiks", "Ermenrich" -- "Ermenrîch" is the Middle High German equivalent of the Gothic name "Airmanareiks"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 18
	}
})

DefineLanguage("high-german", { -- define High German early to prevent some type name generation weirdnesses
	Name = "High German",
	Family = "germanic",
	AdjectiveEndings = {
		"no-article", "nominative", "singular", "masculine", "er",
		"no-article", "nominative", "singular", "feminine", "e",
		"no-article", "nominative", "singular", "neuter", "es",
		"no-article", "nominative", "plural", "no-gender", "e",
		"no-article", "accusative", "singular", "masculine", "en",
		"no-article", "accusative", "singular", "feminine", "e",
		"no-article", "accusative", "singular", "neuter", "es",
		"no-article", "accusative", "plural", "no-gender", "e",
		"no-article", "dative", "singular", "masculine", "em",
		"no-article", "dative", "singular", "feminine", "er",
		"no-article", "dative", "singular", "neuter", "em",
		"no-article", "dative", "plural", "no-gender", "en",
		"no-article", "genitive", "singular", "masculine", "en",
		"no-article", "genitive", "singular", "feminine", "er",
		"no-article", "genitive", "singular", "neuter", "en",
		"no-article", "genitive", "plural", "no-gender", "er",
		"definite", "nominative", "singular", "masculine", "e",
		"definite", "nominative", "singular", "feminine", "e",
		"definite", "nominative", "singular", "neuter", "e",
		"definite", "nominative", "plural", "no-gender", "en",
		"definite", "accusative", "singular", "masculine", "en",
		"definite", "accusative", "singular", "feminine", "e",
		"definite", "accusative", "singular", "neuter", "e",
		"definite", "accusative", "plural", "no-gender", "en",
		"definite", "dative", "no-number", "no-gender", "en",
		"definite", "genitive", "no-number", "no-gender", "en",
		"indefinite", "nominative", "singular", "masculine", "er",
		"indefinite", "nominative", "singular", "feminine", "e",
		"indefinite", "nominative", "singular", "neuter", "es",
		"indefinite", "nominative", "plural", "no-gender", "en",
		"indefinite", "accusative", "singular", "masculine", "en",
		"indefinite", "accusative", "singular", "feminine", "e",
		"indefinite", "accusative", "singular", "neuter", "es",
		"indefinite", "accusative", "plural", "no-gender", "en",
		"indefinite", "dative", "no-number", "no-gender", "en",
		"indefinite", "genitive", "no-number", "no-gender", "en"
	},
	NameTranslations = {
		"Mediolanum", "Mailand",
		"Vindobona", "Vienna",
		"Airmanareiks", "Ermenrich", -- "Ermenrich" is the German form of the Gothic name "Airmanareiks"
		"Theodoric", "Dietrich", -- "Dietrich" is the German form of the Gothic name Theodoric
		-- Old High German
		"Karal", "Karl"
	}
})

DefineLanguage("bavarian", {
	Name = "Bavarian",
	Family = "germanic"
})

DefineLanguage("tyrolean", {
	Name = "Tyrolean",
	Family = "germanic"
})

DefineLanguage("old-saxon", {
	Name = "Old Saxon",
	Family = "germanic"
})

DefineLanguage("middle-low-german", {
	Name = "Middle Low German",
	Family = "germanic"
})

DefineLanguage("old-frankish", {
	Name = "Old Frankish",
	Family = "germanic"
})

DefineLanguage("middle-dutch", {
	Name = "Middle Dutch",
	Family = "germanic"
})

DefineLanguage("dutch", {
	Name = "Dutch",
	Family = "germanic"
})

DefineLanguage("old-flemish", { -- should be a dialect instead?
	Name = "Old Flemish",
	Family = "germanic"
})

DefineLanguage("old-frisian", {
	Name = "Old Frisian",
	Family = "germanic"
})

DefineLanguage("old-english", {
	Name = "Old English",
	Family = "germanic",
	NameTranslations = {
		"Airmanareiks", "Eormenric" -- "Eormenrîc" is the Old English equivalent of the Gothic name "Airmanareiks"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 18
	}
})

DefineLanguage("middle-english", {
	Name = "Middle English",
	Family = "germanic"
})

DefineLanguage("english", {
	Name = "English",
	Family = "germanic",
	NounEndings = {
		"singular", "genitive", "no-word-junction", "'s",
		"singular", "genitive", "compound", "s",
		"plural", "nominative", "s",
		"plural", "accusative", "s",
		"plural", "dative", "s",
		"plural", "genitive", "no-word-junction", "s'",
		"plural", "genitive", "compound", "s"
	},
	NameTranslations = {
		-- Old English Settlement Names
		"Abbandun", "Abingdon", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Abbodesbyrig", "Abbotsbury", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Aegelesburg", "Aylesbury", -- Ægelesburg -> Aylesbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Aegelesford", "Aylesford", -- Ægelesford -> Aylesford; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Aethelingaig", "Athelney", -- Æthelingaig -> Athelney; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Alre", "Aller", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Ambresbyrig", "Amesbury", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Andeferas", "Andover", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Apuldre", "Appledore", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Arwe", "Orwell", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Assandun", "Ashingdon", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Badecanwiellon", "Bakewell", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Baenesingtun", "Bensington", -- Bænesingtun -> Bensington; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bancornaburg", "Bangor", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bardanstapol", "Barnstaple", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Basengum", "Basing", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bathum", "Bath", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Beamfleot", "Benfleet", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Searuburh", "Salisbury", -- Source: Paul Beekman Taylor, "Searoniðas: Old Norse Magic and Old English Verse", 1983, p. 115.
		-- German Personal Names
		"Bernhard", "Bernard",
		"Franz", "Francis",
		"Friedrich", "Frederick",
		"Heinrich", "Henry",
		"Johann", "John",
		"Karl", "Charles",
		"Ludwig", "Lewis",
		"Peter", "Peter",
		"Wilhelm", "William",
		-- German Settlement Names
		"Hannover", "Hanover",
		"Wien", "Vienna",
		"Württemberg", "Wurtemberg",
		-- Portuguese Personal Names
		"Bernardo", "Bernard",
		"Carlos", "Charles",
		"Francisco", "Francis",
		"Frederico", "Frederick",
		"Guilherme", "William",
		"Henrique", "Henry",
		"Joao", "John", -- João -> John
		"Luis", "Lewis", -- Luís -> Lewis
		"Pedro", "Peter",
		-- Portuguese Settlement Names
		"Lisboa", "Lisbon"
	}
})

DefineLanguage("gothic", {
	Name = "Gothic",
	Family = "germanic"
})

DefineLanguage("crimean-gothic", {
	Name = "Crimean Gothic",
	Family = "germanic"
})

DefineLanguage("burgundian", {
	Name = "Burgundian",
	Family = "germanic"
})

