Godmodecooldown = false
GodmodeStatus = false 

RegisterCommand('heal', function(source, args, rawCommand)
    if Godmodecooldown == false  AND GodmodeStatus == false then 
        notify("~r~Godmode ~g~Activated")
        SET_PLAYER_INVINCIBLE(GET_PLAYER_IDENTIFIER(-1))
        GodmodeStatus = true 
        Godmodecooldown = true
        Citizen.Wait(1000)
        Godmodecooldown = false
    end

    if GodmodeCooldown == false AND GodmodeStatus == true then
        notify ("~r~Godmode ~r~Deactivated")
        SetEntityHealth(GetPlayerPed(-1), 200)
        GodmodeStatus = false 
        Godmodecooldown = true 
        Citizen.Wait(1000)
        Godmodecooldown = false 
end)

function notify(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true,false)
end