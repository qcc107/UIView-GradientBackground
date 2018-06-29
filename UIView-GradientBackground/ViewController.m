//
//  ViewController.m
//  UIView-GradientBackground
//
//  Created by changcun on 2018/6/29.
//  Copyright © 2018 com.qcc. All rights reserved.
//

#import "ViewController.h"
#import "UIView+GradientBackground.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;
@property (weak, nonatomic) IBOutlet UIView *view3;
@property (weak, nonatomic) IBOutlet UIView *view4;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.


    [self.view1 cb_gradientBackgroundFromPoint:CGPointMake(0, 0) toPoint:CGPointMake(1, 1) fromColor:[UIColor redColor] toColor:[UIColor orangeColor]];

    [self.view2 cb_gradientBackgroundFromPoint:CGPointMake(0, 0) toPoint:CGPointMake(1, 0) fromColor:[UIColor redColor] toColor:[UIColor orangeColor]];

    [self.view3 cb_gradientBackgroundFromPoint:CGPointMake(0, 0) toPoint:CGPointMake(0, 1) fromColor:[UIColor redColor] toColor:[UIColor orangeColor]];

    [self.view4 cb_gradientBackgroundFromColor:[UIColor redColor] toColor:[UIColor orangeColor]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
