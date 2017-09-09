local super = Class("GameEvent", LuaObject).getSuperclass()
GameEvents.players = ArrayList();

function GameEvent:init()
    super.init(self)
    
    print("GameEvents iniciado!")
    
    self.eventHandler = function(player, commandName, eventType, map)
        if (eventType == 1) then
            GunGame(map)
        end
    end
    addCommandHandler("event", self.eventHandler)
    
    return self
end

function GameEvent.onPlayerEnter(event, player)
      GameEvent.players:add(player)
end

-- classe gungame teste --

local super = Class("GunGame", GameEvent, function()
    
end).getSuperclass()

