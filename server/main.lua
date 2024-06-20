-- Nexus Core Framework - Server Main
print("^2[Nexus Core Framework]^0: Server started")

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        print("^2[Nexus Core Framework]^0: Resource " .. resourceName .. " started.")
        -- Initialize database tables
        InitializeDatabase()
    end
end)
