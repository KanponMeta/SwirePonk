//
//  DebugViewController.m
//  SwirePonk
//
//  Created by  xupengfei on 2022/2/12.
//

#import "DebugViewController.h"
#import <FLEX/FLEXManager.h>

@interface DebugViewController ()

@end

@implementation DebugViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *flex = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, 50, 50)];
    [flex setTitle:@"FLEX" forState:UIControlStateNormal];
    flex.backgroundColor = [UIColor redColor];
    [flex addTarget:self action:@selector(showFLEXTool) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:flex];
    
    // Do any additional setup after loading the view.
}

- (void)showFLEXTool {
#ifdef DEBUG
    
    [[FLEXManager sharedManager] showExplorer];
#endif
}

@end
