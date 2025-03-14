--[[
copyleft 2025 qtPyDev
WoWSky is distrubuted under the terms of the GNU GPL 3.0 license.
it is FREE as in Free Open Source Software (FOSS)

this addon is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE

this file is apart of WoWSky
]]--



function cmd_parser(token)
    if (token == "post") or (token == "") then
        print("open post dialog");
    elseif (token == "user") then
        print("current user: example.bsky.social");
    end
end


function wowsky_load()
    SlashCmdList[addonName] = cmd_parser;
    SLASH_wowsky1 = "/share";
    SLASH_wowsky2 = "/bsky";
end
