local robot = require("robot") 
local computer = require("computer") 
local component = require("component") 

local me = component.upgrade_me
local db = component.database
local inventory = component.inventory_controller

local coolantName = "360k NaK Coolantcell"

function robot_error(msg)
    print("Ошибка: ", msg)
    computer.beep(1000,0.3)
    computer.beep(1000,0.3)
    computer.beep(1000,0.3)
    os.exit()
end

function getCoolant()
    me.requestItems(db.get(1), 1)
end

-- function putCoolant()

-- end
