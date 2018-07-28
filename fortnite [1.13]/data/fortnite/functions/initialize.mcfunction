kill @e[type=armor_stand,tag=fortnite]
setworldspawn

scoreboard objectives remove fortnite_cc
scoreboard objectives remove fortnite_max_cc
scoreboard objectives remove fortnite_d
scoreboard objectives remove fortnite_p

scoreboard objectives add fortnite_cc dummy
scoreboard objectives add fortnite_max_cc dummy
scoreboard objectives add fortnite_d deathCount
scoreboard objectives add fortnite_p dummy

summon armor_stand ~ ~ ~ {Tags:["fortnite","fortnite_start_stand"], Invisible: 1, Invulnerable: 1, NoGravity: 1, PersistenceRequired: 1}
summon armor_stand ~ ~ ~ {Tags:["fortnite","fortnite_chest_placer"], Invisible: 1, Invulnerable: 1, NoGravity: 1, PersistenceRequired: 1}
scoreboard players set @e[tag=fortnite_chest_placer] fortnite_max_cc 500

scoreboard objectives setdisplay sidebar fortnite_cc
setblock ~ ~ ~ minecraft:repeating_command_block{Command:"function fortnite:setup",powered:0b,auto:1b} destroy