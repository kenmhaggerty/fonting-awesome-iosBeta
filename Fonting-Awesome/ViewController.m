//
//  ViewController.m
//  Fonting-Awesome
//
//  Created by Ken M. Haggerty on 2/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "ViewController.h"
#import <FontAwesomeKit/FontAwesomeKit.h>

@interface ViewController ()
@property (nonatomic, strong) IBOutlet UIButton *button;
- (IBAction)buttonPressed:(UIButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSAttributedString *attributedString = [FAKFontAwesome starIconWithSize:self.button.titleLabel.font.pointSize].attributedString;
    [self.button setAttributedTitle:attributedString forState:UIControlStateNormal];
    [self.button setAttributedTitle:attributedString forState:UIControlStateSelected];
    [self.button setAttributedTitle:attributedString forState:UIControlStateHighlighted];
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

@end
