---
title: video test
date: 2022-07-31 19:00:00
categories: [各种折腾]
tags: [群晖,docker,]
description: 测试在 Markdown 中嵌入视频。
photos: 
 - https://cdn.jsdelivr.net/gh/wbsu2003/images2022@main/picgo/2022/061/202207311226410.png
---

# 嵌入视频

## 方式一

`video` 标签嵌入1
<div>
<video id="video" controls="" preload="none" poster="封面">
      <source id="mp4" src="https://user-images.githubusercontent.com/16015833/168876388-0310678d-080b-4eca-8633-e5cc4d7bd5d1.mp4" type="video/mp4">
</videos>
</div>

## 方式二

`video` 标签嵌入2

<div>
<video playsinline="" tabindex="-1" poster="data:image/gif;base64,R0lGODlhAQABAIAAAAUEBAAAACwAAAAAAQABAAACAkQBADs=" crossorigin="anonymous" controlslist="nodownload" class="css-1qbueyq" data-loom-video-id="3ea2-f584" data-active="true" src="blob:https://www.loom.com/cf160d7a-9886-4f70-b1da-a7f0db136a94">
    <p>Your user agent does not support the HTML5 Video element.</p>
</video>
</div>

## 方式三

`iframe` 嵌入 `B` 视频

<div>
<iframe src="//player.bilibili.com/player.html?aid=556472991&bvid=BV1xe4y1X7Wv&cid=789365563&page=1" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"> </iframe>
</div>

# 参考文档

> ClaperCo/Claper: The ultimate tool to interact with your audience
>地址：[https://github.com/ClaperCo/Claper](https://github.com/ClaperCo/Claper)
>
