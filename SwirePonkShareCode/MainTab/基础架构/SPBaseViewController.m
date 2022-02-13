//
//  SPBaseViewController.m
//  swireponk
//
//  Created by  xupengfei on 2022/2/11.
//

#import "SPBaseViewController.h"

@interface SPBaseViewController ()

@end

@implementation SPBaseViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        self.hidesBottomBarWhenPushed = YES;
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // viewcontroller中的view不会遮挡导航栏
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.navigationController.navigationBar.translucent = NO;
    
    // view中的subview不超过view
    self.view.clipsToBounds = YES;
    
    //navigation标题文字颜色
    NSDictionary *barTitleTextAttributes = @{NSFontAttributeName:[UIFont systemFontOfSize:18], NSForegroundColorAttributeName:[UIColor blackColor]};
    
    UINavigationBarAppearance *appearance = [[UINavigationBarAppearance alloc] init];
    appearance.backgroundColor = SPGlobalColor;
    appearance.shadowImage = [[UIImage alloc] init];
    appearance.titleTextAttributes = barTitleTextAttributes;
    appearance.shadowColor=nil;//分割线去除
    self.navigationController.navigationBar.standardAppearance = appearance;
    self.navigationController.navigationBar.scrollEdgeAppearance = appearance;
    
}

/// 设置默认的NavigationBar
- (void)setSPBaseNavigationBar {
    
}

@end
