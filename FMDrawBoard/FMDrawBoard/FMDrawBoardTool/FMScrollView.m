//
//  FMSCrollView.m
//  FMDrawBoard
//
//  Created by fm on 16/12/2.
//  Copyright © 2016年 wangjiuyin. All rights reserved.
//

#import "FMScrollView.h"

@implementation FMScrollView

- (BOOL)touchesShouldBegin:(NSSet *)touches withEvent:(UIEvent *)event inContentView:(UIView *)view
{
    if ([event allTouches].count == 1) {
        return YES;
    }
    return NO;
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
