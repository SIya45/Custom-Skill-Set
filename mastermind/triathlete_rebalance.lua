Hooks:PostHook(UpgradesTweakData, "init", "TriathleteRebalance", function(self)
	-- Triathlete: hostage damage absorption
	self.values.team.damage.hostage_absorption = {
		5
	}
	self.values.team.damage.hostage_absorption_limit = 4
end)

Hooks:PostHook(SkillTreeTweakData, "init", "TriathleteSkillRebalance", function(self)
	self.skills.triathlete = {
		icon_xy = {
			4,
			7
		},
		{
			upgrades = {
				"cable_tie_quantity",
				"cable_tie_interact_speed_multiplier"
			},
			cost = self.costs.default
		},
		{
			upgrades = {
				"team_damage_hostage_absorption"
			},
			cost = self.costs.pro
		},
		desc_id = "menu_triathlete_beta_desc",
		name_id = "menu_triathlete_beta"
	}
end)
