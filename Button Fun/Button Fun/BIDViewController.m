//
//  BIDViewController.m
//  Button Fun
//
//  Created by Joshua Kessler on 4/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BIDViewController.h"

@interface BIDViewController ()

@end

@implementation BIDViewController
@synthesize statusText;


- (void)viewDidUnload
{
    [self setStatusText:nil];
    [self setStatusText:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (IBAction)buttonPressed:(UIButton *)sender {
    NSString *title = [sender titleForState:UIControlStateNormal];
    statusText.text = [NSString stringWithFormat:@"%@ button pressed.", title];
}
@end
