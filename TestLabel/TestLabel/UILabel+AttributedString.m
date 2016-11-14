//
//  UILabel+AttributedString.m
//  Testee
//
//  Created by xuliying on 16/11/14.
//  Copyright © 2016年 xly. All rights reserved.
//

#import "UILabel+AttributedString.h"
#import "NSMutableAttributedString+Addtion.h"
#import "NSObject+Addition.h"
@implementation UILabel (AttributedString)

-(void)setTextColor:(UIColor *)color range:(NSRange)range{
    if (self.attributedText.isNoEmpty && color) {
        NSMutableAttributedString * attStr = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
        [attStr setTextColor:color range:range];
        self.attributedText = attStr;
    }
}
-(void)setTextFont:(UIFont *)font range:(NSRange)range{
    if (self.attributedText.isNoEmpty && font) {
        NSMutableAttributedString * attStr = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
        [attStr setTextFont:font range:range];
        self.attributedText = attStr;
    }
}

-(void)setDesignatedText:(NSString *)text color:(UIColor *)color{
    if (self.attributedText.isNoEmpty && text.isNoEmpty && color) {
        NSMutableAttributedString * attStr = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
        [attStr setDesignatedText:text color:color];
        self.attributedText = attStr;
    }
}
-(void)setDesignatedText:(NSString *)text font:(UIFont *)font{
    if (self.attributedText.isNoEmpty && text.isNoEmpty && font) {
        NSMutableAttributedString * attStr = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
        [attStr setDesignatedText:text font:font];
        self.attributedText = attStr;
    }
}


@end
