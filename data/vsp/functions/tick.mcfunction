## 'Player first time join setup | System Manager onTick commands'
execute as @a[tag=!vspJoinedTrack] at @s run function vsp:generic
#

## 'sleep_to_day | Plugin onTick commands'
scoreboard players set onlinePlayers vspGlobal 0
execute as @a run scoreboard players add onlinePlayers vspGlobal 1

scoreboard players operation nonSleepers vspGlobal = onlinePlayers vspGlobal
scoreboard players operation nonSleepers vspGlobal -= sleepingPlayers vspGlobal

scoreboard players set sleepingPlayers vspGlobal 0
execute as @a[tag=ssSleeping] run scoreboard players add sleepingPlayers vspGlobal 1

execute if score sleepingPlayers vspGlobal >= constantOne vspGlobal run title @a actionbar [{"text":"Players needed to sleep to day | ","color":"aqua"},{"text":"[","color":"gold"},{"score":{"name":"sleepingPlayers","objective":"vspGlobal"},"color":"yellow"},{"text":"/","color":"gold"},{"score":{"name":"sleepersNeeded","objective":"vspGlobal"},"color":"yellow"},{"text":"]","color":"gold"}]

tag @a[scores={vspData1=1..}] remove ssSleeping
execute as @e[tag=!ssSleeping,scores={vspData1=0}] at @s run function vsp:sleep_to_day/compare_online_sleep
tag @a[scores={vspData1=0}] add ssSleeping
#
