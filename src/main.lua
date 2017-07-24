----------------------------------------------------------------------------------------------------
-- MAIN SCRIPT
----------------------------------------------------------------------------------------------------
-- Purpose:  Disable missions on NPC owned fields and make NPCs happy since a player can no longer get discount
-- Authors:  theSeb
--
-- Copyright (c) Realismus Modding, 2017
----------------------------------------------------------------------------------------------------

FieldJobManager.createNewFieldJob = Utils.overwrittenFunction(FieldJobManager.createNewFieldJob, function()
    return nil
end)

Mission00.loadMission00Finished = Utils.appendedFunction(Mission00.loadMission00Finished, function ()
    for _, npc in pairs(NPCUtil.npcs) do
        npc.finishedMissions = FieldJob.THRESHOLD_NPC_IS_HAPPY
    end
end)


