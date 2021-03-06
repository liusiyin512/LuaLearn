---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by admin.
--- DateTime: 2021/2/18 16:15
---
--[[
函数参数的简化
    函数若只有一个参数，并且此参数是一个字符串或者table构造式，则（实参）圆括号可以省略这种语法现象称为“参数的简化”。
    如果“实参”是字符串，则圆括号可以简化
    
]]--
function MyFunction()
    print("我是函数")
end
--调用函数
MyFunction()
--带参函数
function SetName(str)
    print("设置您的昵称:"..str)
end
SetName("三里路")
--参数简化
SetName "三里路"   --如果实参是字符串，则圆括号可以简化
--带参函数
function SetNameArray(nameArray)
    for i, v in ipairs(nameArray) do
        print(v)
    end
end
nameArray = {1,32,2,3,4,23}
SetNameArray(nameArray)
SetNameArray {1,23,40} --参数的简化
nameArray2 = {name1 = "小明",name2 = "小米"}
SetNameArray(nameArray2)
SetNameArray {name1 = "小明", name2 = "小王"}
