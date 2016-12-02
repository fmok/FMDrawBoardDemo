//
//  FMPaintPath.m
//  FMDrawBoard
//
//  Created by fm on 16/12/2.
//  Copyright © 2016年 wangjiuyin. All rights reserved.
//

#import "FMPaintPath.h"

@implementation FMPaintPath

+ (instancetype)paintPathWithLineWidth:(CGFloat)width startPoint:(CGPoint)startP {
    
    FMPaintPath * path = [[self alloc] init];
    path.lineWidth = width;
    path.lineCapStyle = kCGLineCapRound; //线条拐角
    path.lineJoinStyle = kCGLineCapRound; //终点处理
    [path moveToPoint:startP];
    return path;
}

@end
