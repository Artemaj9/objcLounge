//
//  ViewController.h
//  ShakeGame
//
//  Created by Artem on 30.11.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
    int count;
    int score;
    int mode;
}
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
- (IBAction)buttonPressed:(id)sender;


@end

