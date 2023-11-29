//
//  ViewController.h
//  HidingObjects
//
//  Created by Artem on 29.11.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)hideButton:(id)sender;
- (IBAction)revealButton:(id)sender;


@end

