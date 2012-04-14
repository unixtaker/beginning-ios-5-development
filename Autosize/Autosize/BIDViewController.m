//
//  BIDViewController.m
//  Autosize
//
//  Created by Joshua Kessler on 4/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BIDViewController.h"

@interface BIDViewController ()

@end

@implementation BIDViewController
@synthesize buttonUL;
@synthesize buttonUR;
@synthesize buttonL;
@synthesize buttonR;
@synthesize buttonLL;
@synthesize buttonLR;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setButtonUL:nil];
    [self setButtonUR:nil];
    [self setButtonL:nil];
    [self setButtonR:nil];
    [self setButtonLL:nil];
    [self setButtonLR:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void) willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation duration:(NSTimeInterval)duration {
    if (UIInterfaceOrientationIsPortrait(interfaceOrientation)) {
        buttonUL.frame = CGRectMake(20, 20, 125, 125);
        buttonUR.frame = CGRectMake(172, 20, 125, 125);
        buttonL.frame = CGRectMake(20, 168, 125, 125);
        buttonR.frame = CGRectMake(175, 168, 125, 125);
        buttonLL.frame = CGRectMake(20, 315, 125, 125);
        buttonLR.frame = CGRectMake(175, 315, 125, 125);
    }else {
        buttonUL.frame = CGRectMake(20, 20, 125, 125);
        buttonUR.frame = CGRectMake(20, 155, 125, 125);
        buttonL.frame = CGRectMake(177, 20, 125, 125);
        buttonR.frame = CGRectMake(177, 155, 125, 125);
        buttonLL.frame = CGRectMake(328, 20, 125, 125);
        buttonLR.frame = CGRectMake(328, 155, 125, 125);
    }
}
@end
