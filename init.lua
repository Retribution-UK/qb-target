function Load(name)
	local resourceName = GetCurrentResourceName()
	local chunk = LoadResourceFile(resourceName, ('data/%s.lua'):format(name))
	if chunk then
		local err
		chunk, err = load(chunk, ('@@%s/data/%s.lua'):format(resourceName, name), 't')
		if err then
			error(('\n^1 %s'):format(err), 0)
		end
		return chunk()
	end
end

-------------------------------------------------------------------------------
-- Settings
-------------------------------------------------------------------------------

Config = {}

-- It's possible to interact with entities through walls so this should be low
Config.MaxDistance = 7.0

-- Enable debug options
Config.Debug = false

-- Supported values: true, false
Config.Standalone = false

-- Enable outlines around the entity you're looking at
Config.EnableOutline = false

-- Whether to have the target as a toggle or not
Config.Toggle = false

-- Draw a Sprite on the center of a PolyZone to hint where it's located
Config.DrawSprite = false

-- The default distance to draw the Sprite
Config.DrawDistance = 10.0

-- The color of the sprite in rgb, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.DrawColor = {255, 255, 255, 255}

-- The color of the sprite in rgb when the PolyZone is targeted, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.SuccessDrawColor = {30, 144, 255, 255}

-- The color of the outline in rgb, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.OutlineColor = {255, 255, 255, 255}

-- Enable default options (Toggling vehicle doors)
Config.EnableDefaultOptions = true

-- Disable the target eye whilst being in a vehicle
Config.DisableInVehicle = false

-- Key to open the target eye, here you can find all the names: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
Config.OpenKey = 'LMENU' -- Left Alt

-- Control for key press detection on the context menu, it's the Right Mouse Button by default, controls are found here https://docs.fivem.net/docs/game-references/controls/
Config.MenuControlKey = 238

-------------------------------------------------------------------------------
-- Target Configs
-------------------------------------------------------------------------------

-- These are all empty for you to fill in, refer to the .md files for help in filling these in

Config.CircleZones = {

}

