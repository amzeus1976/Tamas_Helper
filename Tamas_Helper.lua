 -- Define the welcome message
local message = "Tama's Helper\n\nWelcome " .. UnitName("player") .. "\n"
 -- Create a new frame object
local f = CreateFrame("Frame", nil, UIParent, "BackdropTemplate")
f:RegisterEvent("ADDON_LOADED")
f:RegisterEvent("PLAYER_LOGOUT")
if not Tamas_Helper then
    Tamas_Helper = {}
    Tamas_Helper.fx = 0 -- left- to right +
    Tamas_Helper.fy = -10 -- down- to up+
    Tamas_Helper.fw = 250
    Tamas_Helper.fh = 450
end
local frameX = Tamas_Helper.fx
local frameY = Tamas_Helper.fy
local frameW = Tamas_Helper.fw
local frameH = Tamas_Helper.fh
 -- Define a function to generate the profession to-do list string
local function GenerateProfessionString()
    local PTL = "Profession todo list " -- Define the prefix for the string
    return PTL -- Return the string
end
local function GeneratePossString()
    local PTLx = tostring(frameX)
    local PTLy = tostring(frameY)
    local PTL = "x"..PTLx.." & y"..PTLy
    return PTL 
end
 -- Set the position and size of the frame
f:SetPoint("TOPLEFT", frameX, frameY)
f:SetSize(frameW, frameH)
 -- Set the backdrop and border color of the frame
f:SetBackdrop(BACKDROP_TUTORIAL_16_16)
f:SetBackdropBorderColor(0, 0, 0, 0)
 -- Allow the frame to be moved
f:SetMovable(true)
 -- Register events for the frame
f:RegisterEvent("QUEST_LOG_UPDATE")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
 -- Set the script for the frame to update the to-do list string
f:SetScript("OnEvent", GenerateProfessionString)
 -- Add a text label to the frame
f.text = f:CreateFontString(nil, "ARTWORK")
f.text:SetFont("Fonts\\ARIALN.ttf", 13, "OUTLINE")
f.text:SetPoint("TOPLEFT", 3, -5)
f.text:SetTextColor(0, 255, 100)
f.text:SetJustifyH("LEFT")
 -- Set the initial text of the frame to the welcome message
f.text:SetText(message)
 -- Define a slash command to show or hide the frame
SLASH_TAMA1 = "/tama"
SlashCmdList["TAMA"] = function(msg, editBox)
    local cmd = strlower(msg)
    if cmd == "show" then
        f:Show()
    elseif cmd == "hide" then
        f:Hide()
    else
        print("Valid options are:\n/tama show\n/tama hide")
    end
end
 -- Update the text to include the to-do list strings
message = message..GenerateProfessionString().."\n\n"
 -- assign the text to the frame label
f.text:SetText(message)
 -- Set the script for the frame to allow it to be moved by dragging
f:SetScript("OnMouseDown", function(self, button)
    self:StartMoving()
end)
 f:SetScript("OnMouseUp", function(self, button)
    self:StopMovingOrSizing()
end)
 f:SetScript("OnDragStop", function(self)
    frameX= self:GetLeft()
    frameY=  self:GetTop()
    Tamas_Helper.fx = frameX
    Tamas_Helper.fy = frameY
    message = message..GeneratePossString()..".\n"
    f.text:SetText(message)
end)
Tamas_Helper.fx = frameX
Tamas_Helper.fy = frameY
Tamas_Helper.fw = frameW
Tamas_Helper.fh = frameH
Tamas_Helper.mes = message