scoreboard players add @s vspGraveLock 1
execute if score @s vspGraveLock >= 5 run function vsp:grave/grave_handler/lock_grave
