---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by siyin.liu.
--- DateTime: 2021/4/11 19:33
---
--[[
什么是"模式匹配"
    模式匹配可以使用“匹配参数”方式，对给定的字符串进行“模糊智能”查询。(类似于C#中的正则表达式)

模式匹配支持以下函数：
    string.match()
    string.gmatch()
    string.find()
    string.sub()
    string.gsub()
lua支持的所有匹配规则：（此规则与C#的正则表达式非常类似）
    .   (点)与任何字符配对
    %a  与任何字母比配[alphabet]
    %d  与任何数字匹配[digit]
    %w  与任何字母/数字匹配[word]
    %s  与任何空白字符配对
    %l  与任何小写字母配对
    %u  与任何大写字母配对
    %p  与任何标点符号配对
    %c  与任何控制符配对
    %x  与任何16进制数配对
    %z  与任何代表零的字符配对

    [数个字符类]与任何中括号中包含的字符类配对。例如[%w_]与任何字母、数字、或者下划线符号配对
    [^数个字符类]与任何不包含在中括号中的字符类配对。类如[^%s]与任何非空白字符配对

    注意：
        当上述的字符类用大写字母书写时，表示与非此字符类的任何字符配对（即：补集）
            例如：print(string.gsub("hello,Every-one!","%A","."))
            输出：hello.Every..one.
        单个字符加一个*号，将要匹配零或多个该类的字符。尽可能匹配长的串
        单个字符加一个+号，将要匹配一个或多个该类的字符。尽可能匹配长的串
        单个字符加一个-号，将要匹配零或多个该类的字符，与*不同的是，尽可能匹配短的串。
        单个字符加一个?号，将要匹配零个或一个该类的字符
        %n,n可以是1-9，匹配1到n个符合条件的子串

]]
--模式匹配示例  字符类%d匹配任意数字。所以你可以使用模式串“%d%d/%d%d/%d%d%d%d”搜索dd/mm/yyyy格式的日期。
s = "DeadLine is 28/06/2018, firm "
data = "%d%d/%d%d/%d%d%d%d"
print(string.sub(s,string.find(s,data)))  --output 28/06/2018

print(string.gsub("hello,Every-one!","%A","."))