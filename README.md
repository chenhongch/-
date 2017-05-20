# HmeScroMenu
封装了常用首页滚动菜单，可自主进行自定义
### 使用
拷贝demo里面的MenuBtn放到工程中
### 实例代码
 ```
  MenuBtnView *menu1 = [[MenuBtnView alloc]init];
    menu1.frame = CGRectMake(0, 250, self.view.frame.size.width, 180);
    [self.view addSubview:menu1];
    menu.delegate = self;
    menu1.data = _menuArray;
    menu1.rowNum = 5;
    menu1.bgcolor = [UIColor whiteColor];
    menu1.currentDotcolor = [UIColor purpleColor];
    menu1.dotcolor = [UIColor redColor];
    menu1.delegate = self;
```

<h1 id="toc_0"><img src="media/14952486772382/menuBtView.png" alt="menuBtVie"/>￼</h1>
