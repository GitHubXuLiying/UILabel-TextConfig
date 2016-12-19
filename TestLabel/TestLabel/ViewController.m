//
//  ViewController.m
//  TestLabel
//
//  Created by xuliying on 16/6/29.
//  Copyright © 2016年 xly. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+AttributedString.h"
#import "NSMutableAttributedString+Addtion.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    UILabel *lab = [[UILabel alloc] init];
    lab.frame = CGRectMake(100, 100, 100, 200);
    lab.text = @"11+1.23%";
    [self.view addSubview:lab];
    lab.backgroundColor = [UIColor whiteColor];
    


    
    [lab set_TextColor:[UIColor redColor] range:NSMakeRange(0, 2)];
    [lab set_TextColor:[UIColor blueColor] range:NSMakeRange(3, lab.text.length - 3)];
    [lab set_TextFont:[UIFont systemFontOfSize:30] range:NSMakeRange(3, lab.text.length - 3)];
    [lab set_TextFont:[UIFont systemFontOfSize:15] range:NSMakeRange(0, 2)];
    [lab set_TextFont:[UIFont systemFontOfSize:10] range:NSMakeRange(lab.text.length - 1, 1)];
    [lab set_TextColor:[UIColor redColor] range:NSMakeRange(lab.text.length - 1, 1)];
    
    [lab set_DesignatedText:@"+" color:[UIColor greenColor]];

    [lab sizeToFit];
    

    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
