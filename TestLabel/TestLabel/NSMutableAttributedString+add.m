


//
//  NSMutableAttributedString+add.m
//  TestLabel
//
//  Created by xuliying on 16/6/30.
//  Copyright © 2016年 xly. All rights reserved.
//

#import "NSMutableAttributedString+add.h"

@implementation NSMutableAttributedString (add)
-(void)setTextColor:(UIColor *)color range:(NSRange)range{
    if (self.length > 0 && color && [color isKindOfClass:[UIColor class]] && self.length >= NSMaxRange(range) && NSMaxRange(range) > 0) {
        [self addAttribute:NSForegroundColorAttributeName value:color range:range];
    }
}
-(void)setTextFont:(UIFont *)font range:(NSRange)range{
    if (self.length > 0 && font && [font isKindOfClass:[UIFont class]] && self.length >= NSMaxRange(range) && NSMaxRange(range) > 0) {
        [self addAttribute:NSFontAttributeName value:font range:range];
    }
}

-(void)setDesignatedText:(NSString *)text font:(UIFont *)font{
    if (self.length > 0 && text.length && font) {
        NSRange range = [self.string rangeOfString:text];
        if (range.length > 0) {
            [self addAttribute:NSFontAttributeName value:font range:range];
        }
    }
}
-(void)setDesignatedText:(NSString *)text color:(UIColor *)color{
    if (self.length > 0 && text.length && color) {
        NSRange range = [self.string rangeOfString:text];
        if (range.length > 0) {
            [self addAttribute:NSForegroundColorAttributeName value:color range:range];
        }
    }
}
@end
