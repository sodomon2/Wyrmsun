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

DefineWorldMapTile({465, 113}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Falmouth", "name-elements", {
--			"compound", "prefix", -- ?
			"compound", "suffix", "english", "noun", "singular", "Mouth"
		}
	}
})

DefineWorldMapTile({468, 112}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Plymouth", "name-elements", {
			"compound", "prefix", "english", "noun", "Ply",
			"compound", "suffix", "english", "noun", "singular", "Mouth"
		}
	}
})

DefineWorldMapTile({470, 111}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Exeter"
	}
})

DefineWorldMapTile({471, 100}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Carlisle"
	}
})

DefineWorldMapTile({473, 110}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Wells", "name-elements", {
			"word", "english", "noun", "plural", "Well"
		}
	}
})

DefineWorldMapTile({474, 97}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Berwick" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	}
})

DefineWorldMapTile({475, 98}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Bamburgh", "name-elements", { -- Shepherd gives it as "Bamborough" instead; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
--			"compound", "prefix", "english", -- ?
			"compound", "suffix", "english", "noun", "Burgh" -- presumably
		}
	}
})

DefineWorldMapTile({475, 99}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Newcastle", "name-elements", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
			"compound", "prefix", "english", "adjective", "New", -- presumably
			"compound", "suffix", "english", "noun", "singular", "Castle" -- presumably
		}
	}
})

DefineWorldMapTile({475, 100}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Durham", "name-elements", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
			"compound", "prefix", "english", "noun", "Dur", -- presumably
			"compound", "suffix", "english", "noun", "Ham" -- presumably
		}
	}
})

DefineWorldMapTile({475, 106}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Tamworth" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	}
})

DefineWorldMapTile({476, 110}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Winchester", "name-elements", {
			"compound", "prefix", "english", "noun", "singular", "Win",
			"compound", "suffix", "english", "noun", "singular", "Chester"
		}
	}
})

DefineWorldMapTile({477, 102}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "York" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	}
})

DefineWorldMapTile({478, 102}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Hull", "name-elements", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
			"word", "english", "noun", "Hull" -- presumably
		}
	}
})

DefineWorldMapTile({478, 104}, { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Lincoln"
	}
})

DefineWorldMapTile({480, 109}, {
	World = "Earth",
	CulturalSettlementNames = {
		"celt", "Londinium",
		"latin", "Londinium"
	},
	FactionCulturalSettlementNames = {
		"teuton", "England", "London"
	}
})

DefineWorldMapTile({480, 111}, { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Newhaven", "name-elements", {
			"compound", "prefix", "english", "adjective", "New",
			"compound", "suffix", "english", "noun", "singular", "Haven"
		}
	}
})

DefineWorldMapTile({483, 110}, { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Dover"
	}
})

DefineWorldMapTile({484, 106}, { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Yarmouth", "name-elements", {
--			"compound", "prefix", -- ?
			"compound", "suffix", "english", "noun", "singular", "Mouth"
		}
	}
})
