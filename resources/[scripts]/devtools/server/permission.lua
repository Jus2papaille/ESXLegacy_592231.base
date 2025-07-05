ESX = exports["es_extended"]:getSharedObject()

ESX.RegisterServerCallback('devtools:checkAdmin', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    if not xPlayer then
        cb(false)
        return
    end

    local group = xPlayer.getGroup()
    if group == "admin" or group == "superadmin" then
        cb(true)
    else
        cb(false)
    end
end)
