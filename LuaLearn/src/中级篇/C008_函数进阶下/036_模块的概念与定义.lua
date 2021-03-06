---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by admin.
--- DateTime: 2021/3/18 18:46
---
--[[
模块
    模块的定义：
        由变量、函数等组成的table,因此创建模块本质就是创建一个table,此table最后需要返回。
    模块的作用：
        类似于一个封装库，把一些公用的代码放在一个文件里，以API接口的形式在其他地方调用，有利于代码的重用和降低代码耦合度。
    注意事项：
        定义local的函数名，就不要加模块限定，否则会报错。
]]
--定义一个局部模块
local myModel = {}
--定义一模块中的字段
myModel.gHeight = 180
function myModel.Fun1()
    print("Fun1 method invoked")
end
function myModel.FUn2()
    print("Fun2 method invoked")
end

-- 模块中不能定义私有的（local）函数与“字段”，否则无法调用。
--local myModel.Fun3()
--    print("Fun3 method invoked")
--end
return myModel
