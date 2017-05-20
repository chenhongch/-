//
//  ViewController.m
//  首页菜单
//
//  Created by 陈楠 on 17/2/28.
//  Copyright © 2017年 i-mk_chenhong. All rights reserved.
//

#import "ViewController.h"
#import "MenuBtnView.h"
@interface ViewController ()<MenuBtnViewDelegate>
@property (nonatomic, strong) NSMutableArray *menuArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor grayColor];
    //获取数据
    [self initData];
    
    MenuBtnView *menu = [[MenuBtnView alloc]init];
    menu.frame = CGRectMake(0, 20, self.view.frame.size.width, 180);
    menu.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:menu];
    menu.delegate = self;
    menu.data = _menuArray;//菜单数据
    menu.rowNum = 4;//每排个数
    menu.bgcolor = [UIColor whiteColor];//背景色
    menu.currentDotcolor = [UIColor darkGrayColor];
    menu.dotcolor = [UIColor orangeColor];
    menu.delegate = self;
    
    
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
   
}

/**
 数据格式：@[@{title:@"标题",@"image":"icon.png"},@{}] 需要其他格式可以可以修改
 */
-(void)initData {
    NSString *plistPath = [[NSBundle mainBundle]pathForResource:@"menuData" ofType:@"plist"];
    self.menuArray = [[NSMutableArray alloc]initWithContentsOfFile:plistPath];
}
- (void)Click:(NSInteger)tag{
    NSLog(@"tag===%ld",(long)tag);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
