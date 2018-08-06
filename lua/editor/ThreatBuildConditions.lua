 #****************************************************************************
#**
#**  File     :  /lua/editor/UnitCountBuildConditions.lua
#**  Author(s): Dru Staltman, John Comes
#**
#**  Summary  : Generic AI Platoon Build Conditions
#**             Build conditions always return true or false
#**
#**  Copyright � 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local AIUtils = import('/lua/ai/aiutilities.lua')
local ScenarioFramework = import('/lua/scenarioframework.lua')
local ScenarioUtils = import('/lua/sim/ScenarioUtilities.lua')
local Utils = import('/lua/utilities.lua')


function EnemyThreatGreaterThanValueAtBase(aiBrain, locationType, threatValue, threatType, rings)
    local testRings = rings or 10
    if aiBrain:GetThreatAtPosition( aiBrain.BuilderManagers[locationType].FactoryManager:GetLocationCoords(), testRings, true, threatType or 'Overall' ) > threatValue then
        return true
    end
    return false
end

function EnemyThreatLessThanValueAtBase(aiBrain, locationType, threatValue, threatType, rings)
    local testRings = rings or 10
    if aiBrain:GetThreatAtPosition( aiBrain.BuilderManagers[locationType].FactoryManager:GetLocationCoords(), testRings, true, threatType or 'Overall' ) > threatValue then
        return true
    end
    return false
end

function HaveLessThreatThanNearby( aiBrain, locationType, poolType, enemyType, rings )
    local pool = aiBrain:GetPlatoonUniquelyNamed('ArmyPool')
    local poolThreat = pool:GetPlatoonThreat( poolType, categories.ALLUNITS )
    local testRings = rings or 10
    local enemyThreat = aiBrain:GetThreatAtPosition( aiBrain.BuilderManagers[locationType].FactoryManager:GetLocationCoords(), testRings, true, enemyType )
    if poolThreat < enemyThreat then
        return true
    end
    return false
end