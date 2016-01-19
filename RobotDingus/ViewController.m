//
//  ViewController.m
//  RobotDingus
//
//  Created by Rowan Simpson on 1/01/13.
//  Copyright (c) 2013 Hoddywood Studios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

int imageIndex = 0;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:@"Body.png"];

    self.imageView.image = image;

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextImage:(id)sender
{
    
    imageIndex++;
    if (imageIndex > 10) {
        imageIndex = 0;
    }
    
    UIImage *image;
    
    switch (imageIndex) {
        case 0:
            image = [UIImage imageNamed:@"Body.png"];
            break;
        case 1:
            image = [UIImage imageNamed:@"Mechanical Legs.png"];
            break;
        case 2:
            image = [UIImage imageNamed:@"Wheels.png"];
            break;
        case 3:
            image = [UIImage imageNamed:@"Bulldozer.png"];
            break;
        case 4:
            image = [UIImage imageNamed:@"Springs.png"];
            break;
        case 5:
            image = [UIImage imageNamed:@"Propeller.png"];
            break;
        case 6:
            image = [UIImage imageNamed:@"Drill.png"];
            break;
        case 7:
            image = [UIImage imageNamed:@"Fan.png"];
            break;
        case 8:
            image = [UIImage imageNamed:@"Tank Tracks.png"];
            break;
        case 9:
            image = [UIImage imageNamed:@"Jet.png"];
            break;
        case 10:
            image = [UIImage imageNamed:@"Light & Radar.png"];
            break;
    }
    
    self.imageView.image = image;
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
}

@end
