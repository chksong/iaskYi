//
//  YiJingViewController.m
//  iaskYi
//
//  Created by chksong on 2016/12/11.
//  Copyright © 2016年 chksong company. All rights reserved.
//

#import "YiJingViewController.h"

@interface YiJingViewController ()

@end

@implementation YiJingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)testBtn:(id)sender {
    NSArray *windows =  [UIApplication sharedApplication].windows  ;
    
   
    for(UIWindow *window in [windows reverseObjectEnumerator])  {
        NSLog(@"%@" , window) ;

    }
}

@end
