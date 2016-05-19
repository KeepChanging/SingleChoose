//
//  SelectionView.h
//  SingleSelection
//
//  Created by Shuai on 16/5/18.
//  Copyright © 2016年 com.ecpss.ddhong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectionView : UIView
@property(nonatomic,assign)NSInteger firstFlag;
@property(nonatomic,assign)NSInteger secondFlag;
@property(nonatomic,strong)UIButton *firstLabel;
@property(nonatomic,strong)UIButton *secondLabel;
@end
