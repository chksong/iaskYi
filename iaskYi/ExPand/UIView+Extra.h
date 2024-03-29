//
//  UIView+Extra.h
//  iaskYi
//
//  Created by chksong on 2016/12/10.
//  Copyright © 2016年 chksong company. All rights reserved.
//

#import <UIKit/UIKit.h>

#define vAlertTag    10086

@interface UIView (Extra)



@property (nonatomic, assign) CGFloat   x;

@property (nonatomic, assign) CGFloat   y;

@property (nonatomic, assign) CGFloat   width;

@property (nonatomic, assign) CGFloat   height;

@property (nonatomic, assign) CGPoint   origin;

@property (nonatomic, assign) CGSize    size;

@property (nonatomic, assign) CGFloat   bottom;

@property (nonatomic, assign) CGFloat   right;

@property (nonatomic, assign) CGFloat   centerX;

@property (nonatomic, assign) CGFloat   centerY;

@property (nonatomic, strong, readonly) UIView *lastSubviewOnX;

@property (nonatomic, strong, readonly) UIView *lastSubviewOnY;


/**
 * @brief 移除此view上的所有子视图
 */
- (void)removeAllSubviews;


/**
 @brief 弹窗
 @param title 弹窗标题
 message 弹窗信息
 */
+ (void) showAlertView: (NSString*) title andMessage: (NSString *) message;


/**
 *  弹窗
 *
 *  @param title    弹窗标题
 *  @param message  弹窗信息
 *  @param delegate 弹窗代理
 */
+ (void) showAlertView: (NSString*) title
            andMessage: (NSString *) message
          withDelegate: (UIViewController<UIAlertViewDelegate> *) delegate;

@end
