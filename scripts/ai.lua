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
--      ai.lua - Define the AI.
--
--      (c) Copyright 2000-2004 by Lutz Sammer and Jimmy Salmon
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

--(define (ai:sleep) () #t)

--=============================================================================
--
--  AI helper table, the AI must know where to build units,
--  where to research spells, where to upgrade units.
--  If this is allowed and which dependencies exists, isn't
--  handled here. (see upgrade.lua)
--
--  NOTE: perhaps this could later be used to build the buttons?
--
--  DefineAiHelper(list)
--

--;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
--  * Civilization Dwarf.
--;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DefineAiHelper(
  --
  -- Equivalence of units for the resource manager.
  --
--  {"unit-equiv", "unit-dwarven-axefighter",
--  "unit-dwarven-steelclad"
--  }
)

--
--  City-center of the current civilization.
--
function AiCityCenter()
	if (AiGetRace() == "dwarf") then
		return "unit-dwarven-town-hall"
	elseif (AiGetRace() == "gnome") then
		return "unit-gnomish-town-hall"
	elseif (AiGetRace() == "goblin") then
		return "unit-goblin-town-hall"
	else
		return "unit-dwarven-town-hall"
	end
end

--
--  Worker of the current civilization.
--
function AiWorker()
	if (AiGetRace() == "dwarf") then
		return "unit-dwarven-miner"
	elseif (AiGetRace() == "gnome") then
		return "unit-gnomish-worker"
	elseif (AiGetRace() == "goblin") then
		return "unit-goblin-worker"
	else
		return "unit-dwarven-miner"
	end
end

--
--  Farm of the current civilization.
--
function AiFarm()
	if (AiGetRace() == "dwarf") then
		return "unit-dwarven-mushroom-farm"
	elseif (AiGetRace() == "gnome") then
		return "unit-gnomish-farm"
	else
		return "unit-dwarven-mushroom-farm"
	end
end

--
--  Barracks of the current civilization.
--
function AiBarracks()
	if (AiGetRace() == "dwarf") then
		return "unit-dwarven-barracks"
	elseif (AiGetRace() == "gnome") then
		return "unit-gnomish-barracks"
	else
		return "unit-dwarven-barracks"
	end
end

--
--  Lumber mill of the current civilization.
--
function AiLumberMill()
	if (AiGetRace() == "dwarf") then
		return "unit-dwarven-lumber-mill"
	else
		return "unit-dwarven-lumber-mill"
	end
end

--
--  Blacksmith of the current civilization.
--
function AiBlacksmith()
	if (AiGetRace() == "dwarf") then
		return "unit-dwarven-blacksmith"
	else
		return "unit-dwarven-blacksmith"
	end
end

--
--  Soldier of the current civilization.
--
function AiSoldier()
	if (AiGetRace() == "dwarf") then
		return "unit-dwarven-axefighter"
	elseif (AiGetRace() == "gnome") then
		return "unit-gnomish-recruit"
	elseif (AiGetRace() == "goblin") then
		return "unit-goblin-spearman"
	else
		return "unit-dwarven-axefighter"
	end
end

--
--  Veteran soldier of the current civilization.
--
function AiVeteranSoldier()
	if (AiGetRace() == "dwarf") then
		return "unit-dwarven-steelclad"
	else
		return "unit-dwarven-steelclad"
	end
end

--
--  Shooter of the current civilization.
--
function AiShooter()
	if (AiGetRace() == "dwarf") then
		return "unit-dwarven-scout"
	elseif (AiGetRace() == "goblin") then
		return "unit-goblin-archer"
	else
		return "unit-dwarven-scout"
	end
end

--
--  Upgrade melee weapon 1 of the current civilization.
--
function AiUpgradeWeapon1()
	if (AiGetRace() == "dwarf") then
		return "upgrade-dwarven-broad-axe"
	else
		return "upgrade-dwarven-broad-axe"
	end
end

--
--  Upgrade melee weapon 2 of the current civilization.
--
function AiUpgradeWeapon2()
	if (AiGetRace() == "dwarf") then
		return "upgrade-dwarven-great-axe"
	else
		return "upgrade-dwarven-great-axe"
	end
end

--
--  Upgrade shield 1 of the current civilization.
--
function AiUpgradeShield1()
	if (AiGetRace() == "dwarf") then
		return "upgrade-dwarven-shield-1"
	else
		return "upgrade-dwarven-shield-1"
	end
end

--
--  Upgrade shield 2 of the current civilization.
--
function AiUpgradeShield2()
	if (AiGetRace() == "dwarf") then
		return "upgrade-dwarven-shield-2"
	else
		return "upgrade-dwarven-shield-2"
	end
end

--
--  Upgrade missile 1 of the current civilization.
--
function AiUpgradeMissile1()
	if (AiGetRace() == "dwarf") then
		return "upgrade-dwarven-throwing-axe-1"
	else
		return "upgrade-dwarven-throwing-axe-1"
	end
end

--
--  Upgrade missile 2 of the current civilization.
--
function AiUpgradeMissile2()
	if (AiGetRace() == "dwarf") then
		return "upgrade-dwarven-throwing-axe-2"
	else
		return "upgrade-dwarven-throwing-axe-2"
	end
end

--
--  Siege weapon of the current civilization.
--
function AiCatapult()
	if (AiGetRace() == "dwarf") then
		return "unit-dwarven-ballista"
	else
		return "unit-dwarven-ballista"
	end
end

--
--  Flying rider of the current race.
--
function AiFlyingRider()
	if (AiGetRace() == "dwarf") then
		return "unit-dwarven-gryphon-rider"
	else
		return "unit-dwarven-gryphon-rider"
	end
end

--
--  Watch Tower of the current civilization.
--
function AiWatchTower()
	if (AiGetRace() == "dwarf") then
		return "unit-dwarven-sentry-tower"
	else
		return "unit-dwarven-sentry-tower"
	end
end

--
--  Guard Tower of the current civilization.
--
function AiGuardTower()
	if (AiGetRace() == "dwarf") then
		return "unit-dwarven-guard-tower"
	else
		return "unit-dwarven-guard-tower"
	end
end

--
--  Some functions used by Ai
--

-- Create some counters used by ai
local function CreateAiGameData()
	if stratagus == nil then
		stratagus = {}
	end
	if stratagus.gameData == nil then
		stratagus.gameData = {}
	end
	if stratagus.gameData.AIState == nil then
		stratagus.gameData.AIState = {}
		stratagus.gameData.AIState.index = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
		stratagus.gameData.AIState.loop_index = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
	end
end

local function CleanAiGameData()
	if stratagus ~= nil and stratagus.gameData ~= nil then
		stratagus.gameData.AIState = nil
	end
end

function ReInitAiGameData()
	CleanAiGameData()
	CreateAiGameData()
end

function DebugMessage(message)
	message = "Game cycle(" .. GameCycle .. "):".. message
--	AddMessage(message)
	DebugPrint(message .. "\n")
end

function AiLoop(loop_funcs, indexes)
	local playerIndex = AiPlayer() + 1

	while (true) do
		local ret = loop_funcs[indexes[playerIndex]]()
		if (ret) then
			break
		end
		indexes[playerIndex] = indexes[playerIndex] + 1
	end
	return true
end

--
--  Load the actual individual scripts.
--
ReInitAiGameData()
Load("scripts/ai/passive.lua")
Load("scripts/ai/land_attack.lua")
Load("scripts/ai/northern_wastelands_goblins.lua")
Load("scripts/ai/grand_strategy_battle.lua")
