clear @a
effect clear @a
effect give @a minecraft:saturation 1000000 0 true

spreadplayers ~ ~ 0 500 false @a
worldborder center ~ ~ 
worldborder set 1000 
worldborder set 25 600

gamemode survival @a
difficulty peaceful
tag @a add playing_alive

execute as @a run scoreboard players add @e[tag=fortnite_start_stand] fortnite_p 1
setblock ~ ~ ~ minecraft:repeating_command_block{Command:"function fortnite:fight_check",auto:1b} destroy