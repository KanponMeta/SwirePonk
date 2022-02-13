//
//  UIColor+HandleColor.m
//  SwirePonk
//
//  Created by  xupengfei on 2022/2/13.
//

#import "UIColor+HandleColor.h"

@implementation UIColor (HandleColor)

+ (UIColor *)colorWithHexString:(NSString *)colorStr {
    return [UIColor colorWithHexString:colorStr alpha:1.0f];
}

+ (UIColor *)colorWithHexString:(NSString *)colorStr alpha:(CGFloat)alpha {
    
    //移除前缀
    if ([colorStr hasPrefix:@"0X"] || [colorStr hasPrefix:@"0x"]) {
        colorStr = [colorStr substringFromIndex:2];
    }
    
    if ([colorStr hasPrefix:@"#"]) {
        colorStr = [colorStr substringFromIndex:1];
    }
    
    //判断长度
    if (colorStr.length != 6) {
        return [UIColor clearColor];
    }
    //提取值
    NSRange range;
    range.length = 2;
    //r
    range.location = 0;
    NSString *rStr = [colorStr substringWithRange:range];
    //g
    range.location = 2;
    NSString *gStr = [colorStr substringWithRange:range];
    //b
    range.location = 4;
    NSString *bStr = [colorStr substringWithRange:range];
    
    //转换值
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rStr] scanHexInt:&r];
    [[NSScanner scannerWithString:gStr] scanHexInt:&g];
    [[NSScanner scannerWithString:bStr] scanHexInt:&b];
    
    return [UIColor colorWithRed:(r/255.0f) green:(g/255.0f) blue:(b/255.0f) alpha:alpha];
}

+ (UIColor *)colorWithHex:(UInt32)color {
    return [UIColor colorWithHex:color alpha:1.0f];
}

+ (UIColor *)colorWithHex:(UInt32)color alpha:(CGFloat)alpha {
    
    if (color > 0x999999) {
        return nil;
    }
    
    int r = (color >> 16) & 0xFF;
    int g = (color >> 8) & 0xFF;
    int b = (color) & 0xFF;
    
    return [UIColor colorWithRed:r / 255.0f
                           green:g / 255.0f
                            blue:b / 255.0f
                           alpha:alpha];
    
}
@end
