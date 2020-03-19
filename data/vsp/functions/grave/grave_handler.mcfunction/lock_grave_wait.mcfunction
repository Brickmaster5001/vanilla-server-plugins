scoreboard players add @s vspGraveLock 1
execute as @s at @s if score @s vspGraveLock >= 5 run function vsp:grave/grave_handler/lock_grave
