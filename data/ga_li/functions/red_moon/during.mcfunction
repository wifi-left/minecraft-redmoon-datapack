scoreboard players set redmoon_tick state -1
bossbar set ga_li:redmoon players @a
scoreboard players add tick GA_REDMOON 1
execute store result bossbar ga_li:redmoon value run scoreboard players get tick GA_REDMOON
execute if score tick GA_REDMOON >= 9000 number run function ga_li:red_moon/over
execute in minecraft:overworld as @e[type=#minecraft:mobs,tag=!REDMoon] at @s run data modify entity @s IsBaby set value 1b
execute in minecraft:overworld as @e[type=#minecraft:mobs,tag=!REDMoon] at @s run data modify entity @s CanBreakDoors set value 1b
execute in minecraft:overworld as @e[type=skeleton,tag=!REDMoon] at @s run replaceitem entity @s weapon.mainhand bow{Enchantments:[{lvl:1s,id:"flame"},{lvl:3s,id:"power"},{lvl:2s,id:"punch"}],display:{Name:"\"\\u00a7a\\u00a7l至尊丶小白箭\""}}
execute in minecraft:overworld as @e[type=#minecraft:mobs,tag=!REDMoon] at @s run data modify entity @s DeathLootTable set value "ga_li:red_moon"
execute in minecraft:overworld as @e[type=#minecraft:mobs,tag=!REDMoon] at @s run data merge entity @s {Health:200f,Attributes:[{Base:200d,Name:"generic.max_health"},{Base:0.2d,Name:"generic.knockback_resistance"},{Base:0.3d,Name:"generic.movement_speed"},{Base:20d,Name:"generic.follow_range"},{Base:3d,Name:"generic.attack_damage"},{Base:4d,Name:"generic.attack_speed"},{Base:2d,Name:"generic.armor"},{Base:2d,Name:"generic.armor_toughness"}],ConversionTime:true}
execute in minecraft:overworld as @e[type=#minecraft:mobs,tag=!REDMoon] at @s run tag @s add REDMoon
time set 16000
execute as @e[type=arrow,nbt={inGround:1b}] at @s run summon minecraft:lightning_bolt
kill @e[type=arrow,nbt={inGround:1b}]
## execute as @e[type=minecraft:iron_golem] at @s run summon minecraft:snow_golem ~ ~ ~ {Health:60f,Attributes:[{Base:60d,Name:"generic.max_health"},{Base:0.2d,Name:"generic.knockback_resistance"},{Base:0.3d,Name:"generic.movement_speed"},{Base:20d,Name:"generic.follow_range"},{Base:3d,Name:"generic.attack_damage"},{Base:4d,Name:"generic.attack_speed"},{Base:2d,Name:"generic.armor"},{Base:2d,Name:"generic.armor_toughness"}],ConversionTime:true}