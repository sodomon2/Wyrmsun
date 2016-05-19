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
--      (c) Copyright 2016 by Andrettin
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

DefineCharacter("Maelgwn", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 76.
	Name = "Maelgwn", -- Maelgwn of Gwynedd
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "celt",
	Faction = "Gwynedd",
	ProvinceOfOrigin = "Gwynedd", -- presumably
	DeathYear = 547
})

DefineCharacter("Dutigern", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 76.
	Name = "Dutigern", -- a British king who fought against king Ida of Bernicia
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "celt",
--	ProvinceOfOrigin = ?,
	DateReferenceCharacter = "Maelgwn" -- was a contemporary of Maelgwn
})

DefineCharacter("Cynan", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 78.
	Name = "Cynan",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "celt",
	Faction = "Powys", -- presumably
	ProvinceOfOrigin = "Wales"
})

DefineCharacter("Solomon", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 78.
	Name = "Solomon",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "celt",
	Faction = "Powys",
	ProvinceOfOrigin = "Wales",
	Father = "Cynan",
	Year = 613, -- at some point between 613 and 616, he was defeated by the Bernicians at Chester
	HistoricalTitles = {
		"head-of-state", 613, 0, "celt", "Powys" -- king of Powys; at some point between 613 and 616, he was defeated by the Bernicians at Chester
	}
})

DefineCharacter("Cadwallon", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 80-81.
	Name = "Cadwallon",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "celt",
	Faction = "Gwynedd",
	ProvinceOfOrigin = "Gwynedd",
	Year = 632,
	DeathYear = 633, -- killed by Oswald of Bernicia in 633
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 632, 0, "celt", "Gwynedd" -- king of Gwynedd; in 632 AD attacked Northumbria, and fought Edwin in Hatfield Chase, ending with the latter's death and that of Edwin's son Osfrith
	}
})

DefineCharacter("Cadafael", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 83-84.
	Name = "Cadafael", -- Cadafael of Gwynedd
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "celt",
	Faction = "Gwynedd",
	ProvinceOfOrigin = "Gwynedd",
	Year = 654 -- went with Penda to attack Oswiu of Bernicia
})

