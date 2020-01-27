_menuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu("Main Menu", "~b~Menu test description")
_menuPool:Add(mainMenu)

god = false
infAmmi = false

--CHAT MENU
function FirstItem(menu)
   local submenu = _menuPool:AddSubMenu(menu, "Chat menu ~b~>>")
   local chat = NativeUI.CreateItem("Main Chat", "Send Chat.")
   chat.Activated = function(sender, item)
        local txt = input("Enter chat", "", 30)
   end
   submenu.AddItem(chat)
end

FirstItem(mainMenu)

_menuPool:RefreshIndex()



Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        _menuPool:ProcessMenus()
        --[[ The "e" button will activate the menu ]]
        if IsControlJustPressed(1, 51) then
            mainMenu:Visible(not mainMenu:Visible())
        end
    end
end)
