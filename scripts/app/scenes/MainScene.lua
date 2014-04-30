
local MainScene = class("MainScene", function()
    return display.newScene("MainScene")
end)

function MainScene:ctor()
    self.bg = display.newSprite("LaunchImage.png", display.cx, display.cy)
    self:addChild(self.bg)
    self:markAutoCleanupImage("LaunchImage.png")
end

function MainScene:onEnter()
    if device.platform == "android" then
        -- avoid unmeant back
        self:performWithDelay(function()
            -- keypad layer, for android
            local layer = display.newLayer()
            layer:addKeypadEventListener(function(event)
                if event == "back" then app.exit() end
            end)
            self:addChild(layer)

            layer:setKeypadEnabled(true)
        end, 0.5)
    end

    self:performWithDelay(function()
        app:enterScene("BookScene", nil, "fade", 0.6, display.COLOR_WHITE)
    end, 0.5)
end

function MainScene:onExit()
end

return MainScene
