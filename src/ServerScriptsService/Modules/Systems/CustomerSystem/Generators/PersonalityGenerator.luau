local ServerScriptService = game:GetService("ServerScriptService")
local CustomerPersonalityRanges = require(ServerScriptService.Modules.Systems.CustomerSystem.Data.CustomerPersonalityRanges)
local Clamp = require(ServerScriptService.Modules.Systems.CustomerSystem.Utils.Clamp)
local RandomVariation = require(ServerScriptService.Modules.Systems.CustomerSystem.Utils.RandomVariation)
local Generator = {}

function Generator.RandomPersonality(archetype)
    local PriceSensitivityRange = CustomerPersonalityRanges.PriceSensitivity
    local QualityPreferenceRange = CustomerPersonalityRanges.QualityPreference
    local PatienceRange = CustomerPersonalityRanges.Patience

    local PriceSensitivity = archetype.PriceSensitivity.Base + RandomVariation(archetype.PriceSensitivity.Variation)
    local QualityPreference = archetype.QualityPreference.Base + RandomVariation(archetype.QualityPreference.Variation)
    local Patience = archetype.Patience.Base + RandomVariation(archetype.Patience.Variation)

    return {
        PriceSensitivity = Clamp(PriceSensitivity, PriceSensitivityRange),
        QualityPreference = Clamp(QualityPreference, QualityPreferenceRange),
        Patience = Clamp(Patience, PatienceRange),
    }
end

return Generator