//
//  ViewController.h
//  TempCalculator
//
//  Created by Artem on 29.11.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *fahrLabel;
@property (weak, nonatomic) IBOutlet UILabel *celsiusLabel;
@property (weak, nonatomic) IBOutlet UISlider *slider;
- (IBAction)sliderAction:(id)sender;

@end

