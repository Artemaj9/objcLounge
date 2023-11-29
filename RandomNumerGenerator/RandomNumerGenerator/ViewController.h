//
//  ViewController.h
//  RandomNumerGenerator
//
//  Created by Artem on 29.11.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UILabel *wordLabel;

- (IBAction)buttonPressed:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *randomWordButton;
- (IBAction)randomWordButtonPressed:(id)sender;

@end

