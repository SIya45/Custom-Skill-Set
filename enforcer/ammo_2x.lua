Hooks:PostHook(SkillTreeTweakData, "init", "Ammo2xSwap", function(self)
	self.skills.ammo_2x = {
		icon_xy = {
			7,
			1
		},
		{
			upgrades = {
				-- 베이직 효과: 기존 에이스 효과였던 ammo_bag_ammo_increase1
				"ammo_bag_ammo_increase1"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				-- 에이스 효과: 기존 베이직 효과였던 ammo_bag_quantity
				"ammo_bag_quantity"
			},
			cost = self.costs.hightierpro
		},
		desc_id = "menu_ammo_2x_beta_desc",
		name_id = "menu_ammo_2x_beta"
	}
end)
