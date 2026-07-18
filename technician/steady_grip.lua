Hooks:PostHook(SkillTreeTweakData, "init", "SteadyGripRebalance", function(self)
	self.skills.steady_grip = {
		icon_xy = {
			9,
			11
		},
		{
			upgrades = {
				-- 베이직 효과: 안정성 증가 보너스
				"player_stability_increase_bonus_1"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				-- 에이스 효과: 안정성 증가 보너스
				"player_stability_increase_bonus_2"
			},
			cost = self.costs.hightierpro
		},
		desc_id = "menu_steady_grip_beta_desc",
		name_id = "menu_steady_grip_beta"
	}
end)
