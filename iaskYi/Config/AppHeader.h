//
//  AppHeader.h
//  iaskYi
//
//  Created by chksong on 2016/12/10.
//  Copyright © 2016年 chksong company. All rights reserved.
//

#ifndef AppHeader_h
#define AppHeader_h


// weakSelf
#define CW_WEAKSELF  __weak typeof(self) weakSelf = self


#define KkeyWindow      [UIApplication sharedApplication].keyWindow
#define KAppDelegate    (AppDelegate*)[UIApplication sharedApplication].delegate

// 屏幕宽高
#define mainScreenWidth [UIScreen mainScreen].bounds.size.width
#define mainScreenHeight [UIScreen mainScreen].bounds.size.height

//UI 输出的字体大小单位为像素（px），需要转化ios字体单位磅（pt）,
//由于UI 给的是5s的分辨率，所以4s,5s,6s，这些对应不用变,6plus 因为scale为3 ,相应乘上1.5
#define ScreenScale 2
#define FontPxToPt(px) (float)((px/2.0)*(ScreenScale/2.0))
#define HeightPXToPt(px) (float)((px/2.0)*(ScreenScale/2.0))


//系统版本
#define IOS_VERSION_X_OR_ABOVE(X) (([[[UIDevice currentDevice] systemVersion] floatValue] >= X)? (YES):(NO))
// 颜色
#define ColorRGB(r,g,b,a) [UIColor colorWithRed:(r/255.0) green:(g/255.0) blue:(b/255.0) alpha:a]

// 颜色 16进制
#define UIHexColor(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define NavigationBar_HEIGHT 44
#define StatusBar_HEIGHT 20


#define defaultBackCorlor  0xf1f5f6
//tableView背景颜色
#define bgColor   ColorRGB(236,244,244,1)


#define USERCENTERTIMER 0.3     //animate duration
#define BLURALPHFULLVALUE 0.5       // full alpha for blurView
#define KEYANIMATEOPTION UIViewAnimationOptionCurveEaseIn   // userCenter animation option




#endif /* AppHeader_h */
