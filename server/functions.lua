-- Nexus Core Framework - Server Functions

function InitializeDatabase()
    MySQL.ready(function ()
        -- Load initial data or setup necessary tables
        print("^2[Nexus Core Framework]^0: Database ready")
    end)
end

function DebugPrint(message)
    if Config.Debug then
        print("^2[DEBUG]^0: " .. message)
    end
end
