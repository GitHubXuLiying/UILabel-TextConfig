//
//  UILabel+AttributedString.h
//  Testee
//
//  Created by xuliying on 16/11/14.
//  Copyright © 2016年 xly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (AttributedString)

-(void)set_TextColor:(UIColor *)color range:(NSRange)range;
-(void)set_TextFont:(UIFont *)font range:(NSRange)range;

-(void)set_DesignatedText:(NSString *)text color:(UIColor *)color;
-(void)set_DesignatedText:(NSString *)text font:(UIFont *)font;

-(void)set_DesignatedTexts:(NSArray *)array color:(UIColor *)color;
-(void)set_DesignatedTexts:(NSArray *)array font:(UIFont *)font;

@end
