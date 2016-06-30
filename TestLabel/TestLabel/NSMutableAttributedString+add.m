


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
    if (self.length > 0 && color && [color isKindOfClass:[UIColor class]] && self.length >= NSMaxRange(range)) {
        [self addAttribute:NSForegroundColorAttributeName value:color range:range];
    }
}
-(void)setTextFont:(UIFont *)font range:(NSRange)range{
    if (self.length > 0 && font && [font isKindOfClass:[UIFont class]] && self.length >= NSMaxRange(range)) {
        [self addAttribute:NSFontAttributeName value:font range:range];
    }
}
@end
