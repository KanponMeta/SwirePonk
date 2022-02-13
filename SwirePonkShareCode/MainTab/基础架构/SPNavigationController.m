//
//  SPNavigationController.m
//  swireponk
//
//  Created by  xupengfei on 2022/2/11.
//

#import "SPNavigationController.h"

@interface SPNavigationController ()

@end

@implementation SPNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (instancetype)initWithRootViewController:(UIViewController *)rootViewController {
    rootViewController.hidesBottomBarWhenPushed = NO;
    return [super initWithRootViewController:rootViewController];
}


@end
