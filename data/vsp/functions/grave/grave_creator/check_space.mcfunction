# Checks which type of grave to create = below players feet or above
execute as @s at @s unless block ~ ~-1 ~ #vsp:grave_blockers run function vsp:grave/grave_creator/create_grave
execute as @s at @s if block ~ ~-1 ~ #vsp:grave_blockers run function vsp:grave/grave_creator/create_grave_up
