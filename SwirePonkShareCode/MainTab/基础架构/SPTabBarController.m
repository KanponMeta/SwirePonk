//
//  SPTabBarController.m
//  swireponk
//
//  Created by  xupengfei on 2022/2/11.
//

#import "SPTabBarController.h"
#import "SPMainViewController.h"
#import "SPAccountViewController.h"
#import "SPNavigationController.h"


@interface SPTabBarController ()

@end

@implementation SPTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setupTabBarControllers {
    // 首页
    SPMainViewController *mainViewController = [[SPMainViewController alloc] init];
    SPNavigationController *mainNVC = [[SPNavigationController alloc] initWithRootViewController:mainViewController];
    [self setTabBarController:mainNVC title:@"首页" image:nil selectedImage:nil];
    
    // 账号
    SPAccountViewController *accountViewController = [[SPAccountViewController alloc] init];
    SPNavigationController *accountNVC = [[SPNavigationController alloc] initWithRootViewController:accountViewController];
    [self setTabBarController:accountNVC title:@"我的" image:nil selectedImage:nil];
    
    
    self.viewControllers = @[mainNVC, accountNVC];
}

- (void)setTabBarController:(SPNavigationController *)viewController title:(NSString *)title image:(NSString *)imageStr selectedImage:(NSString *)selectedImageStr {
    viewController.tabBarItem.title = title;
//    viewController.tabBarItem.image = ;
//    viewController.tabBarItem.selectedImage = ;
}

@end
