----------------------------------------------------------------------------------------------------
-- MAIN SCRIPT
----------------------------------------------------------------------------------------------------
-- Purpose:  Disable missions on NPC owned fields
-- Authors:  theSeb
--
-- Copyright (c) Realismus Modding, 2017
----------------------------------------------------------------------------------------------------

Mission00.loadMission00Finished = Utils.appendedFunction(Mission00.loadMission00Finished, function ()
    -- Register the non-tabbing to all vehicles
    if g_currentMission.fieldDefinitionBase ~= nil and g_currentMission.fieldDefinitionBase.fieldDefs ~= nil then
        for _,fieldDef in pairs(g_currentMission.fieldDefinitionBase.fieldDefs) do
            fieldDef.fieldJobUsageAllowed = false
        end
    end
end)

