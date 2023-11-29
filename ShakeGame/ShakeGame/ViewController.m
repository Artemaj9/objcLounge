//
//  ViewController.m
//  ShakeGame
//
//  Created by Artem on 30.11.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    count = 10;
    score = 0;
    // Do any additional setup after loading the view.
}


- (IBAction)buttonPressed:(id)sender {
    
    if (score == 0) {
        count = 10;
        mode = 1;
        self.timeLabel.text = [NSString stringWithFormat:@"%i", count];
        timer = [NSTimer scheduledTimerWithTimeInterval: 1.0 target:self selector:@selector(startCounter) userInfo:nil repeats:YES];
        self.startButton.enabled = NO;
    }
    
    if (count == 0) {
        score = 0;
        count = 10;
        
        self.timeLabel.text = [NSString stringWithFormat:@"%i", count];
        self.scoreLabel.text = [NSString stringWithFormat:@"%i", score];
        [self.startButton setTitle:@"Start" forState:UIControlStateNormal];
    }
}

- (void) startCounter {
    count -= 1;
    self.timeLabel.text = [NSString stringWithFormat:@"%i", count];
    
    if (count == 0) {
        [timer invalidate];
        mode = 2;
        
        [self.startButton setTitle:@"Restart" forState:UIControlStateNormal];
        self.startButton.enabled = YES;
    }
}

- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (event.subtype == UIEventSubtypeMotionShake) {
        if (mode == 1) {
            score+= 1;
            self.scoreLabel.text = [NSString stringWithFormat:@"%i", score];
        }
    }
}
@end
