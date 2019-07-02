//
//  ViewController.m
//  Chained
//
//  Created by 飞渡 on 2019/7/1.
//  Copyright © 2019 freedo. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+Chained.h"
#import "UIView+Chained.h"
#import "UIButton+Chained.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *newView = [[UIView alloc] init];
    newView.frame = CGRectMake(100, 100, 100, 100);
    newView.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:newView];

    // Do any additional setup after loading the view.
}


@end
