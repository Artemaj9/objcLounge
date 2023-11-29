//
//  ViewController.h
//  FadeControl
//
//  Created by Artem on 29.11.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
    
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)fadeIn:(id)sender;
- (IBAction)fadeOut:(id)sender;

@end

