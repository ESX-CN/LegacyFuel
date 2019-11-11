### 说明
已完全修改为esx版，简繁英自适应适用于魔改版esx，如不懂LUA语言请勿使用，必报错，使用官方esx需要注释`'@es_extended/i18n.lua',`

### About
Started off as my first script, and for whatever reason, I decided to release it. As it was pretty badly created, I felt like I should rewrite it and make a better version, so ended up spending a few hours doing so.

### Installation
1) Download the latest version in the "code" tab on GitHub.
2) Drag & drop the folder into your `resources` server folder.
3) Configure the config file to your liking.
4) Add `start LegacyFuel` to your server config.

### Exports
There are currently two (client-sided) exports available, which should help you control the fuel level for vehicles whenever needed.

```
SetFuel(vehicle --[[ Vehicle ]], value --[[ Number: (0-100) ]])
GetFuel(vehicle --[[ Vehicle ]]) -- Returns the vehicle's fuel level.
```

**Example usage:**
```
function SpawnVehicle(modelHash)
    local vehicle = CreateVehicle(modelHash, coords.x, coords.y, coords.z, true, false)

    exports["LegacyFuel"]:SetFuel(vehicle, 100)
end

function StoreVehicleInGarage(vehicle)
    local plate = GetVehicleNumberPlateText(vehicle)
    local fuelLevel = exports["LegacyFuel"]:GetFuel(vehicle)

    TriggerServerEvent('vehiclesStored', plate, fuelLevel)
end
```
