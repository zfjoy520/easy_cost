
local BookScene = class("BookScene", function()
    return display.newScene("BookScene")
end)

function BookScene:ctor()
    pp(display.COLOR_WHITE)
    local layer = CCLayerColor:create(ccc4(53,178,213,255))
    self:addChild(layer, 0)
end

function BookScene:onEnter()
end

function BookScene:onExit()
end

return BookScene
