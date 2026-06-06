local ADDON = "HideCastBar"
local PREFIX = "|cff9966ff" .. ADDON .. ":|r "

local function GetBar()
    return PlayerCastingBarFrame or CastingBarFrame
end

local originalOnShow

local function HideBar(bar)
    if originalOnShow == nil then
        originalOnShow = bar:GetScript("OnShow") or false
    end
    bar:Hide()
    bar:SetScript("OnShow", bar.Hide)
end

local function ShowBar(bar)
    if originalOnShow ~= nil then
        bar:SetScript("OnShow", originalOnShow or nil)
    end
end

local function Apply()
    local bar = GetBar()
    if not bar then return end
    if HideCastBarDB.hidden then
        HideBar(bar)
    else
        ShowBar(bar)
    end
end

local loader = CreateFrame("Frame")
loader:RegisterEvent("PLAYER_LOGIN")
loader:SetScript("OnEvent", function()
    if type(HideCastBarDB) ~= "table" then
        HideCastBarDB = { hidden = true }
    end
    Apply()
end)

SLASH_HIDECASTBAR1 = "/hcb"
SLASH_HIDECASTBAR2 = "/hidecastbar"
SlashCmdList.HIDECASTBAR = function()
    HideCastBarDB.hidden = not HideCastBarDB.hidden
    Apply()
    print(PREFIX .. (HideCastBarDB.hidden and "castbar hidden" or "castbar shown"))
end
