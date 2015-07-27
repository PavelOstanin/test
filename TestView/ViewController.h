//
//  ViewController.h
//  TestView
//
//  Created by Pavel Ostanin on 01/07/2015.
//  Copyright (c) 2015 Pavel Ostanin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
    - (IBAction)pressFirstButton:(id)sender;
    - (IBAction)pressSecondButton:(id)sender;
    @property (strong, nonatomic) IBOutlet UIView *firstObject;
    @property (strong, nonatomic) IBOutlet UIView *secondObject;

@end

