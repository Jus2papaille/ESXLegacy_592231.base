local ESX = exports["es_extended"]:getSharedObject()

RegisterCommand("position", function()
    ESX.TriggerServerCallback('devtools:checkAdmin', function(isAdmin)
        if not isAdmin then
            ESX.ShowNotification("~r~Vous n'avez pas la permission d'utiliser cette commande.")
            return
        end

        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        local heading = GetEntityHeading(playerPed)

        local msg = ("~g~Position: ~s~x = %.2f, y = %.2f, z = %.2f, heading = %.2f"):format(coords.x, coords.y, coords.z, heading)
        print(msg)
        ESX.ShowNotification(msg)
    end)
end, false)
