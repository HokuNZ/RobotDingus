//
//  BuildViewController.m
//  RobotDingus
//
//  Created by Rowan Simpson on 2/01/13.
//  Copyright (c) 2013 Hoddywood Studios. All rights reserved.
//

#import "BuildViewController.h"

@interface BuildViewController ()

@end

@implementation BuildViewController

int imageIndex;
NSArray *imageNames;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    UITapGestureRecognizer *singleTap =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleAddImage:)];
    [self.view addGestureRecognizer:singleTap];

    imageIndex = 0;
    imageNames = [NSArray arrayWithObjects:@"Exhaust.png", @"Pump.png", @"Ultra.png", @"Top.png", @"Pedals.png", @"Flag.png", @"Turbo5000.png", @"Drill.png", @"Wheels.png", @"Jet.png", @"Light & Radar.png", @"Tank Tracks.png", @"Mechanical Legs.png", @"Bulldozer.png", @"Springs.png", @"Propeller.png", @"Fan.png", nil];

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

- (void)handleAddImage:(UITapGestureRecognizer *)recognizer {
    
    
    UIImage *image = [UIImage imageNamed:[imageNames objectAtIndex:imageIndex]];
    imageIndex++;
    if (imageIndex > 16) {
        imageIndex = 0;
    }
    
    CGFloat width = image.size.width / 5.25;
    CGFloat height = image.size.height / 5.25;
    
    UIImageView *square = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, width, height)];
    square.userInteractionEnabled = YES;
    square.image = image;
                    
    square.center = [recognizer locationInView:recognizer.view];
    square.backgroundColor = [UIColor orangeColor];

    // add move gesture
    UIPanGestureRecognizer *move = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(handlePan:)];
    [square addGestureRecognizer:move];
    
    // add tap gesture
    UITapGestureRecognizer *singleTap =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleToggleImage:)];
    [square addGestureRecognizer:singleTap];
    
    
    /*
     UITapGestureRecognizer *singleTap =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSelect:)];
    [self.view addGestureRecognizer:singleTap];
    
    [square addGestureRecognizer:singleTap];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(40, 0, 150, 30)];
    label.text = @"BLAH";
    label.backgroundColor = [UIColor clearColor];
    
    [square addSubview:label];
    */
    [self.view addSubview:square];
    
    [self.view bringSubviewToFront:self.body];
}

- (void)handleToggleImage:(UITapGestureRecognizer *)recognizer {

    //[self handleAddImage:recognizer];

    [recognizer.view removeFromSuperview];
    
    
}

- (void)handlePan:(UIPanGestureRecognizer *)recognizer {
    CGPoint destination = [recognizer locationInView:[recognizer.view superview]];
    
    [recognizer.view setCenter:destination];
    
}


- (void)addNextImageToView {
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
