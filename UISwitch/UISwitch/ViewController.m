//
//  ViewController.m
//  UISwitch
//
//  Created by Artem on 29.11.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label.text = self.customSwitch.isOn ?  @"Switch is on" : @"Switch is off";
    self.button.enabled = self.customSwitch.isOn ? YES : NO;
}


- (IBAction)switchAction:(id)sender {

    self.label.text = self.customSwitch.isOn ?  @"Switch is on" : @"Switch is off";
    self.button.enabled = self.customSwitch.isOn ? YES : NO;
}
@end
