# Checks which type of grave to create = below players feet or above
execute as @s at @s unless block ~ ~-1 ~ #vsp:grave_blockers unless block ~ ~-1 ~ #minecraft:flower_pots unless block ~ ~-1 ~ #minecraft:banners unless block ~ ~-1 ~ #minecraft:beds unless block ~ ~-1 ~ #minecraft:anvil unless block ~ ~-1 ~ #minecraft:shulkers_boxes run function vsp:grave/grave_creator/create_grave
execute as @s at @s if block ~ ~-1 ~ #vsp:grave_blockers run function vsp:grave/grave_creator/create_grave_up
execute as @s at @s if block ~ ~-1 ~ #minecraft:flower_pots run function vsp:grave/grave_creator/create_grave_up
execute as @s at @s if block ~ ~-1 ~ #minecraft:beds run function vsp:grave/grave_creator/create_grave_up
execute as @s at @s if block ~ ~-1 ~ #minecraft:banners run function vsp:grave/grave_creator/create_grave_up
execute as @s at @s if block ~ ~-1 ~ #minecraft:anvil run function vsp:grave/grave_creator/create_grave_up
execute as @s at @s if block ~ ~-1 ~ #minecraft:shulkers_boxes run function vsp:grave/grave_creator/create_grave_up
