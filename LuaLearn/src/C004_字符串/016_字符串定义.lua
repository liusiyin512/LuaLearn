---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by admin.
--- DateTime: 2021/1/18 18:28
---
--[[
字符串定义
    是由数字、字母、下划线组成的一串字符。
    lua语言中字符串可以使用以下三种方式来表示：
        单引号间的一串字符。
        双引号间的一串字符
        [ [ 和 ] ]间的一串字符
注意：字符串的下标是从1开始的（C#语言下标是从零开始的)
]]
str1 = "Hello"
str2 = '你好'
str3 = [[
大家下午好
下午好
]]
str4 = "大家'下午'好"
str5 = '大家"下午"好'
--str6 = "大家"下午好""
print("str1:", str1)
print("str2:",str2)
print("str3:",str3)
print("str4:",str4)
print("str5:",str5)
--输出字符串长度
print("str1 length="..string.len(str1)) --使用字符串函数，输出字符串长度
print("str2 #length="..#str2)
print("str2 length="..string.len(str2))
print("str3 length="..string.len(str3))
