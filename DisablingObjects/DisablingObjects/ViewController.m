//
//  ViewController.m
//  DisablingObjects
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


- (IBAction)enable:(id)sender {
    self.expButton.enabled = YES;
}

- (IBAction)disable:(id)sender {
    self.expButton.enabled = NO;
}
@end
