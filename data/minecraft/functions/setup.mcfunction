tellraw @a ["\u00a7b\u00a7l[Gamom Datapacks] \u00a76正在加载资源中..."]
execute if score redmoon state matches 1 run function ga_li:red_moon/over
scoreboard objectives add ScoN dummy
scoreboard objectives add DieT deathCount
scoreboard objectives add DieX dummy
scoreboard objectives add DieY dummy
scoreboard objectives add DieZ dummy
scoreboard objectives add GA_REDMOON dummy
scoreboard objectives add GA_REDMOON_TI dummy
scoreboard objectives add number dummy
scoreboard objectives add state dummy
scoreboard players add redmoon_tick state 0
scoreboard players set 9000 number 9000
bossbar remove ga_li:redmoon
bossbar add ga_li:redmoon ["\u00a7c\u00a7lRedmoon \u00a7c血月   \u00a77-   \u00a7e\u00a7o怪物增强"]
bossbar set ga_li:redmoon color red
bossbar set ga_li:redmoon max 9000
bossbar set ga_li:redmoon style notched_10
bossbar set ga_li:redmoon value 9000
bossbar set ga_li:redmoon players @a
bossbar set ga_li:redmoon visible false
##execute as @a at @a run summon zombie ~ ~ ~ {DeathLootTable:"ga_li:red_moon",Health:1s,Fire:5s}
function teleport:init
tellraw @a ["\u00a7b\u00a7l[Gamom Datapacks] \u00a7a加载成功！"]
tellraw @a ["\u00a7b请管理使用 \u00a7c\u00a7l/scoreboard players set set state <时间(tick)(20tick=1s)> \u00a7b设置血月出现时间"]
function minecraft:settingsg