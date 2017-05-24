//
//  LViewController.m
//  iaskYi
//
//  Created by chksong on 2016/12/10.
//  Copyright © 2016年 chksong company. All rights reserved.
//

#import "LViewController.h"

@interface LViewController ()<UIGestureRecognizerDelegate>

@end

@implementation LViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIPanGestureRecognizer *dragGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(dragHideAction:)];
    dragGesture.delegate = self ;
    [self.view addGestureRecognizer:dragGesture];
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

-(void) dragHideAction:(UIPanGestureRecognizer*) pan  {
    CGPoint point = [pan translationInView:pan.view] ;
    
    if (pan.state == UIGestureRecognizerStateCancelled || pan.state == UIGestureRecognizerStateEnded) {
        if(pan.view.x >= - mainScreenWidth *1 /5) {
            
            [UIView animateWithDuration:USERCENTERTIMER delay:0 options:KEYANIMATEOPTION animations:^{
                pan.view.transform = CGAffineTransformMakeTranslation(mainScreenWidth, 0) ;
            } completion:nil] ;
        }
        else {
            [UIView animateWithDuration:USERCENTERTIMER delay:0 options:KEYANIMATEOPTION animations:^{
                pan.view.transform = CGAffineTransformIdentity ;

            } completion:nil ];
        }
    }
    else { // 正在拖拽
        pan.view.transform = CGAffineTransformTranslate(pan.view.transform, point.x, 0) ;
        [pan setTranslation:CGPointZero inView:pan.view];
        if (pan.view.x >= 0) {
            pan.view.transform = CGAffineTransformMakeTranslation(mainScreenWidth, 0) ;
        }
        else  if (pan.view.x <= -mainScreenWidth) {
            pan.view.transform = CGAffineTransformIdentity ;
        }
        
       //CGFloat alphaValue = (mainScreenWidth + pan.view.x) / mainScreenWidth * BLURALPHFULLVALUE ;
        // [self letDelegateDo:2 blurAlpha:alphaValue];
    }
}



@end

