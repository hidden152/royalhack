/*

 ______     ______     __  __     ______     __            __  __     ______     ______     __  __
/\  == \   /\  __ \   /\ \_\ \   /\  __ \   /\ \          /\ \_\ \   /\  __ \   /\  ___\   /\ \/ /
\ \  __<   \ \ \/\ \  \ \____ \  \ \  __ \  \ \ \____     \ \  __ \  \ \  __ \  \ \ \____  \ \  _"-.
 \ \_\ \_\  \ \_____\  \/\_____\  \ \_\ \_\  \ \_____\     \ \_\ \_\  \ \_\ \_\  \ \_____\  \ \_\ \_\
  \/_/ /_/   \/_____/   \/_____/   \/_/\/_/   \/_____/      \/_/\/_/   \/_/\/_/   \/_____/   \/_/\/_/
  1.0 Beta
*/


filename = file.FindInLua("royalhack/module/*.lua")
/*
Table Values
*/
RoyalHack = {}
Targets = {}
Enemys = {}
Friends = {}
Pistols = {"weapon_pistol","weapon_deagle","weapon_fiveseven","weapon_glock","weapon_rpg","weapon_m3"}
Smg = {"weapon_ak47","weapon_mp5","weapon_m16",}
Misc = {"weapon_gravitygun","weapon_physicsgun","tool_gun"}
WalkbotSave = {}
Cheat_TeamV = Color(0,255,0,255)
Cheat_TeamIV = Color(0,0,255,255)
Cheat_EnemyV = Color(255,0,0,255)
Cheat_EnemyIV = Color(255,255,0,255)
Background = Color( 41,41,41,255 )
Labels = Color( 41,41,41,255 )
Tab = Color( 41,41,41,255 )
Buttons = Color( 41,41,41,255 )
Kills = 0
fire = 0
timer.Create("Kill",3,1,function()

Kills = LocalPlayer():Frags()

end )

OldKills = 0
question = true
Build = 1.0
CreateConVar("royalhack_version",Build,false,false)
CreateConVar("royalhack_esp_enemysonly",0,false)
CreateConVar("royalhack_esp_bone",1,true,false)
CreateConVar("royalhack_esp_box",1,true,false)
CreateConVar("royalhack_esp_radanr_Rad",2500,false)
CreateConVar("royalhack_esp_colormod", "Friends Visible", false)
CreateConVar("royalhack_esp_font","arial",false)
CreateConVar("royalhack_esp_crosshair", 1, false)
CreateConVar("royalhack_esp_sprite",0,false)
CreateConVar("royalhack_esp_barrel",1,false)
CreateConVar("royalhack_esp_name",1,true,false)
CreateConVar("royalhack_esp_health", 1, false)
CreateConVar("royalhack_esp_armor", 1, false)
CreateConVar("royalhack_esp_distance", 1, false)
CreateConVar("royalhack_esp_chams",1,true,false)
CreateConVar("royalhack_esp_iluminationlight",1,true,false)
CreateConVar("royalhack_esp_iluminationlight_size",250,true,false)
CreateConVar("royalhack_esp_iluminationlight_bright",5,true,false)
CreateConVar("royalhack_misc_radar_on",0,true,false)
CreateConVar("royalhack_misc_radar",1,true,false)
CreateConVar("royalhack_misc_radar_width",150,true,false)
CreateConVar("royalhack_misc_radar_hight",150,true,false)
CreateConVar("royalhack_misc_radar_x",16,true,false)
CreateConVar("royalhack_misc_radar_y",150,true,false)
CreateConVar("royalhack_misc_radar_radius",2500,true,false)
CreateConVar("royalhack_misc_radar_name",0,true,false)
CreateConVar("royalhack_misc_radar_ents",0,true,false)
CreateConVar("royalhack_misc_killmessage",0,true,false)
CreateConVar("royalhack_misc_killmessage_client",1,true,false)
CreateConVar("royalhack_misc_killmessage_server",1,true,false)
CreateConVar("royalhack_misc_killmessage_text","|Royal| killed you nub!",true, false)
CreateConVar("royalhack_menu_colormod","Background",true,false)
CreateConVar("royalhack_spinbot",0,true, false)
CreateConVar("royalhack_misc_sky",1,true,false)
CreateConVar("royalhack_menu_show",1,true,false)
CreateConVar("royalhack_sound_quake",1,true,false)
CreateConVar("royalhack_sound_quake_path","new",true,false)
CreateConVar("royalhack_sound_quake_hudtext",1,true,false)
CreateConVar("royalhack_sound_quake_chatprint",1,true,false)
CreateConVar("royalhack_dom",5,false,false)
CreateConVar("royalhack_headh",10,false,false)
CreateConVar("royalhack_mulk",15,false,false)
CreateConVar("royalhack_mon",25,false,false)
CreateConVar("royalhack_rap",35,false,false)
CreateConVar("royalhack_hu",45,false,false)
CreateConVar("royalhack_kil",55,false,false)
CreateConVar("royalhack_lud",65,false,false)
CreateConVar("royalhack_uns",100,false,false)
CreateConVar("royalhack_ult",125,false,false)
CreateConVar("royalhack_hol",150,false,false)
CreateConVar("royalhack_wic",200,false,false)
CreateConVar("royalhack_god",350,false,false)
CreateConVar("royalhack_walkbot",0,true,false)
CreateConVar("royalhack_walkbot_fov",90,true,false)
CreateConVar("royalhack_walkbot_dis",1000,true,false)
CreateConVar("royalhack_npc_aimbot",1,true,false)
CreateConVar("royalhack_aim_fov",15,true,false)
CreateConVar("royalhack_aim_defense",1,true,false)
CreateConVar("royalhack_aim_aimkey", 0, true ,false)
CreateConVar("royalhack_aim_key",1,true,false)
CreateConVar("royalhack_aim_npc_targetmode",0,true,false)
CreateConVar("royalhack_aimbot",0,true,false)
CreateConVar("royalhack_aim_maxdistance",5000,true,false)
CreateConVar("royalhack_aim_bonepos",1,true,false)
CreateConVar("royalhack_aim_targetmode", 1, true,false)
CreateConVar("royalhack_aim_norecoil", 1, true, false)
CreateConVar("royalhack_aim_nospread",0,true,false)
CreateConVar("royalhack_aim_PredictTarget",0,true,false)
CreateConVar("royalhack_aimvector_z",20)
CreateConVar("royalhack_aimvector_x",0)
CreateConVar("royalhack_aimvector_y",0)
CreateConVar("royalhack_aim_autoshoot",0,true,false)