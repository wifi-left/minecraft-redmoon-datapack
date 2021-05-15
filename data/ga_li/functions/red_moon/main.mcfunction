execute if score redmoon state matches 1 run function ga_li:red_moon/during
execute unless score redmoon state matches 1 run scoreboard players add redmoon_tick state 1
execute unless score set state matches -100..0 if score redmoon_tick state >= set state run function ga_li:red_moon/start