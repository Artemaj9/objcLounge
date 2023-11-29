//
//  ViewController.m
//  SimpleSlider
//
//  Created by Artem on 29.11.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.label setFont:[UIFont fontWithName:@"Verdana" size: self.slider.value]];
    self.slider.value = 20;
}

- (IBAction)sliderAction:(id)sender {
    [UIView animateWithDuration:0.5 animations:^{
        [self.label setFont:[UIFont fontWithName:@"Verdana" size: self.slider.value]];
    }];
}

@end
