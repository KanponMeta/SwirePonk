//
//  AppDelegate.m
//  swireponk
//
//  Created by  xupengfei on 2022/2/10.
//

#import "AppDelegate.h"
#import "SPTabBarController.h"
#import "SPLaunchScreenManager.h"
#import "SPLaunchScreenView.h"

@interface AppDelegate ()

@property (nonatomic, strong)SPTabBarController *tabBarController;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [self setLaunchScreen];
    
    [self initUI];
    
    return YES;
}


#pragma mark -- UI
- (void)initUI {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    self.tabBarController = [[SPTabBarController alloc] init];
    [self.tabBarController setupTabBarControllers];
    self.window.rootViewController = self.tabBarController;
}

- (void)setLaunchScreen {
    // 启动页停留1秒
    [NSThread sleepForTimeInterval:1];
    
    // 判断沙盒中是否存在广告图片
    NSString *filePath = [SPLaunchScreenManager getFilePathWithImageName:[[NSUserDefaults standardUserDefaults] valueForKey:adImageName]];

    BOOL isExist = [SPLaunchScreenManager isFileExistWithFilePath:filePath];
    NSLog(@"%hhd  %@ %@",isExist,[[NSUserDefaults standardUserDefaults] valueForKey:adDeadline],filePath);
    if (isExist) {
        // 图片存在
        SPLaunchScreenView *advertiseView = [[SPLaunchScreenView alloc] initWithFrame:self.window.bounds];
        advertiseView.imgFilePath = filePath;
        advertiseView.imgLinkUrl = [[NSUserDefaults standardUserDefaults] valueForKey:adUrl];
        advertiseView.imgDeadline = [[NSUserDefaults standardUserDefaults] valueForKey:adDeadline];
        // 设置广告页显示的时间
        [advertiseView showSplashScreenWithTime:3];
    }

    // 无论沙盒中是否存在广告图片，都需要重新调用广告接口，判断广告是否更新
    [SPLaunchScreenManager getAdvertisingImageData];

}
@end
