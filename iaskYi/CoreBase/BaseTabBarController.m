//
//  BaseTabBarController.m
//  iaskYi
//
//  Created by chksong on 2016/12/10.
//  Copyright © 2016年 chksong company. All rights reserved.
//

#import "BaseTabBarController.h"

@interface BaseTabBarController ()

@end

@implementation BaseTabBarController

-(instancetype) init {
    if (self = [super init]) {
        ;
    }
    return self ;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self  addChidWithStoryBoard:@"YiJing" title:@"易经" imageName:@"太极" selectImageName:@""];
    [self  addChidWithStoryBoard:@"YiJing" title:@"先天" imageName:@"先天" selectImageName:@""];
    [self  addChidWithStoryBoard:@"YiJing" title:@"卦图" imageName:@"卦图" selectImageName:@""];
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


-(void) addChidWithStoryBoard:(NSString*)storyBoardName title:(NSString*)title imageName:(NSString*)imageName selectImageName:(NSString*)selectImageName {
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:storyBoardName bundle:nil] ;
    UINavigationController *nav  = [storyBoard instantiateInitialViewController];
    
    UIViewController *childVc =  nav.topViewController ;
    childVc.title = title ;
    
     //设置tabBarItem常规状态文字和图片
    childVc.tabBarItem.image = [UIImage imageNamed:imageName];
    
    [[UITabBar appearance] setTintColor: ColorRGB(33, 100, 255, 1) ];  //ColorRGB(33, 164, 255, 1)
    [UITabBar appearance].unselectedItemTintColor =  ColorRGB(102, 102, 102, 1);
    // [[UITabBar appearance] setBarTintColor: [UIColor redColor] ];
   
    /**
     // Old 方法
    // 分别制定字体的背景色， 以及使用使用的图片
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary] ;
    textAttrs[NSForegroundColorAttributeName] = ColorRGB(102, 102, 102, 1) ;
    textAttrs[NSFontAttributeName]  = [UIFont systemFontOfSize:10] ;
    [childVc.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    childVc.tabBarItem.image = [[UIImage  imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 设置tabBarItem的选中状态文字和颜色
    NSMutableDictionary *selectTextAttrs = [NSMutableDictionary dictionary] ;
    selectTextAttrs[NSForegroundColorAttributeName] = ColorRGB(33, 164, 255, 1);
    [childVc.tabBarItem setTitleTextAttributes:selectTextAttrs forState:UIControlStateSelected];
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
     
    **/
    
     [self addChildViewController:nav];
}

@end
