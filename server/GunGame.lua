local super = Class("GunGame", GameEvent).getSuperclass()

function GunGame:init(map)
    super.init(self)
    
    if not map then
        return "arg /evenet 1 <map id>"
    end
    
    self.weaponList = {22,23,24,25,26,27,28,29,32,30,31,33,34,35,36,37,38}
    
    return self
end
