

//
//  MenuBtnView.m
//  首页菜单
//
//  Created by 贵阳陈红 on 17/2/28.
//  Copyright © 2017年 email:ch_email@126.com. All rights reserved.
//

#import "MenuBtnView.h"
#import "ButtonView.h"
#define TAG 1000
#define TITLE @"title"
#define IMAGE @"image"
#define screen_width [UIScreen mainScreen].bounds.size.width
@interface MenuBtnView ()<UIScrollViewDelegate>
{
    UIPageControl *_pageControl;
    UIScrollView *_scrollView;
}

@end

@implementation MenuBtnView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

    }
    return self;
}

- (void)layoutSubviews{
    [self addSubviews];
}
- (void)addSubviews{
    
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, screen_width, 180)];
    scrollView.pagingEnabled = YES;
    scrollView.delegate = self;
    scrollView.backgroundColor = _bgcolor;
    scrollView.showsHorizontalScrollIndicator = NO;
    [self addSubview:scrollView];
    _scrollView = scrollView;
    
    if (_data.count <= _rowNum*2) {
         scrollView.contentSize = CGSizeMake(screen_width, 180);
    }else if(_data.count <= _rowNum * 4 &&_data.count > _rowNum*2){
        scrollView.contentSize = CGSizeMake(screen_width*2, 180);
    }else if(_data.count <= _rowNum * 6 && _data.count > _rowNum * 4){
        scrollView.contentSize = CGSizeMake(screen_width*3, 180);
    }else if(_data.count <= _rowNum * 8 && _data.count > _rowNum * 6){
        scrollView.contentSize = CGSizeMake(screen_width*4, 180);
    }else if(_data.count <= _rowNum * 10 && _data.count > _rowNum * 8){
        scrollView.contentSize = CGSizeMake(screen_width*5, 180);
    }else if(_data.count <= _rowNum * 12 &&_data.count > _rowNum * 10){
        scrollView.contentSize = CGSizeMake(screen_width*6, 180);
    }else if(_data.count <= _rowNum * 14 && _data.count > _rowNum * 12){
        scrollView.contentSize = CGSizeMake(screen_width*7, 180);
    }else if(_data.count <= _rowNum * 16 && _data.count > _rowNum * 14){
        scrollView.contentSize = CGSizeMake(screen_width*8, 180);
    }else{
        //更多
    }
    for(int i = 0; i < _data.count; i++) {
        if(i < _rowNum) {
            
            [self initBtView:_rowNum RangNum:i withViewY:0];
            
        }else if (i>=_rowNum&&i < _rowNum*2) {
            
            [self initBtView:_rowNum RangNum:i withViewY:80];
            
        }else if (i>=_rowNum*2&&i < _rowNum*3) {
            
            [self initBtView:_rowNum RangNum:i withViewY:0];
            
        }else if (i>=_rowNum*3&&i < _rowNum*4) {
            
            [self initBtView:_rowNum RangNum:i withViewY:80];
            
        }else if (i>=_rowNum*4&&i < _rowNum*5) {
            
            [self initBtView:_rowNum RangNum:i withViewY:0];
            
         }else if (i>=_rowNum*5&&i < _rowNum*6) {
             
            [self initBtView:_rowNum RangNum:i withViewY:80];
             
        }else if (i>=_rowNum*6&&i < _rowNum*7) {
            
            [self initBtView:_rowNum RangNum:i withViewY:0];
            
       }else if (i>=_rowNum*7&&i < _rowNum*8) {
           
            [self initBtView:_rowNum RangNum:i withViewY:80];
           
       }else if (i>=_rowNum*8&&i < _rowNum*9) {
           
           [self initBtView:_rowNum RangNum:i withViewY:0];
           
        }else if (i>=_rowNum*9&&i < _rowNum*10) {
            
            [self initBtView:_rowNum RangNum:i withViewY:80];
           
        }else if (i>=_rowNum*10&&i < _rowNum*11) {
            
            [self initBtView:_rowNum RangNum:i withViewY:0];
            
        }else if (i>=_rowNum*11&&i < _rowNum*12) {
            
            [self initBtView:_rowNum RangNum:i withViewY:80];
            
        }else if (i>=_rowNum*12&&i < _rowNum*13) {
            
            [self initBtView:_rowNum RangNum:i withViewY:0];
            
        }else if (i>=_rowNum*13&&i < _rowNum*14) {
            
            [self initBtView:_rowNum RangNum:i withViewY:80];
            
         }else if (i>=_rowNum*14&&i < _rowNum*15) {
             
            [self initBtView:_rowNum RangNum:i withViewY:0];
          
        }else if (i>=_rowNum*15&&i < _rowNum*16) {
            
            [self initBtView:_rowNum RangNum:i withViewY:80];
        }
    }
    
    _pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(screen_width/2-10, CGRectGetMaxY(scrollView.frame)-20, 0, 20)];
    [self addSubview:_pageControl];
    _pageControl.currentPage = 0;
    double num = _data.count/(_rowNum*2.00);
    _pageControl.numberOfPages = ceilf(num);//ceilf向上取整 floor 向下取整  round四舍五入
    [_pageControl setCurrentPageIndicatorTintColor:_currentDotcolor];//当前圆点颜色
    [_pageControl setPageIndicatorTintColor:_dotcolor];//未选择圆点颜色
    
}

- (void)initBtView:(NSInteger)rowNum RangNum:(NSInteger)forNum withViewY:(NSInteger)ViewY{
    CGRect frame = CGRectMake(floor(forNum/(_rowNum*2))*screen_width+(forNum-_rowNum*floor((forNum/rowNum)))*screen_width/_rowNum, ViewY, screen_width/_rowNum, 80);
    NSString *title = [_data[forNum] objectForKey:TITLE];
    NSString *imagestr = [_data[forNum] objectForKey:IMAGE];
    ButtonView *btnView = [[ButtonView alloc]initWithFrame:frame title:title imagestr:imagestr];
    btnView.tag = TAG + forNum;
    [_scrollView addSubview:btnView];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(Clicktap:)];
    [btnView addGestureRecognizer:tap];

}

-(void)Clicktap:(UITapGestureRecognizer *)sender{
    [self.delegate Click:sender.view.tag];
}

#pragma mark - UIScrollViewDelegate
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat scrollViewW = scrollView.frame.size.width;
    CGFloat x = scrollView.contentOffset.x;
    int page = (x + scrollViewW/2)/scrollViewW;
    _pageControl.currentPage = page;
}

@end
