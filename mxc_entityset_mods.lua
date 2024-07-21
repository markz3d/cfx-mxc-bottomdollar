local interiors = {
    ["bounty1-downtown"] = {
        coords = vec3(470.3234, -918.0665, 26.4111),
        sets = {
            ["style1"] = true,
            ["style2"] = false,
            ["style3"] = false,
            ["more_filecab_boss"] = false,
            ["safe_armory_boss"] = true,
            ["more_folder_office_a"] = true,
            ["more_folder_office_b"] = false,
            ["branding"] = true,
            ["monitor_branding"] = false,
            ["plant_boss"] = true,
            ["trophy_boss"] = true,
            ["trophy2_boss"] = true,
            ["license_boss"] = true,
        }
    },
    ["bounty2-delperro"] = {
        coords = vec3(-1405.8451, -663.9863, 32.50),
        sets = {
            ["style1"] = false,
            ["style2"] = true,
            ["style3"] = false,
            ["more_filecab_boss"] = true,
            ["safe_armory_boss"] = false,
            ["more_folder_office_a"] = false,
            ["more_folder_office_b"] = true,
            ["branding"] = true,
            ["monitor_branding"] = false,
            ["plant_boss"] = true,
            ["trophy_boss"] = true,
            ["trophy2_boss"] = true,
            ["license_boss"] = true,
        }
    },
    ["bounty3-harmony"] = {
        coords = vec3(592.3723, 2763.0103, 42.0677),
        sets = {
            ["style1"] = false,
            ["style2"] = false,
            ["style3"] = true,
            ["more_filecab_boss"] = true,
            ["safe_armory_boss"] = false,
            ["more_folder_office_a"] = false,
            ["more_folder_office_b"] = true,
            ["branding"] = true,
            ["monitor_branding"] = false,
            ["plant_boss"] = true,
            ["trophy_boss"] = true,
            ["trophy2_boss"] = true,
            ["license_boss"] = true,
        }
    },
}


for name, v in pairs(interiors) do
    RequestIpl(name)
    local interior = GetInteriorAtCoords(v.coords)
 print(name, interior)
    if IsValidInterior(interior) then
        print(name, "valid")
        for name2, enable in pairs(v.sets) do
            print(name, name2, enable)
            if enable then
                ActivateInteriorEntitySet(interior, name2)
            else
                DeactivateInteriorEntitySet(interior, name2)
            end
        end

        RefreshInterior(interior)
    end
end
