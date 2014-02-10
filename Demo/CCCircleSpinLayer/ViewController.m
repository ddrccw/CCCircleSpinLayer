//
//  ViewController.m
//  CCCircleSpinLayer
//
//  Created by user on 14-2-10.
//  Copyright (c) 2014年 ddrccw. All rights reserved.
//

#import "ViewController.h"
#import "CCCircleSpinLayer.h"

@interface ViewController ()
@property (nonatomic, strong) CCCircleSpinLayer *sp;
@property (nonatomic, assign) float lastValue;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.sp = [[CCCircleSpinLayer alloc] initWithFrame:CGRectMake(0, 0, 80, 80)
                                                 color:[UIColor whiteColor]
                                              animated:NO];
    [self.view.layer addSublayer:self.sp];
    self.sp.position = self.view.center;
    self.view.backgroundColor = [UIColor colorWithCGColor:self.sp.backgroundColor];
    self.slider.value = 0;
    [self.slider addTarget:self action:@selector(change:) forControlEvents:UIControlEventValueChanged];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)change:(UISlider *)aSlider {
    if (self.lastValue < aSlider.value) {
        [self.sp showInProgress:aSlider.value];
    }
    else {
        [self.sp showInProgress:-aSlider.value];
    }
    self.lastValue = aSlider.value;
}
@end
