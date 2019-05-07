	concommand.Remove("DrawDeathMsg")
	concommand.Remove("EasyMOTD_Open")
	concommand.Remove("OpenMotd")
	concommand.Remove("nlr_box")
	concommand.Remove("NLRDeathMessage")
	concommand.Remove("wesnlr")
	concommand.Remove("lunera_motd")
	concommand.Remove("MOTD")
	concommand.Remove("MOTDS")
	concommand.Remove("Suss_MOTD")

	hook.Remove("ShouldDrawLocalPlayer", "ESC.DrawPlayer")
	hook.Remove("HUDShouldDraw", "ESC.HideHUD")
	hook.Remove("RenderScreenspaceEffects", "ESC.ScreenspaceEffects")
	hook.Remove("PreRender", "ESC.OpenMenu")
	hook.Remove("CalcView", "ESC.CalcView")
	hook.Remove("HUDShouldDraw", "IceEscape_HudShouldDraw")
	hook.Remove("Render", "IceEscape_CheckKeyWasIn")
	hook.Remove("PreRender", "IceEscape_PreRenderHookEscKey")
	hook.Remove("PreRender", "esc.PreRender")
	hook.Remove("Think", "JarvinOpenKey")
	hook.Remove("PreRender", "Jarvin:PreRender")
	hook.Remove("PreRender", "Liko:PreRender")
	hook.Remove("PreRender", "cleanEscape")
	hook.Remove("RenderScreenspaceEffects", "ceScreenEffects")

	if file.Exists("autorun/client/cl_3dmenu.lua", "LUA") == true then
	    hook.Remove("PostDrawTranslucentRenderables", MENU)
	    hook.Remove("RenderScene", MENU)
	    hook.Remove("Think", MENU)
	    hook.Remove("GUIMousePressed", MENU)
	    hook.Remove("PreventScreenClicks", MENU)
	    hook.Remove("ShouldDrawLocalPlayer", MENU)
	    hook.Remove("CalcView", MENU)
	    hook.Remove("PreRender", MENU)
	    hook.Remove("HUDShouldDraw", MENU)
	    MENU = nil
	end


	hook.Remove("PreDrawEffects", "Photon.RenderQueue")
	hook.Remove("HUDPaint", "carBomb_ScannerHUD")

	--atmos :
	hook.Remove("Think", "atmosStormThink")
	hook.Remove("HUDPaint", "atmosHUDPaint")
	--simpleweather
	hook.Remove("Initialize", "SW.Initialize")
	hook.Remove("Think", "SW.Think")
	hook.Remove("HUDPaint", "SW.HUDPaint")
	hook.Remove("RenderScreenspaceEffects", "SW.RenderScreenspaceEffects")
	hook.Remove("SetupWorldFog", "SW.SetupWorldFog")
	hook.Remove("SetupSkyboxFog", "SW.SetupSkyboxFog")
	hook.Remove("HUDPaint", "SW.DrawClock")
	--stormfox
	hook.Remove("Think", "StormFox - Outdoor Env")
	hook.Remove("Think", "StormFox - light_env support")
	hook.Remove("HUDPaint", "RainDebug2")
	hook.Remove("HUDPaint", "StormFox - HUDTips")
	hook.Remove("RenderScreenspaceEffects", "StormFox - Toxxeffect")
	hook.Remove("PostDraw2DSkyBox", "StormFox - SkyBoxRender")
	hook.Remove("StormFox - TopSkyRender", "StormFox - MoonRender")
	hook.Remove("RenderScreenspaceEffects", "StormFox - Sunbeams")
	hook.Remove("StormFox - EnvUpdate", "StormFox - RainSounds")
	hook.Remove("StormFox - EnvUpdate", "StormFox - WindSounds")
	hook.Remove("Think", "StormFox - SkyPaintFix")
	hook.Remove("Think", "StormFox - SkyThink")
	hook.Remove("PostDraw2DSkyBox", "StormFox - ShootingStars")
	hook.Remove("Think", "StormFox - ShadowUpdate")
	hook.Remove("RenderScreenspaceEffects", "stormFox - screenmodifier")
	hook.Remove("Think", "StormFox - DownfallUpdater")
	hook.Remove("Think", "StormFox - RenderFalldownThink")
	hook.Remove("Think", "StormFox - RenderFalldownScreenThink")
	hook.Remove("HUDPaint", "StormFox - RenderRainScreen")
	hook.Remove("HUDPaint", "StormFox - RainScreenEffect")
	hook.Remove("Think", "StormFox - RenderFalldownHanlde")
	hook.Remove("PostDrawTranslucentRenderables", "StormFox - RenderFalldown")
	hook.Remove("PostPlayerDraw", "StormFox - Breath")
	hook.Remove("Think", "StormFox - CBreath")
	hook.Remove("SetupSkyboxFog", "StormFox - skyfog")
	hook.Remove("SetupWorldFog", "StormFox - skyworldfog")
	hook.Remove("RenderScene", "StormFox - Suntest")
	hook.Remove("PostDrawOpaqueRenderables", "StormFox - SkyBox Debug")
	hook.Remove("Think", "StormFox - CloudUpdate")
	hook.Remove("PostDrawOpaqueRenderables", "StormFox - CloudRender")
    hook.Remove( "PostDrawOpaqueRenderables", "example" )

	-- Weather 
	if ConVarExists("utime_enable") then
	    RunConsoleCommand("utime_enable", 0)
	end

	RunConsoleCommand("-voicerecord")
	hook.Remove("HUDPaint", "PPT_HUD")
	hook.Remove("InitPostEntity", "spawnIconRefresh")
    hook.Remove( "InitPostEntity", "MOTDgdInitHook" )
    hook.Remove( "InitPostEntity", "startMistforums" )
    hook.Remove( "InitPostEntity", "mistforums-GetClientFiles" )
    hook.Remove( "InitPostEntity", "D3A.OpenMoTD.InitPostEntity" )
	hook.Remove("HUDPaint", "DoHud")
	hook.Remove("Think", "PlayerInfoThing")
	timer.Destroy("AntiCheatTimer")
	timer.Destroy("testing123")
	hook.Remove("Think", "sh_menu")
	timer.Destroy("STC")
	hook.Remove("PlayerInitialSpawn", "AddPlayer")
	hook.Remove("OnGamemodeLoaded", "___scan_g_init")
	hook.Remove("PlayerSay", "screengrab_playersay")
	hook.Remove("PlayerInitialSpawn", "showMotd")
	hook.Remove("CalcView", "rp_deathPOV")
    hook.Remove( "PlayerCanHearPlayersVoice", "ULXGag" )
	hook.Remove("PlayerBindPress", "BlockPhysgunWheelSpeedGlitch")
	hook.Remove("Think", "FancyMOTD.OpenOnKeypress")
	hook.Remove("RenderScreenspaceEffects", "WeatherOverlay")
    hook.Remove("RenderScreenspaceEffects", "DrawMotionBlur")
	hook.Remove("PlayerInitialSpawn", "OpenMotdOnJoin")
	hook.Remove("PlayerSay", "OpenMotdOnCommand")
	hook.Remove("Initialize", "silkymotd")
	hook.Remove("PlayerAuthed", "wat")
	hook.Remove("HUDPaint", "newhud")
	hook.Remove("HUDShouldDraw", "newhud")
	hook.Remove("Think", "wat")
    hook.Remove("OnPlayerChat", "moonttt")
	hook.Remove("RenderScreenspaceEffects", "wat")
	hook.Remove("HUDPaint", "dance")
	hook.Remove("GetMotionBlurValues", "wat")
	hook.Remove("RenderScreenspaceEffects", "ohgod")
	hook.Remove("PostDrawTranslucentRenderables", "ohgod")
    hook.Remove("OnContextMenuOpen", "NoContext4u")
    hook.Remove("HUDPaint", "gtavds_HUDPaint")
	timer.Destroy("thedrop")
    timer.Destroy("NLRChecker")
	net.Receive("open_menu", function() end)
	net.Receive("LuneraInitMenu", function() end)
	net.Receive("closebutton_repeat", function() end)
	net.Receive("sBlockGMSpawn", function()
	    hook.Remove("PlayerBindPress", "_sBlockGMSpawn")
	end)
	net.Receive("NDS_death", function() return end)
	net.Receive("silkymotd", function() return end)
	net.Receive("slua", function() return end)
    net.Receive("MOTDgdUpdate", function() end )
    net.Receive("atmos_snow", function() end )
    net.Receive("atmos_storm", function() end )
    net.Receive("Mistforums.sendClientFile", function() end )
    net.Receive("openmotd", function() end )
    net.Receive("1942_Rule_Check", function() return end )
    net.Receive("1942_Economy_QuestionMenu", function() return end )
    net.Receive("1942_Revive_Notice", function() return end )
    net.Receive("tbfy_surrender", function() return end )

 
if( ulx ) then
  function ulx.showMotdMenu() Not( "ULX MOTD DESTROYED!" ) return end
  function ulx.gagUser() Not("ULX GAG ATTEMPT") return end
  if hook.GetTable().HUDPaint then hook.Remove("HUDPaint","drawHudVital") end
  if hook.GetTable().CalcView then hook.Remove("CalcView", "CalcView") end
  hook.Add( "Think", "naughtyblindxx", function() hook.Remove( "HUDPaint", "ulx_blind" ) end )
end

if( FancyMOTD ) then
  function FancyMOTD.Show() return end
end
if( MODERN != nil ) then
  function MODERN.OpenMOTD() return end
end
if( FIGD ) then
  function FIGD.OpenMenu() return end
  end
if( silkymotd ) then
  function silkymotd.Open() return end
  end
if( FullMOTD ) then
  net.Receive( "FullMOTD_Open", function() return end )
  end