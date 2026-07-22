local mod_path = ModPath
Hooks:Add("LocalizationManagerPostInit", "StableShotLocalization", function(self)
	self:load_localization_file(mod_path .. "locale/en.json")
	self:load_localization_file(mod_path .. "locale/ko.json")
end)
