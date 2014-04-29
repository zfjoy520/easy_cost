
require("config")
require("framework.init")
require("framework.shortcodes")
require("framework.cc.init")

local EasyCost = class("EasyCost", cc.mvc.AppBase)

function EasyCost:ctor()
    EasyCost.super.ctor(self)
end

function EasyCost:run()
    CCFileUtils:sharedFileUtils():addSearchPath("res/")
    CCFileUtils:sharedFileUtils():addSearchPath("res/images/")
    CCFileUtils:sharedFileUtils():addSearchPath("res/icons/")
    self:enterScene("MainScene")
end

return EasyCost
