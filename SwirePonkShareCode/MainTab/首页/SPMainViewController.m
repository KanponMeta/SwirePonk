//
//  SPMainViewController.m
//  swireponk
//
//  Created by  xupengfei on 2022/2/10.
//

#import "SPMainViewController.h"
#import "SPWelcomeViewController.h"


@interface SPMainViewController ()

@end

@implementation SPMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    firstLabel.text = @"Welcome, my master!!!";
//    UIGestureRecognizer *ges = [[UIGestureRecognizer alloc] initWithTarget:self action:@selector(jumpToWelcome)];
//    [firstLabel addGestureRecognizer:ges];
    [self.view addSubview:firstLabel];

    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 200, 50)];
    btn.backgroundColor = [UIColor greenColor];
    btn.titleLabel.text = @"欢迎";
    [btn addTarget:self action:@selector(jumpToWelcome) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    [UIColor colorWithHex:0xBC9765];
}

- (void)jumpToWelcome {
    SPWelcomeViewController *welcomeViewController = [[SPWelcomeViewController alloc] init];
    
    [self.navigationController pushViewController:welcomeViewController animated:YES];
}

@end
