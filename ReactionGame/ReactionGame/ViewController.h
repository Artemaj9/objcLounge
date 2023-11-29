//
//  ViewController.h
//  ReactionGame
//
//  Created by Artem on 29.11.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
    int count;
    
    NSTimer *timerScore;
    int score;
}

@property (weak, nonatomic) IBOutlet UILabel *getReadyLabel;
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;

- (IBAction)startStop:(id)sender;


@end

