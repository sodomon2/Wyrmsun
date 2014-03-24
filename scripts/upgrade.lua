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
--      upgrade.lua - Define the dependencies and upgrades.
--
--      (c) Copyright 2001-2004 by Lutz Sammer and Jimmy Salmon
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

-- Load the different races
Load("scripts/dwarf/upgrade.lua")
Load("scripts/gnome/upgrade.lua")
Load("scripts/goblin/upgrade.lua")

function DefineAllowNormalUnits(flags)
	local units = {
		"unit-dwarven-town-hall", "unit-dwarven-mushroom-farm", "unit-dwarven-barracks", "unit-dwarven-lumber-mill",
		"unit-dwarven-sentry-tower", "unit-dwarven-guard-tower",
		"unit-dwarven-miner", "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-scout",
		"unit-dwarven-ballista",
		"upgrade-dwarven-throwing-axe-1", "upgrade-dwarven-throwing-axe-2",
		"unit-hero-rugnur", "unit-hero-rugnur-older", "unit-hero-baglur",
		"unit-gnomish-town-hall", "unit-gnomish-farm", "unit-gnomish-barracks",
		"unit-gnomish-worker", "unit-gnomish-recruit"
	}
	-- Allow units for human players only if they have been acquired
	if ((flags == "AAAAAAAAAAAAAAAA" or flags == "RRRRRRRRRRRRRRRR") and (not IsNetworkGame())) then
		for i, unitName in ipairs(units) do
			local PlayerUnitFlag = {}
			local PlayerHeroUnitMax = {}
			for i=0,15 do
				if ((GetPlayerData(i, "AiEnabled") == false and GetArrayIncludes(wyr.preferences.TechnologyAcquired, unitName) == false) or GetArrayIncludes(GetFactionForbiddenUnits(GetPlayerData(i, "Name")), unitName)) then
					PlayerUnitFlag[i] = "F"
				elseif (flags == "RRRRRRRRRRRRRRRR" and string.find(unitName, "upgrade-") ~= nil) then
					PlayerUnitFlag[i] = "R"
				else
					PlayerUnitFlag[i] = "A"
				end
				if (string.find(unitName, "unit-hero-") ~= nil) then
					if ((GetPlayerData(i, "AiEnabled") == false and GetArrayIncludes(wyr.preferences.TechnologyAcquired, unitName) == false) or GetArrayIncludes(GetFactionForbiddenUnits(GetPlayerData(i, "Name")), unitName)) then
						PlayerHeroUnitMax[i] = 0
					else
						PlayerHeroUnitMax[i] = 1
					end
				end
			end
			flags = PlayerUnitFlag[0] .. PlayerUnitFlag[1] .. PlayerUnitFlag[2] .. PlayerUnitFlag[3] .. PlayerUnitFlag[4] .. PlayerUnitFlag[5] .. PlayerUnitFlag[6] .. PlayerUnitFlag[7] .. PlayerUnitFlag[8] .. PlayerUnitFlag[9] .. PlayerUnitFlag[10] .. PlayerUnitFlag[11] .. PlayerUnitFlag[12] .. PlayerUnitFlag[13] .. PlayerUnitFlag[14] .. PlayerUnitFlag[15]
			DefineAllow(unitName, flags)
			if (string.find(unitName, "unit-hero-") ~= nil) then
				DefineUnitAllow(unitName, PlayerHeroUnitMax[0], PlayerHeroUnitMax[1], PlayerHeroUnitMax[2], PlayerHeroUnitMax[3], PlayerHeroUnitMax[4], PlayerHeroUnitMax[5], PlayerHeroUnitMax[6], PlayerHeroUnitMax[7], PlayerHeroUnitMax[8], PlayerHeroUnitMax[9], PlayerHeroUnitMax[10], PlayerHeroUnitMax[11], PlayerHeroUnitMax[12], PlayerHeroUnitMax[13], PlayerHeroUnitMax[14], PlayerHeroUnitMax[15])
			end
		end
	else
		for i, unitName in ipairs(units) do
			if (flags == "RRRRRRRRRRRRRRRR" and string.find(unitName, "upgrade-") == nil) then
				DefineAllow(unitName, "AAAAAAAAAAAAAAAA")
			else
				DefineAllow(unitName, flags)
			end
			if (string.find(unitName, "unit-hero-") ~= nil) then
				if (flags == "AAAAAAAAAAAAAAAA" or flags == "RRRRRRRRRRRRRRRR") then
					DefineUnitAllow(unitName, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
				else
					DefineUnitAllow(unitName, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
				end
			end
		end
	end
end

function DefineAllowMercenaryUnits(flags)
	local units = {
		"unit-human-lumber-mill"
	}
	for i, unitName in ipairs(units) do
		DefineAllow(unitName, flags)
	end
end

function DefineAllowExtraUnits(flags)
	local units = {
		"unit-glyph",
		"unit-gnomish-caravan",
		"unit-goblin-spearman",
		"unit-hero-greebo",
		"unit-goblin-banner"
	}
	for i, unitName in ipairs(units) do
		DefineAllow(unitName, flags)
	end
end

function DefineAllowSpecialUnits(flags)
	local units = {
		"unit-critter", "unit-gold-mine",
		"unit-mushroom", "unit-flowers", "unit-large-flower",
		"unit-fern", "unit-twigs", "unit-log",
		"unit-bones", "unit-wyrm-skeleton",
		"unit-small-rocks",
--		"unit-human-dead-body", "unit-dead-sea-body",
		"unit-destroyed-2x2-place",
		"unit-destroyed-3x3-place", "unit-destroyed-4x4-place"
	}
	for i, unitName in ipairs(units) do
		DefineAllow(unitName, flags)
	end
end

InitFuncs:add(function() DefineAllowSpecialUnits("AAAAAAAAAAAAAAAA") end)
