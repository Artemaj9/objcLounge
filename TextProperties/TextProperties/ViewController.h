//
//  ViewController.h
//  TextProperties
//
//  Created by Artem on 29.11.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UILabel *fontLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;

- (IBAction)endEditing:(id)sender;

- (IBAction)setColor:(id)sender;
- (IBAction)setSizeAndFont:(id)sender;
- (IBAction)setShadow:(id)sender;
- (IBAction)alignLeft:(id)sender;
- (IBAction)alignRight:(id)sender;
- (IBAction)alignCenter:(id)sender;

- (IBAction)doneTF:(id)sender;

@end

