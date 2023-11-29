//
//  ViewController.m
//  TextProperties
//
//  Created by Artem on 29.11.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.fontLabel.font = [UIFont fontWithName:@"Pecita" size:25];
    self.fontLabel.text = @"Привет!";
    self.fontLabel.textAlignment = NSTextAlignmentCenter;
    self.textField.backgroundColor = [UIColor darkGrayColor];
    self.textField.textColor = [UIColor whiteColor];
}



- (IBAction)alignCenter:(id)sender {
    self.label.textAlignment = NSTextAlignmentCenter;
}

- (IBAction)alignRight:(id)sender {
    self.label.textAlignment = NSTextAlignmentRight;

}

- (IBAction)alignLeft:(id)sender {
    self.label.textAlignment = NSTextAlignmentLeft;
}

- (IBAction)setShadow:(id)sender {
    self.label.layer.shadowColor = [[UIColor blackColor] CGColor];
    self.label.layer.shadowOpacity = 0.5;
    self.label.layer.shadowRadius = 1.0;
    self.label.layer.shadowOffset = CGSizeMake(0, 2);
}

- (IBAction)setSizeAndFont:(id)sender {
    [self.label setFont: [UIFont fontWithName:@"Verdana" size:25]];
}

- (IBAction)setColor:(id)sender {
    self.label.textColor = [UIColor redColor];
}

- (IBAction)endEditing:(id)sender {
    self.label.text = self.textField.text;
    [self resignFirstResponder];
}
@end
