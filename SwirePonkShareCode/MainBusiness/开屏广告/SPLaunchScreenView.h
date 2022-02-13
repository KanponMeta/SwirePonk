//
//  SPLaunchScreenView.h
//  SwirePonk
//
//  Created by  xupengfei on 2022/2/13.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

static NSString *const adImageName = @"adImageName";
static NSString *const adUrl = @"adImageUrl";
static NSString *const adDeadline = @"adDeadline";

@interface SPLaunchScreenView : UIView

/** 显示广告页面方法*/
- (void)showSplashScreenWithTime:(NSInteger )ADShowTime;

/** 广告图的显示时间*/
@property (nonatomic, assign) NSInteger ADShowTime;

/** 图片路径*/
@property (nonatomic, copy) NSString *imgFilePath;

/** 图片对应的url地址*/
@property (nonatomic, copy) NSString *imgLinkUrl;

/** 广告图的有效时间*/
@property (nonatomic, copy) NSString *imgDeadline;

@end

NS_ASSUME_NONNULL_END
