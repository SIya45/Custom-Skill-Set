Hooks:PostHook(SkillTreeTweakData, "init", "Medic2xRebalance", function(self)
    self.skills.medic_2x = {
        icon_xy = {
            5,
            8
        },
        {
            upgrades = {
                "doctor_bag_amount_increase1"
            },
            cost = self.costs.hightier
        },
        {
            upgrades = {
                -- 에이스 효과: 의사 가방 수량 증가
                "doctor_bag_quantity"
            },
            cost = self.costs.hightierpro
        },
        desc_id = "menu_medic_2x_beta_desc",
        name_id = "menu_medic_2x_beta"
    }
end)