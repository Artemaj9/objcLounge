//
//  ViewController.m
//  TempCalculator
//
//  Created by Artem on 29.11.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.fahrLabel.text = [[NSString alloc] initWithFormat:@"%4.1f fahrenheit", self.slider.value];
    double fahrenheit = self.slider.value;
    double celsius = (fahrenheit - 32) / 1.8;
    NSString *result = [[NSString alloc] initWithFormat: @"%4.1f celsius", celsius];
    self.celsiusLabel.text = result;
    
}


- (IBAction)sliderAction:(id)sender {
    self.fahrLabel.text = [[NSString alloc] initWithFormat:@"%4.1f fahrenheit", self.slider.value];
    double fahrenheit = self.slider.value;
    double celsius = (fahrenheit - 32) / 1.8;
    NSString *result = [[NSString alloc] initWithFormat: @"%4.1f celsius", celsius];
    self.celsiusLabel.text = result;
    
}
@end
