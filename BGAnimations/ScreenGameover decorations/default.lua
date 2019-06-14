return Def.ActorFrame {
	LoadActor("gameover")..{
		OnCommand=cmd(Center);
	};
	SOUND:PlayAnnouncer("game over")
};