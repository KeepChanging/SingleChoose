//
//  ViewController.m
//  SingleSelection
//
//  Created by Shuai on 16/5/18.
//  Copyright © 2016年 com.ecpss.ddhong. All rights reserved.
//

#import "ViewController.h"
#import "SelectionView.h"
#define kScreenHeight [[UIScreen mainScreen] bounds].size.height
#define kScreenWidth [[UIScreen mainScreen] bounds].size.width
#define WBCSIZE(obj)   ((obj)/375.0f*[UIScreen mainScreen].bounds.size.width)
#define HBCSIZE(obj)   ((obj)/667.0f*[UIScreen mainScreen].bounds.size.height)
@interface ViewController ()
{

    SelectionView *selectView;

}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor grayColor];
    self.navigationItem.title=@"选一个";
    selectView=[[SelectionView alloc] initWithFrame:CGRectMake(0,HBCSIZE(64),kScreenWidth, HBCSIZE(140))];
    [self.view addSubview:selectView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
