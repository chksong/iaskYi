//
//  MainViewController.m
//  iaskYi
//
//  Created by chksong on 2016/12/10.
//  Copyright © 2016年 chksong company. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initUI];
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

-(void) viewWillAppear:(BOOL)animated {
    //self.navigationController.toolbarHidden = YES ;
}

-(void) viewWillDisappear:(BOOL)animated {
   // self.navigationController.toolbarHidden = NO ;
}



-(void) initUI {
    self.navigationItem.title = @"XXX" ;
    
    self.view.backgroundColor = [UIColor blackColor] ;
}

@end
