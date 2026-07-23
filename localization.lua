local mod_path = ModPath

Hooks:Add("LocalizationManagerPostInit", "StableShotLocalization", function(self)
	local language_key = SystemInfo:language():key()
	local locale_file = "en.json"

	if language_key == "korean" or PackageManager:loaded("core/packages/language_korean") then
		locale_file = "ko.json"
	end

	self:load_localization_file(mod_path .. "locale/" .. locale_file)
end)
