Hooks:PostHook(UpgradesTweakData, "init", "StableShotAccuracyUpgrade", function(self)
	self.values.player.weapon_accuracy_increase = {
		8,
		16
	}

	self.definitions.player_weapon_accuracy_increase_2 = {
		category = "feature",
		name_id = "menu_player_weapon_accuracy_increase",
		upgrade = {
			category = "player",
			upgrade = "weapon_accuracy_increase",
			value = 2
		}
	}
end)

Hooks:PostHook(SkillTreeTweakData, "init", "StableShotRebalance", function(self)
	self.skills.stable_shot = {
		icon_xy = {
			0,
			5
		},
		{
			upgrades = {
				-- 베이직 효과: 명중률 증가
				"player_weapon_accuracy_increase_1"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				-- 에이스 효과: 상시 명중률 증가 (16)
				"player_weapon_accuracy_increase_2"
			},
			cost = self.costs.hightierpro
		},
		desc_id = "menu_stable_shot_beta_desc",
		name_id = "menu_stable_shot_beta"
	}
end)
