
//
//  UIScrollView+TouchEvent.m
//  Wubing
//
//  Created by 李祖建 on 17/4/13.
//  Copyright © 2017年 LittleBitch. All rights reserved.
//

#import "UIScrollView+TouchEvent.h"

@implementation UIScrollView (TouchEvent)

- (BOOL)keyboardTouch
{
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setKeyboardTouch:(BOOL)keyboardTouch
{
    objc_setAssociatedObject(self, @selector(keyboardTouch), @(keyboardTouch), OBJC_ASSOCIATION_ASSIGN);
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    if (self.keyboardTouch) {
        [[self nextResponder] touchesMoved:touches withEvent:event];
        [super touchesBegan:touches withEvent:event];
        [WINDOW endEditing:YES];
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    if (self.keyboardTouch) {
        [[self nextResponder] touchesMoved:touches withEvent:event];
        [super touchesMoved:touches withEvent:event];
    }
    
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    
    if (self.keyboardTouch) {
        [[self nextResponder] touchesMoved:touches withEvent:event];
        [super touchesEnded:touches withEvent:event];
    }
}


@end
