---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by yangf.
--- DateTime: 2021/1/17 15:53
---
--[[
    为什么在游戏编程领域lua语言被广泛应用？
        因为游戏游戏行业需求变化快且变化多，据传最早引入Lua大型游戏应该是魔兽世界WOW，其中使用Lua来开发插件。
        后来网易、腾讯等大型游戏商业游戏也在大量应用。
    Lua语言是什么？
        巴西大学研究项目，设计目的是嵌入应用程序中，提供灵活的扩展和定制功能。
    lua的应用场景
        游戏开发（VR/AR）、工业级的应用程序（Adobe's Photoshop)、嵌入式设备和智能移动设备、Web应用、扩展与数据库插件、
        安全系统等。
    lua语言的发展史
        巴西大学研究项目，设计目的是嵌入应用程序中，提供灵活的扩展和定制功能。lua由C语言编写而成，是1993年完成开发。
        lua最新是5.3版本但是版本提升很慢。
    热更新原理A
        因为C#属于编译型语言无法热更新。传统技术上游戏更新，需要下载整个下载包，游戏体验较差。
    如何利用lua来热更新。
        在游戏客户端嵌入lua解析器。因为lua无需编译，可以在任何操作系统运行，利于“热更新”。对于C#语言来说因为必须编译为dll
        等，所以C#语言不能在手机端完成编译，所以必须重新下载。
    热更新技术的类别：
        使用lua脚本实现
        使用C# light
        使用反射技术（苹果平台也不支持）
    热更新原理（B）
        lua的解析技术
        1、ulua(网站ulua.org)、nlua（网站：nlua.org)、UniLua、sLua等。
        2、tolua技术（目前公司在用的多）
        3、xlua技术（腾讯维护的技术）
        lua学习路线
            首先学习lua语言编程。
            学习Xlua等热更新技术、实现Lua与C#的嵌入开发。
            学习AssetBundle进行资源更新。
            xlua技术嵌入商业项目，再配合AssetBundlez框架等进行商业开发。
    下载开发环境
        lua官网 https://www.lua.org
        lua for windows 下载地址：
            http://luaforge.net/projects/luaforwindows/
        国内中文权威参考手册：
            http://www.runoob.com/manual/lua53doc/manual.html
        安装下载的luaForWindows_*.exe
        编写自己的Hello World。
            1、使用最原始的“控制台”运行模式 lua *.lua
            2、使用内置IDE开发工具开发
                定位到安装lua目录的“SciTE目录。
            SciTE.exe是lua IDE工具。在SciTE.exe  IDE工具中自己写的最简单的lua程序。
]]