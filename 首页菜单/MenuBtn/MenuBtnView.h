//
//  MenuBtnView.h
//  首页菜单
//
//  Created by 贵阳陈红 on 17/2/28.
//  Copyright © 2017年 email:ch_email@126.com. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol MenuBtnViewDelegate <NSObject>

/**
 *  tag:点击按钮tag值
 */
- (void)Click:(NSInteger)tag;

@end

@interface MenuBtnView : UIView
/**
 *  数据
 */
@property (nonatomic ,retain)NSArray *data;
/**
 *  底图背景色
 */
@property (nonatomic ,retain)UIColor *bgcolor;
/**
 *  未选择圆点颜色
 */
@property (nonatomic ,retain)UIColor *dotcolor;
/**
 *  当前圆点颜色
 */
@property (nonatomic ,retain)UIColor *currentDotcolor;
/**
 *  当前圆点颜色
 */
@property (nonatomic ,assign)NSInteger rowNum;

/**
 *  代理
 */
@property (nonatomic ,assign)id<MenuBtnViewDelegate>delegate;
@end
