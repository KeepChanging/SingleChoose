//
//  SelectionView.m
//  SingleSelection
//
//  Created by Shuai on 16/5/18.
//  Copyright © 2016年 com.ecpss.ddhong. All rights reserved.
//

#import "SelectionView.h"
#define kNavH 44
#define kStatusH 20
#define kScreenHeight [[UIScreen mainScreen] bounds].size.height
#define kScreenWidth [[UIScreen mainScreen] bounds].size.width

//#define kFont(x) [UIFont fontWithName:@"FZLTXHK" size:x]//自定义font大小
#define sysFont(x) [UIFont systemFontOfSize:x]
#define BoldFont(x) [UIFont boldSystemFontOfSize:x]
#define W(obj)   (!obj?0:(obj).frame.size.width)
#define H(obj)   (!obj?0:(obj).frame.size.height)
#define X(obj)   (!obj?0:(obj).frame.origin.x)
#define Y(obj)   (!obj?0:(obj).frame.origin.y)
#define XW(obj) (X(obj)+W(obj))
#define YH(obj) (Y(obj)+H(obj))
#define WBCSIZE(obj)   ((obj)/375.0f*[UIScreen mainScreen].bounds.size.width)
#define HBCSIZE(obj)   ((obj)/667.0f*[UIScreen mainScreen].bounds.size.height)


@implementation SelectionView
-(instancetype)initWithFrame:(CGRect)frame
{
    if(self=[super initWithFrame:frame]){
        [self customViews];
    }
    
    return self;
}

-(void)customViews{
    
    CGFloat topPadding=HBCSIZE(30);
    CGFloat leftPadding=WBCSIZE(50);
    CGFloat labelWidth=kScreenWidth-2*leftPadding;
    CGFloat labelHeight=HBCSIZE(40);
    _firstLabel=[UIButton buttonWithType:UIButtonTypeSystem];
    _firstLabel.frame=CGRectMake(leftPadding, topPadding, labelWidth, labelHeight);
    [_firstLabel setTitle:@"年利率10%~~15%" forState:UIControlStateNormal];
    _firstLabel.titleLabel.font=[UIFont systemFontOfSize:14];
    [_firstLabel setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _firstLabel.backgroundColor=[UIColor greenColor];
    
    [_firstLabel addTarget:self action:@selector(selectOne:) forControlEvents:UIControlEventTouchUpInside];
    _firstLabel.tag=100;
    [self addSubview:_firstLabel];
    
    _secondLabel=[UIButton buttonWithType:UIButtonTypeSystem];
    _secondLabel.frame=CGRectMake(leftPadding, CGRectGetMaxY(_firstLabel.frame)+HBCSIZE(30), labelWidth, labelHeight);
    [_secondLabel setTitle:@"年利率15%~~20%" forState:UIControlStateNormal];
    _secondLabel.titleLabel.font=[UIFont systemFontOfSize:14];
    [_secondLabel setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _secondLabel.backgroundColor=[UIColor greenColor];
    [_secondLabel addTarget:self action:@selector(selectOne:) forControlEvents:UIControlEventTouchUpInside];
    _secondLabel.tag=101;
    [self addSubview:_secondLabel];
}
-(void)selectOne:(UIButton *)button
{
    
    switch (button.tag) {
        case 100:
        {
            _firstFlag=!_firstFlag;
            if(_secondFlag==1)
            {
                _secondFlag=0;
                _secondLabel.backgroundColor=[UIColor greenColor];
                [_secondLabel setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
                
            }
            if(_firstFlag==1)
            {
                _firstLabel.backgroundColor=[UIColor orangeColor];
                [_firstLabel setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                
            }
            else{
                
                _firstLabel.backgroundColor=[UIColor greenColor];
                [_firstLabel setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            }
            
            
        }
            break;
            
        case 101:
        {
            _secondFlag=!_secondFlag;
            if(_firstFlag==1)
            {
                _firstFlag=0;
                _firstLabel.backgroundColor=[UIColor greenColor];
                [_firstLabel setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
                
            }
            if(_secondFlag==1)
            {
                _secondLabel.backgroundColor=[UIColor orangeColor];
                [_secondLabel setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                
            }
            else{
                
                _secondLabel.backgroundColor=[UIColor greenColor];
                [_secondLabel setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            }
            
            
        }
            break;
            
        default:
            break;
    }
    
    
    
    
}








/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end
