//
//  CCCircleSpinLayer.h
//  Edu901
//
//  Created by user on 14-1-20.
//  Copyright (c) 2014年 admin. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface CCCircleSpinLayer : CALayer

- (instancetype)initWithFrame:(CGRect)frame color:(UIColor*)color animated:(BOOL)animated;
- (void)showInProgress:(CGFloat)progress; //positive-show, negative-hide
@end
