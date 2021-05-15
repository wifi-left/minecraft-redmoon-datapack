# Demo
scoreboard players add @a uuid 0
execute as @p[scores={uuid=0}] run scoreboard players add #nid uuid 1
execute as @p[scores={uuid=0}] run scoreboard players operation @s uuid = #nid uuid

# Parse the action
# TPA
execute as @a[scores={tp=-1..-1},tag=!tpasked] run tag @s add getuuid
tellraw @a[tag=getuuid] ["\n\u00a7a ★ 输入\u00a7e/trigger tp set <ID>\u00a7a发送传送请求。\n"]
execute if entity @a[tag=getuuid] run execute as @a run tellraw @a[tag=getuuid] [" * ",{"selector":"@s","color":"red"},"\u00a7a 的ID为 ",{"score":{"name": "@s","objective": "uuid"},"color":"red"}]
tellraw @a[tag=getuuid] [""]
scoreboard players set @a[tag=getuuid] tp 0
tag @a[tag=getuuid] remove getuuid

execute as @a[scores={tp=1..},tag=!tpasked] run tag @s add tpask
#execute as @a[scores={tp=1..}] if score @s tp = @s uuid run tellraw @s {"text":"[×] 你不能传送自己！","color":"red"}
#execute as @a[scores={tp=1..}] if score @s tp = @s uuid run scoreboard players set @s tp 0
#execute as @a[scores={tpa=-1..}] if score @s tpa = @s uuid run tellraw @s {"text":"[×] 你不能传送自己！","color":"red"}
#execute as @a[scores={tpa=-1..}] if score @s tpa = @s uuid run scoreboard players set @s tpa -100
tellraw @a[scores={tpa=-1..,tp=1..}] {"text":"\u00a7e[×] 请求失败，请重试！","color":"red"}
tag @a[scores={tpa=-1..,tp=1..}] add tprenit
execute as @a if score @s uuid = @a[tag=tpask,limit=1] tp run tag @s add tpaask
tellraw @a[tag=tpaask] ["",{"selector":"@a[tag=tpask,limit=1]","color":"red"},"\u00a76 想要传送到你这来。",{"text":"\u00a7a[ACCEPT]","clickEvent":{"action":"run_command","value":"/trigger tpa set -1"},"hoverEvent":{"action":"show_text","value":"Click here to accept!"}}," ",{"text":"\u00a7c[REFUSE]","clickEvent":{"action":"run_command","value":"/trigger tpa set -2"},"hoverEvent":{"action":"show_text","value":"Click here to refuse!"}}]
execute as @a[tag=tpask] if entity @a[tag=tpaask,limit=1] run tellraw @s ["",{"text":"你已发送了一个 ","color":"dark_aqua"},{"text":" "},{"text":"传送请求 ","color":"green"},{"text":"给","color":"dark_aqua"},{"text":" ","bold":true,"color":"green"},{"selector":"@a[tag=tpaask]","color":"red"},{"text":"!","color":"dark_aqua"}] 
execute as @a[tag=tpask] unless entity @a[tag=tpaask] run tellraw @s {"text":"错误：玩家不在线或不存在！","color":"red"}
execute as @a[tag=tpask] unless entity @a[tag=tpaask] run tag @s add tprenit
tag @a[tag=tpask] add tpasked
tag @a[tag=tpask] remove tpask
tag @a[tag=tpaask] add tpaasked
tag @a[tag=tpaask] remove tpaask
#scoreboard players set @s tptimer 1200
execute as @a[scores={tp=1..}] if score @s tp = @a[limit=1,scores={tpa=-1}] uuid run scoreboard players operation @a[limit=1,scores={tpa=-1}] tpa = @s uuid
execute as @a[scores={tp=1..}] if score @s tp = @a[limit=1,scores={tpa=-2}] uuid run scoreboard players set @s tptimer 1200
execute as @a[tag=tpasked] if score @s uuid = @a[tag=tpaasked,limit=1] tpa run tag @s add intp
execute as @a[tag=tpaasked] if score @s tpa = @a[tag=tpasked,limit=1] uuid run tag @s add intp
execute as @a[nbt={Dimension:0},tag=tpaasked,tag=intp] in overworld run tp @a[tag=intp,tag=tpasked] @s
execute as @a[nbt={Dimension:-1},tag=tpaasked,tag=intp] in the_nether run tp @a[tag=intp,tag=tpasked] @s
execute as @a[nbt={Dimension:1},tag=tpaasked,tag=intp] in the_end run tp @a[tag=intp,tag=tpasked] @s
experience add @a[scores={intp=1..}] 1 points
tellraw @a[tag=intp] {"text":"\u00a7a[√] 你的传送请求已被接受！","color":"aqua"}
tag @a[tag=intp] add tprenit
tag @a[tag=intp] remove intp
scoreboard players add @a[tag=tpasked] tptimer 1
tellraw @a[scores={tptimer=1200..}] {"text":"\u00a7e[×] 你的传送请求已过期。","color":"red"}
tag @a[scores={tptimer=1200..}] add tprenit
scoreboard players reset @a[tag=tprenit] tp
tag @a[tag=tprenit] remove tpaasked
tag @a[tag=tprenit] remove tpasked
scoreboard players set @a[tag=tprenit] tpa -100
scoreboard players reset @a[tag=tprenit] tptimer
tag @a[tag=tprenit] remove tprenit
scoreboard players enable @a tp
scoreboard players enable @a tpa
tellraw @a[scores={tpa=-1..},tag=!tpaask] {"text":"[×] 你没有任何请求！","color":"red"}
tag @a[scores={tpa=-1..},tag=!tpaask] add tprenit