//
//  SamHour9ViewController.m
//  FlowerWebHour9
//
//  Created by Chentou TONG on 6/12/13.
//  Copyright (c) 2013 Chentou TONG. All rights reserved.
//

#import "SamHour9ViewController.h"

@interface SamHour9ViewController ()

@end

@implementation SamHour9ViewController

- (void)viewDidLoad
{
    self.flowerDetailView.hidden=YES;
    [self getFlower:nil];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)getFlower:(UIButton *)sender {
    NSURL *imageURL;
    NSURL *detailURL;
    NSString *imageURLString;
    NSString *detailURLString;
    NSString *color;
    int sessionID;
    
    color=[self.colorChoice titleForSegmentAtIndex:
           self.colorChoice.selectedSegmentIndex];
    
    sessionID=random()%50000;
    
    imageURLString=[[NSString alloc] initWithFormat:
                    @"http://www.floraphotographs.com/showrandomios.php?color%&session=%d", color, sessionID];
    
    detailURLString=[[NSString alloc] initWithFormat:
                     @"http://www.floraphotographs.com/detailios.php?session=%d", sessionID];
    
    imageURL=[[NSURL alloc] initWithString:imageURLString];
    detailURL=[[NSURL alloc] initWithString:detailURLString];
    
    [self.flowerView loadRequest:[NSURLRequest requestWithURL:imageURL]];
    [self.flowerDetailView loadRequest:[NSURLRequest requestWithURL:detailURL]];
    
    self.flowerDetailView.backgroundColor=[UIColor clearColor];
    
    
}

- (IBAction)toggleFlowerDetail:(id)sender {
    self.flowerDetailView.hidden=![sender isOn];
    
}

@end
