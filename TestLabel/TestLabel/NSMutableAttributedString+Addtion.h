//
//  NSMutableAttributedString+Addtion.h
//  NSMutableAttributedString
//
//  Created by xuliying on 16/3/1.
//  Copyright © 2016年 xly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#define range(a,b) [NSValue valueWithRange:NSMakeRange(a, b)]

@interface NSMutableAttributedString (Addtion)
-(NSMutableAttributedString *)addAttributesWithArray:(NSArray *)attrs;
-(void)setTextColor:(UIColor *)color range:(NSRange)range;
-(void)setTextFont:(UIFont *)font range:(NSRange)range;

-(void)setDesignatedText:(NSString *)text color:(UIColor *)color;
-(void)setDesignatedText:(NSString *)text font:(UIFont *)font;

-(void)setDesignatedTexts:(NSArray *)array color:(UIColor *)color;
-(void)setDesignatedTexts:(NSArray *)array font:(UIFont *)font;
@end
