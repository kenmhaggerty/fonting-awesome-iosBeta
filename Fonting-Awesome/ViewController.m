//
//  ViewController.m
//  Fonting-Awesome
//
//  Created by Ken M. Haggerty on 2/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "ViewController.h"
#import <FontAwesomeKit/FontAwesomeKit.h>
#import "CWStatusBarNotification.h"

@interface ViewController ()
@property (nonatomic, strong) IBOutlet UIButton *button;
@property (nonatomic, strong) CWStatusBarNotification *statusBarNotification;
- (IBAction)buttonPressed:(UIButton *)sender;
- (IBAction)buttonTouched:(id)sender;
- (IBAction)buttonReleased:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSAttributedString *attributedString = [FAKFontAwesome starIconWithSize:self.button.titleLabel.font.pointSize].attributedString;
    [self.button setAttributedTitle:attributedString forState:UIControlStateNormal];
    [self.button setAttributedTitle:attributedString forState:UIControlStateSelected];
    [self.button setAttributedTitle:attributedString forState:UIControlStateHighlighted];
    
    [self setStatusBarNotification:[CWStatusBarNotification new]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender
{
    NSAttributedString *attributedString = [FAKFontAwesome globeIconWithSize:self.button.titleLabel.font.pointSize].attributedString;
    [self.button setAttributedTitle:attributedString forState:UIControlStateNormal];
    [self.button setAttributedTitle:attributedString forState:UIControlStateSelected];
    [self.button setAttributedTitle:attributedString forState:UIControlStateHighlighted];
}

- (IBAction)buttonTouched:(id)sender
{
    [self.statusBarNotification displayNotificationWithMessage:@"This button uses FontAwesomeKit for iOS!" completion:nil];
}

- (IBAction)buttonReleased:(id)sender
{
    [self.statusBarNotification dismissNotification];
}

@end
