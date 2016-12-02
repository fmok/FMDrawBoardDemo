//
//  FMDrawBoarderView.h
//  FMDrawBoard
//
//  Created by fm on 16/12/2.
//  Copyright © 2016年 wangjiuyin. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^draftInfoBlock)(NSInteger num, NSArray * linesInfo, NSArray * canceledLinesInfo);

@interface FMDrawBoarderView : UIView

@property (nonatomic, strong) NSIndexPath *index;
@property (nonatomic, assign) NSInteger num;
@property (nonatomic, strong) NSArray * linesInfo;
@property (nonatomic, strong) NSArray * canceledLinesInfo;
@property (nonatomic, copy) draftInfoBlock draftInfoBlock;

- (void)show;

- (void)dismiss;

@end
