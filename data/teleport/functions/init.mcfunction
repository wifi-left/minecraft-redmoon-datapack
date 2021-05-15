tellraw @a ["\u00a7e正在加载 传送组件 。"]
scoreboard objectives add tp trigger ["",{"text":"Send","color":"dark_aqua"},{"text":" TP","color":"green"}]
scoreboard objectives add tpa trigger ["",{"text":"Parse","color":"dark_aqua"},{"text":" TP","color":"green"}]
scoreboard objectives add tptimer dummy
scoreboard objectives add inittp dummy
scoreboard objectives add tplimit dummy
scoreboard objectives add tpcount dummy
scoreboard objectives add tpaall dummy
scoreboard objectives add tprenit dummy
scoreboard objectives add tpask dummy
scoreboard objectives add tpaask dummy
scoreboard objectives add uuid dummy
tellraw @a ["\u00a7e传送组件 加载完毕！\u00a7c目前可能暂时无法使用。"]