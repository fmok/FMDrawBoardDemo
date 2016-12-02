//
//  FMPaintPath.h
//  FMDrawBoard
//
//  Created by fm on 16/12/2.
//  Copyright © 2016年 wangjiuyin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FMPaintPath : UIBezierPath

+ (instancetype)paintPathWithLineWidth:(CGFloat)width startPoint:(CGPoint)startP;

@end
