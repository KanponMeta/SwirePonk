//
//  SPAccountViewController.m
//  swireponk
//
//  Created by  xupengfei on 2022/2/11.
//

#import "SPAccountViewController.h"
#import "DebugViewController.h"

@interface SPAccountViewController ()

@end

@implementation SPAccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *welcomeLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, kScreenWidth, 50)];
    welcomeLabel.text = @"这是Debug";
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(jumpToDebug)];
    [welcomeLabel addGestureRecognizer:tap];
    welcomeLabel.userInteractionEnabled = YES;
    [self.view addSubview:welcomeLabel];
    
    
    UIButton *btn = [[UIButton alloc] init];
    [self.view addSubview:btn];
    
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(welcomeLabel.mas_bottom);
        make.left.mas_equalTo(self.view);
        make.height.mas_equalTo(30);
        make.width.mas_equalTo(40);
    }];
    
    btn.titleLabel.text = @"request";
    btn.titleLabel.textColor = [UIColor redColor];
    btn.backgroundColor = [UIColor greenColor];
    [btn addTarget:self action:@selector(requestData) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)jumpToDebug {
    DebugViewController *debugViewController = [[DebugViewController alloc] init];
    [self.navigationController pushViewController:debugViewController animated:YES];
}

- (void)requestData {
    NSString *url = @"https://eq.10jqka.com.cn/fundNews/Public/api.php?con=news&act=query&type=1";
    NSDictionary *params = @{@"flag":@(1),
                             @"page":@(1)};
    
    [[SPDataCenter shareCenter] sendPostUrl:url params:params success:^(NSDictionary * _Nullable data, BOOL isDictionary) {
        NSLog(@"success");
        } fail:^(NSError * _Nonnull error) {
        NSLog(@"fail");
        }];
    
}

@end
