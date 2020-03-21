# Sets players vspGravePDelay to 150 ticks
scoreboard players set @s vspGravePDelay 150

# Stores XYZ and Dimension location of player
execute as @s at @s store result score @s vspGraveX run data get entity @s Pos[0]
execute as @s at @s store result score @s vspGraveY run data get entity @s Pos[1]
execute as @s at @s store result score @s vspGraveZ run data get entity @s Pos[2]
execute as @s at @s store result score @s vspGraveDim run data get entity @s Dimension

# Checks which type of grave to create = below players feet or above
execute as @s at @s unless block ~ ~-1 ~ #vsp:grave_blockers_below unless block ~ ~ ~ #vsp:grave_blockers_flush unless block ~ ~ ~ #minecraft:flower_pots unless block ~ ~ ~ #minecraft:banners unless block ~ ~ ~ #minecraft:beds unless block ~ ~-1 ~ #minecraft:anvil unless block ~ ~-1 ~ #minecraft:shulker_boxes run function vsp:grave/grave_creator/create_grave
execute as @s at @s if block ~ ~-1 ~ #vsp:grave_blockers_below run function vsp:grave/grave_creator/create_grave_up
execute as @s at @s if block ~ ~-1 ~ #vsp:grave_blockers_flush run function vsp:grave/grave_creator/create_grave_up
execute as @s at @s if block ~ ~ ~ #minecraft:flower_pots run function vsp:grave/grave_creator/create_grave_up
execute as @s at @s if block ~ ~ ~ #minecraft:beds run function vsp:grave/grave_creator/create_grave_up
execute as @s at @s if block ~ ~ ~ #minecraft:banners run function vsp:grave/grave_creator/create_grave_up
execute as @s at @s if block ~ ~-1 ~ #minecraft:anvil run function vsp:grave/grave_creator/create_grave_up
execute as @s at @s if block ~ ~-1 ~ #minecraft:shulker_boxes run function vsp:grave/grave_creator/create_grave_up
