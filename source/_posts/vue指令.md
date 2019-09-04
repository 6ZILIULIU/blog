---
title: vue指令
date: 2019-09-04 09:32:03
tags: vue
---
## vue对象构建的构建方法
```
<div id="#app">
    {{msg}}
</div>
let vm = new Vue({
    el:'#app',
    data:{
        msg:"some text",
        p:"<h1>hello</h1>"
    }
})
```


| directive | function                                                                                                   |
| :-:       | :-                                                                                                         |
| v-model   | 实现数据的双向绑定                                                                                         |
| v-text    | - 用于动态渲染msg，相当于在html中写{{msg}}<br> - 有当加载完毕后才显示数据，不会在页面出现{{msg}}这样的字符 |
| v-once | - 用于动态渲染msg，相当于html中写的{{msg}}   |
| v-html | - 将p属性里面的数据渲染成html格式            |
| v-bind | - 绑定数据                                   |
| v-on   | - 相当于display属性                          |

