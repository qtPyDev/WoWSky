--[[
copyleft 2025 qtPyDev
WoWSky is distrubuted under the terms of the GNU GPL 3.0 license.
it is FREE as in Free Open Source Software (FOSS)

this addon is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE

this file is apart of WoWSky
]]--



local addon_name = "WOWSKY";
local size_x = 200;
local size_y = 40;



function wowsky_window()
    local window_frame = CreateFrame("Frame", "WoWSky", UIParent, "BasicFrameTemplate");
    window_frame:SetSize(size_x, size_y);
    window_frame:SetPoint("CENTER", UIParent, "CENTER");
    window_frame:Hide();
    window_frame:SetMovable(true);
    window_frame:EnableMouse(true);
    window_frame:RegisterForDrag("LeftButton");
    window_frame:SetScript("OnDragStart", window_frame.StartMoving)
    window_frame:SetScript("OnDragStop", window_frame.StopMovingOrSizing)
end


function writeln(text)
    DEFAULT_CHAT_FRAME:AddMessage(text);
end


function cmd_parser(token)
    if (token == "post") or (token == "") then
        writeln("open post dialog");
        wowsky_window();
    elseif (token == "user") then
        writeln("current user: example.bsky.social");
    end
end


function wowsky_load()
    local addon_load_frame = CreateFrame("Frame");
    addon_load_frame:RegisterEvent("ADDON_LOADED");
    
    SlashCmdList[addon_name] = cmd_parser;
    SLASH_WOWSKY1 = "/share";
    SLASH_WOWSKY2 = "/bsky";
end
