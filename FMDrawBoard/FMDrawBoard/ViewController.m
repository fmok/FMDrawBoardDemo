//
//  ViewController.m
//  FMDrawBoard
//
//  Created by fm on 16/12/2.
//  Copyright © 2016年 wangjiuyin. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "FMDrawBoarderView.h"

#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self

@interface ViewController ()

@property (nonatomic, strong) UIButton *startBtn;
@property (nonatomic, strong) FMDrawBoarderView *drawBoardView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    WS(weakSelf);
    [self.view addSubview:self.startBtn];
    [self.startBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(weakSelf.view);
        make.size.mas_equalTo(CGSizeMake(80.f, 44.f));
    }];
}

#pragma mark - Events
- (void)startAction:(id)sender
{
    _drawBoardView = [[FMDrawBoarderView alloc] init];
    [_drawBoardView show];
}

#pragma mark - getter & setter
- (UIButton *)startBtn
{
    if (!_startBtn) {
        _startBtn = [[UIButton alloc] initWithFrame:CGRectZero];
        _startBtn.backgroundColor = [UIColor yellowColor];
        _startBtn.layer.cornerRadius = 10.f;
        _startBtn.clipsToBounds = YES;
        [_startBtn setTitle:@"start" forState:UIControlStateNormal];
        [_startBtn setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
        [_startBtn addTarget:self action:@selector(startAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _startBtn;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
