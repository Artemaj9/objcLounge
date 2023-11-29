//
//  ViewController.m
//  FadeControl
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


- (IBAction)fadeOut:(id)sender {
    [UIView animateWithDuration:1.0 animations:^{
        [self.segmentedControl setAlpha: 0];
        [self.label setAlpha: 0];
    }];
    
    // MARK: Deprecated version!
//    [UIView beginAnimations:nil context:NULL];
//    [UIView setAnimationDuration: 1.0];
//    [self.segmentedControl setAlpha: 0];
//    [self.label setAlpha: 0];
//    [UIView commitAnimations];
}

- (IBAction)fadeIn:(id)sender {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1.0];
    [self.segmentedControl setAlpha: 1];
    [self.label setAlpha:1];
    [UIView commitAnimations];
}
@end
