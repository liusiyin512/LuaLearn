---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by admin.
--- DateTime: 2021/2/24 18:22
---
--[[
可变参数：
    ”可变参数“又称为”变长参数“，使用符号”...“表示多个参数，主要应用在形参种。
    （注意:这里的关键字功能类似C#种的para关键字）
    注意事项一：
        1> lua5.0以上版本通过局部table变量"arg"可以接收所有变长参数。arg是lua中内置的函数，本质是把可变参数封装为一个表。（#arg也表示参数的个数)
        2> 函数访问变长参数时，使用"{...}"表达式访问
]]--

function MultiParaVal(...)
    for i, v in pairs({...}) do --注意：这里"..."是关键字，表示多个参数。（类似于C#中para)
        print(v)
    end
end

MultiParaVal("唐三","唐浩","伍子胥")
print("..............")
MultiParaVal("唐三",123,"伍子胥")
print("..............")
MultiParaVal(1,{1,2,3},"伍子胥")

--lua中有一个内置函数"arg"来代替"{...}"
function MultiParaVal2(...)
    --输出形参的个数
    print("输出参数的个数:",#arg)
    for i, v in pairs(arg) do --pairs关键字可以输出集合中所有非nil数值
        print(v)
    end
end
print(".................")
MultiParaVal2("唐三","唐浩",nil,"伍子胥")
--用ipairs遍历
function MultiParaVal3(...)
    --输出形参的个数
    print("输出参数的个数:",#arg)
    for i, v in ipairs(arg) do -- ipairs关键字则不在输出
        print(v)
    end
end
MultiParaVal3("唐三","唐浩",nil,"伍子胥")