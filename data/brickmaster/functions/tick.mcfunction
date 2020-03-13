## 'sleep_to_day | Plugin onTick commands'
scoreboard players set onlinePlayers ssGlobal 0
execute as @a run scoreboard players add onlinePlayers ssGlobal 1

scoreboard players operation nonSleepers ssGlobal = onlinePlayers ssGlobal
scoreboard players operation nonSleepers ssGlobal -= sleepingPlayers ssGlobal

scoreboard players set sleepingPlayers ssGlobal 0
execute as @a[tag=ssSleeping] run scoreboard players add sleepingPlayers ssGlobal 1

execute if score sleepingPlayers ssGlobal >= constantOne ssGlobal run title @a actionbar [{"text":"Players needed to sleep to day | ","color":"aqua"},{"text":"[","color":"gold"},{"score":{"name":"sleepingPlayers","objective":"ssGlobal"},"color":"yellow"},{"text":"/","color":"gold"},{"score":{"name":"sleepersNeeded","objective":"ssGlobal"},"color":"yellow"},{"text":"]","color":"gold"}]

tag @a[scores={ssData1=1..}] remove ssSleeping
execute as @e[tag=!ssSleeping,scores={ssData1=0}] at @s run function brickmaster:sleep_to_day/compare_online_sleep
tag @a[scores={ssData1=0}] add ssSleeping
#

## ''

#

## ''

#
