//
//  SamHour8ViewController.h
//  ImageHopHour8
//
//  Created by Chentou TONG on 6/12/13.
//  Copyright (c) 2013 Chentou TONG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SamHour8ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *bunnyView1;
@property (strong, nonatomic) IBOutlet UIImageView *bunnyView2;
@property (strong, nonatomic) IBOutlet UIImageView *bunnyView3;
@property (strong, nonatomic) IBOutlet UIImageView *bunnyView4;
@property (strong, nonatomic) IBOutlet UIImageView *bunnyView5;

@property (strong, nonatomic) IBOutlet UISlider *speedSlider;
@property (strong, nonatomic) IBOutlet UIStepper *speedStepper;
@property (strong, nonatomic) IBOutlet UILabel *hopsPerSecond;
@property (strong, nonatomic) IBOutlet UIButton *toggleButton;

- (IBAction)setSpeed:(id)sender;
- (IBAction)setIncrement:(id)sender;
- (IBAction)toggleAnimation:(id)sender;

@end