Config.BoxZones = {

	--[[ 	["PoliceDuty"] = {
			name = "PoliceDuty",
			coords = vector3(441.7989, -982.0529, 30.67834),
			length = 0.45,
			width = 0.35,
			heading = 11.0,
			debugPoly = false,
			minZ = 30.77834,
			maxZ = 30.87834,
			options = {
				{
					type = "client",
					event = "Toggle:Duty",
					icon = "fas fa-clipboard",
					label = "Go On/Off duty",
					job = "police",
				},
			},
			distance = 1.5
		},
	
		["PoliceEvidence"] = { 
			name = "PoliceEvidence",
			coords = vector3(474.0, -995.34, 26.27),
			length = 4.6,
			width = 4.0,
			heading = 0,
			debugPoly = false,
			minZ = 24.92,
			maxZ = 27.72,
			options = {
				{
					type = "client",
					event = "evidenceLocker1",
					icon = "fas fa-dumpster",
					label = "Police Evidence 1", 
					job = "police",
				},
				{	
					type = "client",
					event = "evidenceLocker2",
					icon = "fas fa-dumpster",
					label = "Police Evidence 2",
					job = "police",
				 },
				 {	
					type = "client",
					event = "evidenceLocker3",
					icon = "fas fa-dumpster",
					label = "Police Evidence 3",
					job = "police",
				 },
				 {
					type = "client",
					event = "evidenceTrash",
					icon = "far fa-trash-alt",
					label = "Police Trash",
					job = "police",
				 },
			},
			distance = 2.5,
		}, 
	
		["PoliceArmory"] = {
			name = "PoliceArmory",
			coords = vector3(481.52, -994.76, 30.69),
			length = 0.4,
			width = 3.2,
			heading = 0,
			debugPoly = false,
			minZ = 28.49,
			maxZ = 32.49,
			options = {
				{
					type = "client",
					event = "police:armory",
					icon = "fas fa-boxes",
					label = "Open Police Armory",
					job = "police",
				},
			},
			distance = 2.5,
		},
		
		["PoliceStash"] = {
			name = "PoliceStash",
			coords = vector3(446.0, -996.8, 31.94),
			length = 0.9,
			width = 0.5,
			heading = 0,
			debugPoly = false,
			minZ = 28.49,
			maxZ = 32.49,
			options = {
				{
					type = "client",
					event = "police:personalstash",
					icon = "fad fa-boxes-alt",
					label = "Open Your Stash",
					job = "police",
				},
			},
			distance = 2.5,
		},]]
	
		["EMSArmory"] = {
			name = "EMSArmory",
			coords = vector3(306.47, -602.18, 43.88),
			length = 0.25,
			width = 1.75,
			heading = 159.41,
			debugPoly = false,
			minZ = 42.01,
			maxZ = 44.5,
			options = {
				{
					type = "client",
					event = "ems:armoury",
					icon = "fas fa-user-md",
					label = "Equipment Locker",
					job = "ambulance",
				},
			},
			distance = 2.5,
		},
	
	--[[EMSLift"] = {
			name = "EMSLift",
			coords = vector3(330.01, -602.68, 43.28),
			length = 0.2,
			width = 0.15,
			heading = 341,
			debugPoly = false,
			minZ=43.48,
		  maxZ=43.73,
			options = {
				{
					type = "client",
					event = "ambulance:menu",
					icon = "fas fa-user-md",
					label = "Take the Lift",
				},
			},
			distance = 2.5,
		},
		["EMSLift2"] = {
			name = "EMSLift2",
			coords = vector3(332.02, -597.21, 43.28),
			length = 0.2,
			width = 0.2,
			heading = 340,
			debugPoly = false,
			minZ=43.43,
			  maxZ=43.78,
			options = {
				{
					type = "client",
					event = "ambulance:menu",
					icon = "fas fa-user-md",
					label = "Take the Lift",
				},
			},
			distance = 2.5,
		},
		
		["EMSGLift"] = {
			name = "EMSGround",
			coords = vector3(339.77, -586.24, 28.8),
			length = 0.2,
			width = 0.2,
			heading = 70,
			debugPoly = false,
			minZ=29.0,
			  maxZ=29.3,
			options = {
				{
					type = "client",
					event = "ambulance:menu",
					icon = "fas fa-user-md",
					label = "Take the Lift",
				},
			},
			distance = 2.5,
		},
		["EMSGLift2"] = {
			name = "EMSGround2",
			coords = vector3(41.11, -582.52, 28.8),
			length = 0.2,
			width = 0.2,
			heading = 340,
			debugPoly = false,
			minZ=29.0,
			  maxZ=29.3,
			options = {
				{
					type = "client",
					event = "ambulance:menu",
					icon = "fas fa-user-md",
					label = "Take the Lift",
				},
			},
			distance = 2.5,
		},
		["EMSBLift1"] = {
			name = "EMSBase",
			coords = vector3(344.7, -584.71, 28.8),
			length = 0.2,
			width = 0.2,
			heading = 340,
			debugPoly = false,
			minZ=29.0,
			  maxZ=29.3,
			options = {
				{
					type = "client",
					event = "ambulance:menu",
					icon = "fas fa-user-md",
					label = "Take the Lift",
				},
			},
			distance = 2.5,
		},
		["EMSBLift2"] = {
			name = "EMSbase2",
			coords = vector3(346.02, -581.02, 28.8),
			length = 0.2,
			width = 0.2,
			heading = 340,
			debugPoly = false,
			minZ=28.95,
			  maxZ=29.3,
			options = {
				{
					type = "client",
					event = "ambulance:menu",
					icon = "fas fa-user-md",
					label = "Take the Lift",
				},
			},
			distance = 2.5,
		},
		["EMSRoof1"] = {
			name = "EMSRoof1",
			coords = vector3(338.11, -583.63, 74.16),
			length = 0.6,
			width = 2.6,
			heading = 70,
			debugPoly = false,
			minZ=73.46,
			  maxZ=75.25,
			options = {
				{
					type = "client",
					event = "ambulance:menu",
					icon = "fas fa-user-md",
					label = "Take the Lift",
				},
			},
			distance = 2.5,
		}, ]]
	
		["mechaniccraft"] = {
			name = "Mechanic Toolbox",
			coords = vector3(136.7, -3051.41, 7.04),
			length = 1,
			width = 1,
			heading = 0,
			debugPoly = false,
			minZ=3.44,
			maxZ=7.44,
			options = {
				{
					type = "client",
					event = "craft:mechanicparts", 
					icon = "fas fa-wrench",
					label = "Craft",
					job = "mechanic",
				},
			},
			distance = 2.5
		},
	
	}

