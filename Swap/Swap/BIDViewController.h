//
//  BIDViewController.h
//  Swap
//
//  Created by Joshua Kessler on 4/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDViewController : UIViewController
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *foos;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *bars;
- (IBAction)buttonTapped:(id)sender;
@property (strong, nonatomic) IBOutlet UIView *portrait;
@property (strong, nonatomic) IBOutlet UIView *landscape;

@end
