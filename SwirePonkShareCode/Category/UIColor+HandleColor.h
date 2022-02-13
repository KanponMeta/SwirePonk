//
//  UIColor+HandleColor.h
//  SwirePonk
//
//  Created by  xupengfei on 2022/2/13.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (HandleColor)

+ (UIColor *)colorWithHexString:(NSString *)colorStr;

+ (UIColor *)colorWithHexString:(NSString *)colorStr alpha:(CGFloat)alpha;

+ (UIColor *)colorWithHex:(UInt32)color;

+ (UIColor *)colorWithHex:(UInt32)color alpha:(CGFloat)alpha;

@end

NS_ASSUME_NONNULL_END
