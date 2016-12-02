//
//  FMMyDrawer.h
//  FMDrawBoard
//
//  Created by fm on 16/12/2.
//  Copyright © 2016年 wangjiuyin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FMMyDrawer : UIView

@property (nonatomic, assign) CGFloat width;

/**
 *  撤销的线条数组
 */
@property (nonatomic, strong)NSMutableArray *canceledLines;
/**
 *  线条数组
 */
@property (nonatomic, strong)NSMutableArray *lines;

/**
 *  清屏
 */
- (void)clearScreen;

/**
 *  撤销
 */
- (void)undo;

/**
 *  恢复
 */
- (void)redo;

@end
