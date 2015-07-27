//
//  ViewController.m
//  TestView
//
//  Created by Pavel Ostanin on 01/07/2015.
//  Copyright (c) 2015 Pavel Ostanin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)changeSize:(UIView *)obj zoomCoef:(float)zoomCoef{
    CGRect temp = obj.frame;
    temp.size.width = obj.frame.size.width*zoomCoef;
    temp.size.height = obj.frame.size.height*zoomCoef;
    obj.frame = temp;
}

- (void)changeLocation:(UIView *)obj1 obj:(UIView *)obj2{
    CGRect temp1 = obj1.frame;
    CGRect temp2 = obj2.frame;
    temp1.origin = obj2.frame.origin;
    temp2.origin = obj1.frame.origin;
    obj1.frame = temp1;
    obj2.frame = temp2;
}

- (IBAction)pressFirstButton:(id)sender {
    static int x = 0;
    float zoomCoef = (x++ %2 ==0) ? 1.0/4.0 : 4.0;
    [UIView animateWithDuration:1.0 animations:^{
        [self changeSize:self.firstObject zoomCoef:zoomCoef];
        [self changeSize:self.secondObject zoomCoef:zoomCoef];
    
    }];
}

- (IBAction)pressSecondButton:(id)sender {
    [UIView animateWithDuration:1.0 animations:^{
        [self changeLocation:self.firstObject obj:self.secondObject];
    }];
}
@end
