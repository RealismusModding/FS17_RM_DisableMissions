----------------------------------------------------------------------------------------------------
-- MAIN SCRIPT
----------------------------------------------------------------------------------------------------
-- Purpose:  Disable missions on NPC owned fields
-- Authors:  theSeb
--
-- Copyright (c) Realismus Modding, 2017
----------------------------------------------------------------------------------------------------


if g_currentMission.fieldDefinitionBase ~= nil and g_currentMission.fieldDefinitionBase.fieldDefs ~= nil then
    for _,fieldDef in pairs(g_currentMission.fieldDefinitionBase.fieldDefs) do
        fieldDef.fieldJobUsageAllowed = false
    end
end