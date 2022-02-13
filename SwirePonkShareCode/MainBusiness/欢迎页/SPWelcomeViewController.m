//
//  SPWelcomeViewController.m
//  swireponk
//
//  Created by  xupengfei on 2022/2/12.
//

#import "SPWelcomeViewController.h"

@interface SPWelcomeViewController ()

@end

@implementation SPWelcomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView *mainView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
    mainView.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:mainView];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
