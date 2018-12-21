#include <sourcemod>
#include <tf2_stocks>


ConVar stockEnable;

public Plugin myinfo = {
	name = "[TF2] StickyDisabler",
	author = "EasyE",
	description = "Prevents people from using stock sticky bomb launchers",
	version = "1",
	url = "xd"
}

public void OnPluginStart() {
	HookEvent("player_spawn", Event_PlayerSpawn, EventHookMode_Post);
	HookEvent("post_inventory_application", Event_PlayerResup, EventHookMode_Post);
	stockEnable = CreateConVar("sm_disablestickies", "0", "Enables/Disables stock sticky bomb launcher whitelist");
}


public Action Event_PlayerSpawn(Event event, const char[] name, bool dontBroadcast) {
	int client = GetClientOfUserId(GetEventInt(event, "userid"))
	RemoveStickies(client);
}

public Action Event_PlayerResup(Event event, const char[] name, bool dontBroadcast) {
	int client = GetClientOfUserId(GetEventInt(event, "userid"))
	RemoveStickies(client);
}


public void RemoveStickies(int client) {
	if(stockEnable.BoolValue) {
		TFClassType class = TF2_GetPlayerClass(client);
		int iWep;
		if (class == TFClass_DemoMan) iWep = GetPlayerWeaponSlot(client, 1)
		if(iWep >= 0) {
			char classname[64];
			GetEntityClassname(iWep, classname, sizeof(classname));
			if (StrEqual(classname, "tf_weapon_pipebomblauncher")) {
				PrintToChat(client, "\x07ff0000 [SM] Stickies equipped");
				TF2_RemoveWeaponSlot(client, 1);
			}
		}
	}
}