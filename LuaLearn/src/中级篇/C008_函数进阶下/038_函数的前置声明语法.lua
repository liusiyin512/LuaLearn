---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by admin.
--- DateTime: 2021/3/23 14:22
---
--[[
函数的前置声明与unpack函数
    函数的本质时匿名的，即没有名称。讨论一个函数，本质是讨论一个持有此函数的变量。
    函数的前置声明，可以增加整体的“易读性”,作用：这是一个“古老”的语法现象，目前本语法可以提高程序地“易读性”
]]

local Fun1,Fun2 --函数地前置声明
function Fun1()
    print("Fun1")
    Fun2()
end
Fun2 = function()
    print("Fun1")
end
--调用
Fun1()
Fun2()
-------------------



