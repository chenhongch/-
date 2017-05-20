//
//  ButtonView.m
//  首页菜单
//
//  Created by 贵阳陈红 on 17/3/1.
//  Copyright © 2017年 email:ch_email@126.com. All rights reserved.
//

#import "ButtonView.h"
#define RADIUS 44
@implementation ButtonView

-(id)initWithFrame:(CGRect)frame title:(NSString *)title imagestr:(NSString *)imagestr {
    self = [super initWithFrame:frame];
    if(self) {
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(frame.size.width/2-22, 10, RADIUS, RADIUS)];
        imageView.image = [UIImage imageNamed:imagestr];
        imageView.layer.cornerRadius = RADIUS/2;
        [self addSubview:imageView];
        
        UILabel *titlelab = [[UILabel alloc]initWithFrame:CGRectMake(0, 15 + RADIUS, frame.size.width, 20)];
        titlelab.text = title;
        titlelab.textAlignment = NSTextAlignmentCenter;
        titlelab.font = [UIFont systemFontOfSize:12];
        [self addSubview:titlelab];
    }
    return self;
}

@end
