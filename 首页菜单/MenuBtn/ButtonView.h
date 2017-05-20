//
//  ButtonView.h
//  首页菜单
//
//  Created by 贵阳陈红 on 17/3/1.
//  Copyright © 2017年 email:ch_email@126.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ButtonView : UIView
/**
 *  title:显示文字
 *  imagestr:显示图片
 */
-(id) initWithFrame:(CGRect)frame title:(NSString *)title imagestr:(NSString *)imagestr;
@end
