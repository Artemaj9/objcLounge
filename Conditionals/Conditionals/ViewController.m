//
//  ViewController.m
//  Conditionals
//
//  Created by Artem on 29.11.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)buttonTapped:(id)sender {
    if ([self.topLabel.text isEqualToString: @"Hello"]) {
        self.bottomLabel.text = @"How are you?";
    } else {
        self.bottomLabel.text = @"Go away!";
    }
}

- (IBAction)dismissKeyboard:(id)sender {
    self.topLabel.text = self.textField.text;
    [self resignFirstResponder];
}
@end
