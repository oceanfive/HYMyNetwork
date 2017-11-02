//
//  ViewController.m
//  HYMyNetwork
//
//  Created by ocean on 2017/11/2.
//  Copyright © 2017年 ocean. All rights reserved.
//

#import "ViewController.h"
#import "HYNetworkReachabilityManager.h"
#import "HYNetworkTool.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self testNetworkStatus];
}

- (void)testNetworkStatus {
    [[HYNetworkReachabilityManager sharedManager] startMonitoring];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"---------");
        NSLog(@"%lu", (unsigned long)[HYNetworkReachabilityManager sharedManager].currentNetworkStatus);
        NSLog(@"%@", [HYNetworkReachabilityManager sharedManager].currentNetworkStatusString);
        
    });
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
