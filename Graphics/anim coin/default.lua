return Def.Sprite{
	Texture=THEME:GetPathG("anim", "coin/coin 4x8");
	InitCommand=function(self)
		self:SetAllStateDelays(0.033);
	end,
}