---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by admin.
--- DateTime: 2021/3/12 10:22
---
--[[
闭包：
    一个函数中嵌套子函数，子函数可以使用父函数中的局部变量，这种行为就是”闭包“
    可以简略归纳为：闭包=函数 + 引用环境
    闭包的特点：
        闭包中的内嵌函数可以访问外部函数已经创建的所有局部变量，这些变量称为内嵌函数的”upvalue“
    闭包与一般函数的区别：
        闭包只是在形式表现上像函数，但实际上不是函数。函数只有一个实例，定义后逻辑就确定了，不会执行时发生变化。
    “词法域”概念
        若将一个函数写在另一个函数内，那么这个位于内部的函数便可以访问外部函数中的局部变量，这个特征称之为“词法域”。
        外部函数中的局部变量在匿名函数内即不是全局变量也不是局部变量，将其称之为“非全局变量”。
    闭包函数的典型应用
        “迭代器”的实现可以借助于闭合函数实现，闭合函数能保持每次调用之间的一些状态。
    闭包的功能总结：
        1、开发自定义“迭代器”函数。
        2、扩展了现有函数的功能
        3、扩展了命名空间
]]
--无参数闭包 内部嵌入内部函数
function Func()
    local i = 0
    print("--   A --i",i)
    return function() --内部嵌入的匿名函数，i 变量，称为内嵌函数的”upValue“.这里的i变量即不是全局变量，也不是局部变量。这里应该称为”非局部变量“
        print("--   B --i",i)
        i = i + 1
        print("--   C --i",i)
        return i;
    end
end
f1 = Func()
print(f1()) -- 输出结果 1
print(f1()) -- 输出结果 2
print(f1()) -- 输出结果 3
print(f1()) -- 输出结果 4
print("============================================================")
--带参数的闭包
function FunWithPara(i) --参数 i 是内嵌函数的'upvalue'
    print("A/i=",i)
    return function() --内嵌匿名函数
        print("B/i=",i)
        i = i + 1
        print("C/i=",i)
        return i
    end
end
fun2 = FunWithPara(10)
print("fun2",fun2())
print("fun2",fun2())
print("fun2",fun2())
print("fun2",fun2())
--具备多个内嵌函数的闭包
print("=========具备多个内嵌函数的闭包=================")
--本示例中，两个内嵌函数，对upvalue数值进行共享处理
function FunMutil()
    local numUpValue = 10 -- 这是“upvalue”
    function InnerFun1()
        print(numUpValue)
    end
    function InnerFun2()
        numUpValue = numUpValue + 100
    end
    return InnerFun1,InnerFun2
end
local res1, res2 = FunMutil()
res1()--输出10
res2()--没有输出
res1()--输出110
--eg4:带参数的内嵌函数
print("==================带参数的内嵌函数==========")
function Fun4(num)
    return function(value)
        return num * value --此协防不能保存自己的内部状态
    end
end
fun4 = Fun4(10)
print(fun4(2)) --output 20
print(fun4(2)) --output 20
print(fun4(2)) --output 20
print("=======================================")
function Fun5(num)
    return function(value)
        num = num * value
        return num;
    end
end
fun5 = Fun5(10)
print(fun5(2)) --output 20
print(fun5(2)) --output 40
print(fun5(2)) --output 80
--演示闭包可以有多个实例
print("=================闭包可以有多个实例======================")
function Fun6()
    local i = 0
    return function()
        i = i + 1
        return i
    end
end
res61 = Fun6()
print(res61()) -- 1
print(res61()) -- 2
print(res61()) -- 3

res62 = Fun6()
print(res62()) -- 1
print(res62()) -- 2
print(res62()) -- 3

