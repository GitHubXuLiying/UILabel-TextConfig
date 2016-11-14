//
//  UILabel+AttributedString.h
//  Testee
//
//  Created by xuliying on 16/11/14.
//  Copyright © 2016年 xly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (AttributedString)

-(void)setTextColor:(UIColor *)color range:(NSRange)range;
-(void)setTextFont:(UIFont *)font range:(NSRange)range;

-(void)setDesignatedText:(NSString *)text color:(UIColor *)color;
-(void)setDesignatedText:(NSString *)text font:(UIFont *)font;

@end
