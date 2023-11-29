//
//  ViewController.h
//  tappingGame
//
//  Created by Artem on 29.11.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSTimer *timer;
    
    int time;
    int tap;
}
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *tapLabel;
@property (weak, nonatomic) IBOutlet UIButton *tapOutlet;
@property (weak, nonatomic) IBOutlet UIButton *startButtonOutlet;

- (IBAction)startGame:(id)sender;
- (IBAction)tapButton:(id)sender;

@end

