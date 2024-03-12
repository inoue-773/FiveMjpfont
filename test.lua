


-- Vector3 coordinates
local coords = vector3(-981.28, -2637.14, 89.52)
-- render distance
local maxDistance = 30.0

-- Drawing function
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerCoords = GetEntityCoords(PlayerPedId())
        local distance = #(coords - playerCoords)

        if distance <= maxDistance then
            DrawText3D(coords, '<FONT FACE = "NotoSansMedium">あいうえおtest')
        end
    end
end)

-- 3D text drawing function
function DrawText3D(coords, text)
    local onScreen, x, y = World3dToScreen2d(coords.x, coords.y, coords.z)
    local factor = #text / 370

    if onScreen then
        SetTextScale(0.35, 0.35)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 215)
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(x, y)
        
        local height = 0.03 + factor
        local width = height / 1.375

        DrawRect(x, y + height * 0.5, width, height, 35, 35, 35, 200)
    end
end