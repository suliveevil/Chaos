---
title: "Bookmarklet"
categories: 
date: 2022-10-20 14:14:26 +0800
tags: 
excerpt: 
---

```javascript
javascript:(function()%7Bfor%20(var%20node%20of%20document.querySelectorAll(%27p%2C%20li%2C%20h1%2C%20h2%2C%20h3%2C%20h4%27))%20%7B%20var%20copy%20%3D%20document.createElement(node.nodeName)%3B%20copy.textContent%20%3D%20node.textContent%3B%20node.parentElement.insertBefore(copy%2C%20node.nextElementSibling)%3B%20node.setAttribute(%27translate%27%2C%20%27no%27)%3B%20node.setAttribute(%27class%27%2C%20%27notranslate%27)%7D%20%7D)()%3B

```





