//
//  NSMutableAttributedString+add.h
//  TestLabel
//
//  Created by xuliying on 16/6/30.
//  Copyright © 2016年 xly. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface NSMutableAttributedString (add)
-(void)setTextColor:(UIColor *)color range:(NSRange)range;
-(void)setTextFont:(UIFont *)font range:(NSRange)range;
@end