Config.PolyZones = {

}

Config.TargetBones = {

	["mechanic"] = {
        bones = {
            "door_dside_f",
            "door_dside_r",
            "door_pside_f",
            "door_pside_r"
        },
        options = {
            {
                type = "client",
                event = "craft:vehmenu",
                icon = "fad fa-key",
                label = "Vehicle Menu",
                job = "mechanic",
            },
        },
        distance = 3.0
    },

}

Config.TargetModels = {

	-- QB Rental
	["VehicleRental"] = {
	  models = {
		  `a_m_y_business_03`,
	  },
	  options = {
		  {
			  type = "client",
			  event = "qb-rental:openMenu",
			  icon = "fas fa-car",
			  label = "Rent Vehicle",
			  MenuType = "vehicle"
		  },
	  },
	  distance = 3.0
  },
  ["AircraftRental"] = {
	  models = {
		  `s_m_y_airworker`,
	  },
	  options = {
		  {
			  type = "client",
			  event = "qb-rental:openMenu",
			  icon = "fas fa-plane",
			  label = "Rent Aircraft",
			  MenuType = "aircraft"
		  },
	  },
	  distance = 3.0
  },
  ["Boatrental"] = {
	  models = {
		  `mp_m_boatstaff_01`,
	  },
	  options = {
		  {
			  type = "client",
			  event = "qb-rental:openMenu",
			  icon = "fas fa-ship",
			  label = "Rent Boat",
			  MenuType = "boat"
		  },
	  },
	  distance = 3.0
  },

  
  ["Beds"] = {
	  models = {
		  `v_med_bed1`
	  },
	  options = {
		  {
			  type = "client",
			  event = "lie:bed",
			  icon = "fas fa-bed",
			  label = "LAY IN BED"
		  },
	  },
	  distance = 4.0
  },

  ["fuel"] = {
	  models = {
		  `prop_gas_pump_1d`,
		  `prop_gas_pump_1a`,
		  `prop_gas_pump_1b`,
		  `prop_gas_pump_1c`,
		  `prop_vintage_pump`,
		  `prop_gas_pump_old2`,
		  `prop_gas_pump_old3`
	  },
	  options = {
		  {
		  type = "client",
		  event = "lj-fuel:client:fuelMenu",
		  icon = "fas fa-gas-pump",
		  label = "Refuel Car",
		  },
		  {
		  type = "client",
		  event = "lj-fuel:client:buyJerryCanMenu",
		  icon = "fas fa-burn",
		  label = "Buy Jerry Can",
		  },
		  {
		  type = "client",
		  event = "lj-fuel:client:refuelJerryCanMenu",
		  icon = "fas fa-gas-pump",
		  label = "Refuel Jerry Can",
		  item = "weapon_petrolcan",
		  },
	  },
	  distance = 5.0
  },
  
  ["Clothing"] = {
	  models = {
		  `s_f_y_shop_low`
	  },
	  options = {
		  {
			  type = "client",
			  event = "qb-clothing:client:openclothes",
			  icon = "fas fa-tshirt",
			  label = "Open Clothing Store",
			  
		  },
	  },
	  distance = 3.5
  },
  
  ["HairCut"] = {
	  models = {
		  `s_f_m_fembarber`
	  },
	  options = {
		  {
			  type = "client",
			  event = "qb-clothing:client:openhair",
			  icon = "fas fa-cut",
			  label = "Take a hair cut!",
			  
		  },
	  },
	  distance = 3.5
  },

  
  --24/7 Shop & Hardware
  
  ["Shops"] = {
	  models = {
		  `mp_m_shopkeep_01`
	  },
	  options = {
		  {
			  type = "client",
			  event = "qb-shops:247clerk",
			  icon = "fas fa-shopping-cart",
			  label = "Store",
			  
		  },
	  },
	  distance = 3.5,
  },
  
  ["HardwareShop"] = {
	  models = {
		  `mp_m_waremech_01`
	  },
	  options = {
		  {
			  type = "client",
			  event = "qb-shops:247clerk",
			  icon = "fas fa-shopping-cart",
			  label = "Hardware Store",
			  
		  },
	  },
	  distance = 3.5,
  },
  
  ["WeaponShop"] = {
	  models = {
		  `csb_cletus`
	  },
	  options = {
		  {
			  type = "client",
			  event = "qb-shops:247clerk",
			  icon = "fas fa-shopping-cart",
			  label = "Weapon Shop",
			  
		  },
	  },
	  distance = 3.5,
  },

  ["WeedShop"] = {
	  models = {
		  `cs_old_man1a`
	  },
	  options = {
		  {
			  type = "client",
			  event = "qb-shops:247clerk",
			  icon = "fas fa-shopping-cart",
			  label = "Want some Weed?",
			  
		  },
	  },
	  distance = 2.5,
  },


  ["Coralshop"] = {
	  models = {
		  `hc_gunman`
	  },
	  options = {
		  {
			  type = "client",
			  event = "qb-shops:247clerk",
			  icon = "fas fa-shopping-cart",
			  label = "Sea World",
			  
		  },
	  },
	  distance = 3.5,
  },  
  
  ["PDFingerPrint"] = {
	  models = {
		  `mp_m_fibsec_01`
	  },
	  options = {
		  {
			  type = "client",
			  event = "police:server:showFingerprintId",
			  icon = "fas fa-fingerprint",
			  label = "Scan Finger",
			  job = "police",
			  
		  },
	  },
	  distance = 3.5,
  },
  
  ---- Hospital ------
  ["HospitalCheckIN"] = {
	  models = {
		  `cs_magenta` 
	  },
	  options = {
		  {
			  type = "client",
			  event = "HospitalCheckIn",
			  parameters = {},
			  icon = "fas fa-procedures",
			  label = "Check In",
		  },
	  },
	  distance = 2.5
  },
  ["HospitalOnDuty"] = {
	  models = {
		  `cs_magenta` 
	  },
	  options = {
		  {
			  type = "client",
			  event = "toggleEMSduty",
			  parameters = {},
			  icon = "fas fa-procedures",
			  label = "Go on/off Duty",
			  job = "ambulance"
		  },
	  },
	  distance = 3.5
  },--[[ 
  
  ["EMSGarage"] = {
	  models = {
		  `csb_prolsec` 
	  },
	  options = {
		  {
			  type = "client",
			  event = "garage:ambulance",
			  parameters = {},
			  icon = "fas fa-shopping-cart",
			  label = "Ambulance Garage",
			  job = "ambulance"
		  },
	  },
	  distance = 3.5
  },

  ["EMSStash"] = {
	  models = {
		  `s_f_y_scrubs_01` 
	  },
	  options = {
		  {
			  type = "client",
			  event = "ems:personalstash",
			  parameters = {},
			  icon = "fas fa-shopping-cart",
			  label = "EMS Personal Stash",
			  job = "ambulance"
		  },
	  },
	  distance = 3.5
  }, 
  
  ["burgershotgarage"] = {
	  models = {
		  `ig_floyd`
	  },
	  options = {
		  {
			  type = "client",
			  event = "garage:BurgerShotGarage",
			  icon = "fas fa-car",
			  label = "BurgerShot Garage",
			  job = "burgershot",
		  }
	  },
	  distance = 2.5,
  },]]
--- Hunting

  ["hunting"] = {
	  models = {
		  `ig_hunter`
	  },
	  options = {
		  {
			  event = "qb-shops:247clerk",
			  icon = "fas fa-shopping-cart",
			  label = "Open Shop",
		  },
		  {
			  event = "Dox-hunting:payammo",
			  icon = "fas fa-circle",
			  label = "Purchase Bullets $500",
		  },
	  },
	  distance = 2.5,
  },

  ["cityhall"] = {
	  models = {
		  `a_f_y_business_01`
	  },
	  options = {
		  {
			  type = "client",
			  event = "cityhall",
			  icon = "fas fa-address-book",
			  label = "City Hall",
		  },
	  },
	  distance = 2.5
  },

  ["impound"] = {
	  models = {
		  `cs_joeminuteman`
	  },
	  options = {
		  {
			  type = "client",
			  event = "Impound",
			  icon = "fas fa-address-book",
			  label = "Impound",
		  },
	  },
	  distance = 2.5
  },

}

