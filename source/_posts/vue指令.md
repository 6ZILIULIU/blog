---
title: vue指令
date: 2019-09-04 09:32:03
tags: vue
---

## **具体指令**  

| directive | function                                                                                                     |
| :-:       | :-                                                                                                           |
| v-model   |  实现数据的双向绑定                                                                                         |
| v-text    |  用于动态渲染msg，相当于在html中写 `{ {msg} }` <br>有当加载完毕后才显示数据，不会在页面出现{{msg}}这样的字符 |
| v-once    |  用于动态渲染msg，相当于html中写的 `{ {msg} }`                                                                 |
| v-html    |  将p属性里面的数据渲染成html格式                                                                            |
| v-bind    |  绑定元素属性，可缩写为':',如`<a :href="some-data`"></a>`                                                   |
| v-show    |  相当于display属性                                                                                          |
| v-on      | 给element绑定事件                                                                                            |
| v-for     | 循环遍历数组或者对象                                                                                         |
| v-if      | 若数据为true则显示                                                                                           |
| v-else    | 在if为false的时候触发，且使用v-else时必须有对应的v-if                                                        |


## 使用方法

### 首先需要有一个vue对象
```
<script> 
<div id="#app">
    {{msg}}
</div>
let vm = new Vue({
    el:'#app',
    data:{
        msg:"some text",
        p:"<h1>hello</h1>"
    }
});
</script>
```
