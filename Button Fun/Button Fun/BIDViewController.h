//
//  BIDViewController.h
//  Button Fun
//
//  Created by Joshua Kessler on 4/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDViewController : UIViewController
- (IBAction)buttonPressed:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *statusText;


@end
