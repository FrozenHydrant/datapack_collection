execute at @a at @e[tag=fortnite_chest_stand, distance=..50] run particle minecraft:end_rod ~ ~ ~ 0.5 1 0.5 0 1
execute as @a[scores={fortnite_d=1}] run gamemode spectator @s

execute as @a[scores={fortnite_d=1}] run tag @s remove playing_alive
execute as @a[scores={fortnite_d=1}] run scoreboard players remove @e[tag=fortnite_start_stand] fortnite_p 1
execute as @a[scores={fortnite_d=1}] run scoreboard players set @s fortnite_d 0

execute as @e[tag=fortnite_start_stand, scores={fortnite_p=1}] run function fortnite:finished
execute at @e[tag=fortnite_start_stand, scores={fortnite_p=1}] run setblock ~ ~ ~ air destroy