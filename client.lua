local dataReturn = nil
local opened = false

RegisterNUICallback("complete", function(data, cb)
    dataReturn = true
    opened = false
    SetNuiFocus(false, false)
    cb('ok')
end)

RegisterNUICallback("close", function(data, cb)
    dataReturn = false
    opened = false
    SetNuiFocus(false, false)
    cb('ok')
end)

function skillbar(time)
    if opened then
        return false
    end

    opened = true
    dataReturn = nil

    SendNUIMessage({
        action = "start",
        time = time
    })

    SetNuiFocus(true, false)

    local timeout = GetGameTimer() + 10000
    while dataReturn == nil do
        Wait(50)
        if GetGameTimer() > timeout then
            dataReturn = false
            break
        end
    end

    opened = false
    SetNuiFocus(false, false)
    return dataReturn
end

exports('skillbar', skillbar)