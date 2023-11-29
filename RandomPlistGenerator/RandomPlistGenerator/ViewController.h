//
//  ViewController.h
//  RandomPlistGenerator
//
//  Created by Artem on 29.11.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *randomPlistButton;
- (IBAction)randomPlistButtonPressed:(id)sender;

@end

