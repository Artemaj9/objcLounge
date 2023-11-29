//
//  ViewController.m
//  RandomNumerGenerator
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


- (IBAction)buttonPressed:(id)sender {
    int randomNumber = arc4random() % 100;
    [UIView animateWithDuration:1 animations:^{
        self.view.layer.opacity = (CGFloat) randomNumber / 100;
    }];
    self.label.text = [[NSString alloc] initWithFormat: @"%i", randomNumber];
}

- (IBAction)randomWordButtonPressed:(id)sender {
    int randomWord = arc4random() % 5;
    [UIView animateWithDuration:1.0 animations:^{
        
        switch (randomWord) {
            case 0:
                self.wordLabel.text = @"Red";
                self.view.backgroundColor = UIColor.redColor;
                break;
            case 1:
                self.wordLabel.text = @"Green";
                self.view.backgroundColor =  UIColor.greenColor;
                break;
            case 2:
                self.wordLabel.text = @"Blue";
                self.view.backgroundColor = UIColor.blueColor;
                break;
            case 3:
                self.wordLabel.text = @"Pink";
                self.view.backgroundColor = UIColor.systemPinkColor;
                break;
            case 4:
                self.wordLabel.text = @"Yellow";
                self.view.backgroundColor = UIColor.yellowColor;
                break;
                
        }
    }];
    
}
@end
