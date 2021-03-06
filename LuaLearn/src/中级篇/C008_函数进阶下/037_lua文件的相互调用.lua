---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by admin.
--- DateTime: 2021/3/19 17:58
---
--[[
使用require关键字实现lua文件的加载。
    语法格式：
        require("<模块名称>")
    说明：
        1.执行require后，返回一个由模块常量或函数组成的table
        2、模块名称与lua文件名称必须相同
    注意事项：
        1、被调用的lua文件，必须定义为”模块“的形式。
        2、调用的变量与函数必须不能是局部的(即：local），否则无法访问。
        3、可以给加载的模块定义一个别名变量，方便调用。
        4、给require赋值一个变量的时候，还可以加入local关键字，表示本别名方式只在本文件中起作用。
]]

--local model = require("TestModel")
local model = require("Test/C007_model")
print(model.height)
model.ToString()
model.SetHeight(200)
model.SetWidth(10)
model.ToString()