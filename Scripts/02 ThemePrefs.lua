local function OptionNameString(str)
	return THEME:GetString('OptionNames',str)
end

local Prefs =
{
	SoloUI =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	TitleMW =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	FGMovies =
	{
		Default = 123456,
		Choices = { 5, 10, 15, 20, "Off" },
		Values = { 5, 10, 15, 20, 123456 }
	},
	DefSort =
	{
		Default = 0,
		Choices = { "Original", "Group", "Title", "BPM", "Popularity", "TopGrades", "Artist", "Genre" },
		Values = { 0, 1, 2, 3, 4, 5, 6, 7 }
	},
}

ThemePrefs.InitAll(Prefs)

function OptionRowDummySound()
	return {
		Name="DummySound",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = true,
		ExportOnChange = false,
		Choices = { 'STEREO', 'MONO', },
		LoadSelections = function(self, list, pn)
			list[1] = true
		end,
		SaveSelections = function(self, list, pn)
		end,
	}
end

function OptionRowDummyAttractSnd()
	return {
		Name="DummyAttractSnd",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = true,
		ExportOnChange = false,
		Choices = { 'ALL THE TIME', 'NEVER', },
		LoadSelections = function(self, list, pn)
			list[1] = true
		end,
		SaveSelections = function(self, list, pn)
		end,
	}
end