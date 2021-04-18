---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by admin.
--- DateTime: 2021/4/15 19:22
---
--[[
元表作用与性质
    为什么需要"元表"：
        在Lua中每个值都有一套预定义的操作集合。例如可以将数字相加，可以链接字符串，还可以在table中插入一对key-value等。
        但是我们无法将两个table相加，无法对函数作比较，也无法调用一个字符串？
    “元表”的作用：
        Lua提供了元表与元方法来修改一个值的行为，使其在面对一个“非预定义”的操作时执行一个指定的操作。
        例如：对两个“表”进行“加法”操作。
        （提示：类似C#中的“扩展方法”、“操作符重载”等技术）
    ”元表“重要函数：
        有两个重要函数可以获取与设置元表：setmetatable(t1,t2)设置t1的元表为t2。getmetatable(t)获取t的元表。
    ”元表“性质：
        任何table都可以作为任何值的元表，而一组相关的table也可以共享一个通用的元表，此元表描述了它门共同的行为。一个table
        甚至可以作为它自己的元表，用于描述其特有的行为。总之任何搭配形式都是合法的。
    ”元方法“
    定义值的行为，就有相应的元方法：
        算术类元方法：
        __add（加）、__sub(减)、__mul(乘)、__div(除)
        __unm(相反数)、__mod(取模)、__pow(乘幂)、__contact(连接操作符)
        (注意：这里的“算术”元方法，非常类似C#中的运算符重载的概念。）
        关系类元方法：
        __eq(等于),__lt(小于）、__le(小于等于）
        注意事项：
            关系类元方法使用上同算术类元方法，都是在有操作符操作时去查询元方法，其中三个关系操作符没有单独的元方法，
            Lua进行如下处理：
                a~=b 转化为not(a == b)
                a > b 转化为 (b < a）
                a >= b 转化为(b <= a)
        库定义的元方法：
        __tostring(print时调用）、
        __metatable(设置后不可修改元表，就是保护被操作的值，设置了元表不能在重新设置元表）
        Table访问的元方法：
        __index（查询table)、__newindex（修改table的字段）、__mode（弱引用table)
            __index(查询table)
            当访问一个table中不存在的字段时，得到的结果就是nil。这是对的但并非完全正确。实际上，
            这些访问会促使解释器去查找一个叫__index的元方法。如果没有这个元方法，那么访问结果
            就是nil,否则就由这个元方法来提供最终的结果。
        __newindex(给table新字段赋值）
            当对一个table中不存在的索引赋值时，解释器就会查找__newindex元方法。如果有这个
            元方法，解释器就调用它，而不是执行赋值。
            特别注意：
                rawset(t,k,v)方法可以绕过元方法直接对table进行赋值。
                rawset() 可以使得增加的记录直接生效，但元表函数继续执行。对于修改的
                记录则没有影响。
        __call(调用表)
        __mode(弱引用table)
            说明：通过table访问的元方法,__index、__newindex搭配使用可以轻易的实现
            面向对象。
    设置元方法的步骤：
        原始表
        元表
        设置元方法
        设置(原始表对应的）”元表“
        计算、使用与输出
]]
