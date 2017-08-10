//
//  UIScrollView+TouchEvent.h
//  Wubing
//
//  Created by 李祖建 on 17/4/13.
//  Copyright © 2017年 LittleBitch. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

#define WINDOW ((AppDelegate *)[UIApplication sharedApplication].delegate).window//window

@interface UIScrollView (TouchEvent)

@property (assign, nonatomic) BOOL keyboardTouch;

@end