Config.GlobalPedOptions = {

}

Config.GlobalVehicleOptions = {

}

Config.GlobalObjectOptions = {

}

Config.GlobalPlayerOptions = {

}

Config.Peds = {

}

-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------
local function JobCheck() return true end
local function GangCheck() return true end
local function ItemCheck() return true end
local function CitizenCheck() return true end

CreateThread(function()
	local state = GetResourceState('qb-core')
	if state ~= 'missing' then
		if state ~= 'started' then
			local timeout = 0
			repeat
				timeout += 1
				Wait(0)
			until GetResourceState('qb-core') == 'started' or timeout > 100
		end
		Config.Standalone = false
	end
	if Config.Standalone then
		local firstSpawn = false
		local event = AddEventHandler('playerSpawned', function()
			SpawnPeds()
			firstSpawn = true
		end)
		-- Remove event after it has been triggered
		while true do
			if firstSpawn then
				RemoveEventHandler(event)
				break
			end
			Wait(1000)
		end
	else
		local QBCore = exports['qb-core']:GetCoreObject()
		local PlayerData = QBCore.Functions.GetPlayerData()

		ItemCheck = function(items)
			local isTable = type(items) == 'table'
			local isArray = isTable and table.type(items) == 'array' or false
			local finalcount = 0
			local count = 0
			if isTable then for _ in pairs(items) do finalcount += 1 end end
			for _, v in pairs(PlayerData.items) do
				if isTable then
					if isArray then -- Table expected in this format {'itemName1', 'itemName2', 'etc'}
						for _, item in pairs(items) do
							if v and v.name == item then
								count += 1
							end
						end
					else -- Table expected in this format {['itemName'] = amount}
						local itemAmount = items[v.name]
						if itemAmount and v and v.amount >= itemAmount then
							count += 1
						end
					end
					if count == finalcount then -- This is to make sure it checks all items in the table instead of only one of the items
						return true
					end
				else -- When items is a string
					if v and v.name == items then
						return true
					end
				end
			end
			return false
		end

		JobCheck = function(job)
			if type(job) == 'table' then
				job = job[PlayerData.job.name]
				if job and PlayerData.job.grade.level >= job then
					return true
				end
			elseif job == 'all' or job == PlayerData.job.name then
				return true
			end
			return false
		end

		GangCheck = function(gang)
			if type(gang) == 'table' then
				gang = gang[PlayerData.gang.name]
				if gang and PlayerData.gang.grade.level >= gang then
					return true
				end
			elseif gang == 'all' or gang == PlayerData.gang.name then
				return true
			end
			return false
		end

		CitizenCheck = function(citizenid)
			return citizenid == PlayerData.citizenid or citizenid[PlayerData.citizenid]
		end

		RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
			PlayerData = QBCore.Functions.GetPlayerData()
			SpawnPeds()
		end)

		RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
			PlayerData = {}
			DeletePeds()
		end)

		RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
			PlayerData.job = JobInfo
		end)

		RegisterNetEvent('QBCore:Client:OnGangUpdate', function(GangInfo)
			PlayerData.gang = GangInfo
		end)

		RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
			PlayerData = val
		end)
	end
end)

function CheckOptions(data, entity, distance)
	if distance and data.distance and distance > data.distance then return false end
	if data.job and not JobCheck(data.job) then return false end
	if data.gang and not GangCheck(data.gang) then return false end
	if data.item and not ItemCheck(data.item) then return false end
	if data.citizenid and not CitizenCheck(data.citizenid) then return false end
	if data.canInteract and not data.canInteract(entity, distance, data) then return false end
	return true
end