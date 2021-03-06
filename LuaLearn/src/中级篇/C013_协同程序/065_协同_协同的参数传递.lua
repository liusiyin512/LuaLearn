---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by siyin.liu.
--- DateTime: 2021/4/20 22:21
---
--[[
    带参协同：使得协程的功能与灵活性进一步提高。
    步骤：
        1 > 定义带有形参的函数，且定义为协同程序。
        2 > 使用coroutine.resume(协同，“协同参数”）方式传入协同的实参。
]]
--演示一个参数的传递
function fun1(num1)
        print("出入参数num1  =",num1)
end
cor1 = coroutine.create(fun1)
--测试运行
coroutine.resume(cor1,200) --200 就是协同的”实参“
print("演示多个参数的传递")
-- cor 是一个"thread"
function fun2(cor,...)
        print("协同内部，输入参数协同的状态",coroutine.status(cor),...)
end

cor2 = coroutine.create(fun2)
coroutine.resume(cor2,cor2,"hello",123,"世界")