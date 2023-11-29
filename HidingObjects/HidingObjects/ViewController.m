//
//  ViewController.m
//  HidingObjects
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


- (IBAction)revealButton:(id)sender {
    [UIView animateWithDuration: 1.0 animations:^{
        self.segmentedControl.hidden = NO;
        self.label.hidden = NO;
        self.label.alpha = 1;
        self.segmentedControl.alpha = 1;
    }];
 
}

- (IBAction)hideButton:(id)sender {
    [UIView animateWithDuration: 1.0 animations:^{
        self.segmentedControl.hidden = YES;
        self.label.hidden = YES;
        self.label.alpha = 0;
        self.segmentedControl.alpha = 0;
    }];
}
@end
