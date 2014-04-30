require("config")
require("framework.init")
require("framework.shortcodes")
require("framework.cc.init")
require("lib.init")

pp = print

local EasyCost = class("EasyCost", cc.mvc.AppBase)

function EasyCost:ctor()
    EasyCost.super.ctor(self)
end

function EasyCost:run()
    CCFileUtils:sharedFileUtils():addSearchPath("res/")

    if display.width >= 640 then
        CCFileUtils:sharedFileUtils():addSearchPath("res/hd/images/")
    else
        CCFileUtils:sharedFileUtils():addSearchPath("res/sd/images/")
    end

    -- self:enterScene("MainScene")
    self:enterScene("MainScene", nil, "fade", 0.6, display.COLOR_WHITE)
end

return EasyCost
