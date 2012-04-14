//
//  BIDViewController.h
//  Control Fun
//
//  Created by Joshua Kessler on 4/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDViewController : UIViewController <UIActionSheetDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *numberField;

- (IBAction) textFieldDoneEditing:(id)sender;
- (IBAction) backgroundTap:(id)sender;
- (IBAction) sliderChanged:(id)sender;
- (IBAction) switchChanged:(id)sender;
- (IBAction) toggleControls:(id)sender;
- (IBAction) buttonPressed:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UISwitch *leftSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *rightSwitch;
@property (weak, nonatomic) IBOutlet UIButton *doSomethingButton;

@end
