//
//  UILabel+Add.m
//  TestLabel
//
//  Created by xuliying on 16/6/29.
//  Copyright © 2016年 xly. All rights reserved.
//

#import "UILabel+Add.h"
#import <objc/runtime.h>

@implementation UILabel (Add)

-(void)setTextColorDict:(NSMutableDictionary *)textColorDict{
    objc_setAssociatedObject(self, @selector(textColorDict), textColorDict, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
-(NSMutableDictionary *)textColorDict{
    return objc_getAssociatedObject(self, _cmd);
}

-(void)setTextFontDict:(NSMutableDictionary *)textFontDict{
    objc_setAssociatedObject(self, @selector(textFontDict), textFontDict, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
-(NSMutableDictionary *)textFontDict{
    return objc_getAssociatedObject(self, _cmd);
}

-(void)setTextColor:(UIColor *)color range:(NSRange)range{
    if (self.textColorDict == nil) {
        self.textColorDict = [NSMutableDictionary dictionary];
    }
    if (color) {
        [self.textColorDict setObject:color forKey:[NSValue valueWithRange:range]];
        [self updateText];
    }
}
-(void)setTextFont:(UIFont *)font range:(NSRange)range{
    if (self.textFontDict == nil) {
        self.textFontDict = [NSMutableDictionary dictionary];
    }
    if (font) {
        [self.textFontDict setObject:font forKey:[NSValue valueWithRange:range]];
        [self updateText];
    }
}

-(void)updateText{
    if (self.textColorDict.allKeys.count == 0 && self.textFontDict.allKeys.count == 0) {
        return;
    }
    if (self.text.length || self.attributedText.length) {
        NSMutableAttributedString *attText;
        if (self.attributedText.length) {
            attText = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
        }else{
            attText = [[NSMutableAttributedString alloc] initWithString:self.text];
        }
        if (self.textColorDict.allKeys.count) {
            for (NSValue *key in self.textColorDict.allKeys) {
                if ([self.textColorDict[key] isKindOfClass:[UIColor class]]) {
                     [attText addAttribute:NSForegroundColorAttributeName value:self.textColorDict[key] range:[key rangeValue]];
                }
            }
        }
        if (self.textFontDict.allKeys.count) {
            for (NSValue *key in self.textFontDict.allKeys) {
                if ([self.textFontDict[key] isKindOfClass:[UIFont class]]) {
                     [attText addAttribute:NSFontAttributeName value:self.textFontDict[key] range:[key rangeValue]];
                }
            }
        }
        self.attributedText = attText;
    }
}
@end
