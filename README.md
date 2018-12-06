# KnightComp

A competitive format for Demoknights.

This is a modified ETF2L 6v6 config made for the following purpose: To give Demoknights a means of competition. Rules are as follows:

Classlimits: 1 Soldier, 6 Demoknight, 1 Medic, 0 for all else

Supported gamemodes: 5CP, KOTH, Stopwatch, CTF, Pass Time (though pass time and stopwatch are unlikely to be played)

Weapon bans: Stickybomb Launcher, Scottish Resistance, Quickiebomb Launcher, Sticky Jumper, Vaccinator

Note that there is no actual way to ban the stock Sticky Launcher without any plugins. Fortunately, we have not had any cases of people griefing with stickies because nobody wants to get kicked or banned.

# How to use?

Every file except "KnightComp_ETF2L_Override.cfg" is intended for server use.

"KnightComp_ETF2L_Override.cfg" is intended to be used on a client's PC, in cases where the server does not support KnightComp but DOES support an ETF2L 6v6 Config. At the moment, this is the file we are using to host pugs on serveme.tf servers.

In these cases, the person who rented the server out execs this on their client and it sends a lot of commands through rcon to set up the server for KnightComp. However, the server MUST have been using an ETF2L 6v6 config beforehand.

If using serveme.tf, this override needs to be reloaded upon map change. Otherwise, people running 2 Soldiers or 2 Medics on a midfight will indeed happen.