//
//  BIDViewController.m
//  Swap
//
//  Created by Joshua Kessler on 4/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BIDViewController.h"

#define degreesToRadians(x) (M_PI * (x) / 180.0)

@interface BIDViewController ()

@end

@implementation BIDViewController
@synthesize portrait;
@synthesize landscape;
@synthesize foos;
@synthesize bars;

- (void) willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    
    CGFloat width, height, rotation;
    
    if ( toInterfaceOrientation == UIInterfaceOrientationPortrait) {
        self.view = self.portrait;
        width = 320.0;
        height = 460.0;
        rotation = 0;
    }
    else 
    {
        self.view = self.landscape;
        width = 480.0;
        height = 300.0;
        rotation = ( toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft) ? -90 : 90;
    } 
    
    self.view.transform = CGAffineTransformIdentity;
    self.view.transform = 
    
    CGAffineTransformMakeRotation(degreesToRadians(rotation));
    self.view.bounds = CGRectMake(0.0, 0.0, width, height);
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setFoos:nil];
    [self setBars:nil];
    [self setPortrait:nil];
    [self setLandscape:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)buttonTapped:(id)sender {
    NSString *message = nil;
    if ( [self.foos containsObject:sender])
    {
        message = @"Foo button pressed";
        for (UIButton *oneFoo in foos) { oneFoo.hidden = YES; }
    }else 
    {
        message = @"Bar button pressed";
        for (UIButton *oneBar in bars) { oneBar.hidden = YES; }

    }
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:message 
                                                  message:nil 
                                                 delegate:nil 
                                        cancelButtonTitle:@"Ok" 
                                        otherButtonTitles:nil];
    [alert show];
    
}
@end
