//
//  ViewController.h
//  NSTimers
//
//  Created by Artem on 29.11.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSTimer *timer;
    NSTimer *timeDate;
    int count;
}
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)startCount:(id)sender;
- (IBAction)stopCount:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@end

