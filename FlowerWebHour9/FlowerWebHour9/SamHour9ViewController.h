//
//  SamHour9ViewController.h
//  FlowerWebHour9
//
//  Created by Chentou TONG on 6/12/13.
//  Copyright (c) 2013 Chentou TONG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SamHour9ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UISegmentedControl *colorChoice;
@property (strong, nonatomic) IBOutlet UIWebView *flowerView;
@property (strong, nonatomic) IBOutlet UIWebView *flowerDetailView;

- (IBAction)getFlower:(id)sender;
- (IBAction)toggleFlowerDetail:(id)sender;

@end
