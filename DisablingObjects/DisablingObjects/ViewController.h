//
//  ViewController.h
//  DisablingObjects
//
//  Created by Artem on 29.11.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *expButton;
- (IBAction)disable:(id)sender;
- (IBAction)enable:(id)sender;

@end

