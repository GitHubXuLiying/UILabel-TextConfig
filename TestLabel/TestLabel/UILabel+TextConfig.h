//
//  UILabel+TextConfig.h
//  TestLabel
//
//  Created by xuliying on 16/6/29.
//  Copyright © 2016年 xly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (TextConfig)

//1.
@property(nonatomic,strong) NSMutableDictionary *textColorDict; //@{range:color}
@property(nonatomic,strong) NSMutableDictionary *textFontDict;  //@{range:font}
-(void)updateText;//首先设置text或者attributedText

//2.//首先设置text或者attributedText
-(void)setTextColor:(UIColor *)color range:(NSRange)range;
-(void)setTextFont:(UIFont *)font range:(NSRange)range;

@end
