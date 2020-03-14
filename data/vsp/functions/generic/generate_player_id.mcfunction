## Generates random player ID using Pseudo Random Mechanisms
scoreboard players reset @s vsp_rns
scoreboard players reset @s vspPlayerID

execute store result score @s vsp_rns run time query gametime
scoreboard players operation @s vsp_rns *= stored vsp_rng2
scoreboard players operation @s vsp_rns %= stored vsp_rng3
scoreboard players operation @s vspPlayerID = @s vsp_rns
scoreboard players operation @s vspPlayerID %= stored vsp_rng4
#
