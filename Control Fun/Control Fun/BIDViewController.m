//
//  BIDViewController.m
//  Control Fun
//
//  Created by Joshua Kessler on 4/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BIDViewController.h"

@interface BIDViewController ()

@end

@implementation BIDViewController
@synthesize doSomethingButton;
@synthesize sliderLabel;
@synthesize leftSwitch;
@synthesize rightSwitch;
@synthesize nameField;
@synthesize numberField;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setNameField:nil];
    [self setNumberField:nil];
    [self setSliderLabel:nil];
    [self setLeftSwitch:nil];
    [self setRightSwitch:nil];
    [self setDoSomethingButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)textFieldDoneEditing:(id)sender {
    [sender resignFirstResponder];
}

- (IBAction)backgroundTap:(id)sender {
    [nameField resignFirstResponder];
    [numberField resignFirstResponder];
}

- (IBAction)sliderChanged:(id)sender {
    UISlider *slider = (UISlider *)sender;
    int progressAsInt = (int)roundf(slider.value);
    sliderLabel.text = [NSString stringWithFormat:@"%d", progressAsInt];
    
}

- (IBAction)switchChanged:(id)sender {
    UISwitch *whichSwitch = (UISwitch *)sender;
    BOOL setting = whichSwitch.isOn;
    [leftSwitch setOn:setting animated:YES];
    [rightSwitch setOn:setting animated:YES];
}

- (IBAction)toggleControls:(id)sender {
    // 0 == switches index
    if ( [sender selectedSegmentIndex] == 0) {
        leftSwitch.hidden = NO;
        rightSwitch.hidden = NO;
        doSomethingButton.hidden = YES;
    }
    else {
        leftSwitch.hidden = YES;
        rightSwitch.hidden = YES;
        doSomethingButton.hidden = NO;
    }
}

- (IBAction)buttonPressed:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:@"Are you sure?" delegate:self cancelButtonTitle:@"No Way!" destructiveButtonTitle:@"Yes, I'm Sure!" otherButtonTitles:nil];
    [actionSheet showInView:self.view];
}

- (void) actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {
    if ( buttonIndex != [actionSheet cancelButtonIndex] )
    {
        NSString *msg = nil;
        if (nameField.text.length > 0)         
            msg = [[NSString alloc] initWithFormat:@"You can breathe easy, %@, everything went OK.", nameField.text];
        else 
            msg = [[NSString alloc] initWithFormat:@"You can breathe easy, everything went OK."];
        
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Something was done"
                              message:msg delegate:self cancelButtonTitle:@"Phew!" otherButtonTitles:nil];
        [alert show];
    }
}



@end
