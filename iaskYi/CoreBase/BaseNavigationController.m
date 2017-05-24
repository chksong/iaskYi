//
//  BaseNavigationController.m
//  iaskYi
//
//  Created by chksong on 2016/12/10.
//  Copyright © 2016年 chksong company. All rights reserved.
//

#import "BaseNavigationController.h"

@interface BaseNavigationController ()

@end

@implementation BaseNavigationController

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

+(void) initialize {
    [self setupNavgationBarThem] ;
    [self setBarButtionItemThem] ;
}


+(void) setupNavgationBarThem {
    UINavigationBar *appearance = [UINavigationBar appearance] ;
    appearance.barTintColor = [UIColor whiteColor] ;
    
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary] ;
    textAttrs[NSForegroundColorAttributeName] = [UIColor blackColor] ;
    textAttrs[NSFontAttributeName] = [UIFont boldSystemFontOfSize:17] ;
    
    [appearance setTitleTextAttributes:textAttrs];
}


+(void) setBarButtionItemThem {
    UIBarButtonItem *appearance = [UIBarButtonItem appearance] ;
    
    /**设置文字属性**/
    // 设置普通状态的文字属性
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary] ;
    textAttrs[NSForegroundColorAttributeName] = [UIColor blackColor] ;
    textAttrs[NSFontAttributeName] = [UIFont boldSystemFontOfSize:17] ;
    [appearance setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    
    // 设置高亮状态的文字属性
    NSMutableDictionary *hightTextAttrs = [NSMutableDictionary dictionaryWithDictionary:textAttrs] ;
    hightTextAttrs[NSForegroundColorAttributeName] = [UIColor redColor] ;
    [appearance setTitleTextAttributes:hightTextAttrs forState:UIControlStateHighlighted];
    
     // 设置不可用状态(disable)的文字属性
    NSMutableDictionary *disabeTextAttrs = [NSMutableDictionary dictionaryWithDictionary:textAttrs] ;
    disabeTextAttrs[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    [appearance setTitleTextAttributes:disabeTextAttrs forState:UIControlStateDisabled];
}

@end
