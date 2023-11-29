//
//  ViewController.h
//  Conditionals
//
//  Created by Artem on 29.11.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UILabel *topLabel;
@property (weak, nonatomic) IBOutlet UILabel *bottomLabel;

-(IBAction)dismissKeyboard:(id)sender;
- (IBAction)buttonTapped:(id)sender;


@end

