//
//  ViewController.m
//  ReactionGame
//
//  Created by Artem on 29.11.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    score = 0;
}


- (IBAction)startStop:(id)sender {
    
    if (score == 0) {
        count = 3;
        self.getReadyLabel.text = [NSString stringWithFormat:@"%i", count];
        self.timerLabel.text = [NSString stringWithFormat:@"%i", score];

        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(startCounter) userInfo:nil repeats:YES];
        
        [sender setTitle:@"Stop" forState: UIControlStateNormal];
    } else {
        [timerScore invalidate];
    }
    
    if (count == 0) {
        score = 0;
        
        [sender setTitle:@"Restart" forState: UIControlStateNormal];
    }
}

-(void)startCounter {
    count -= 1;
    self.getReadyLabel.text = [NSString stringWithFormat:@"%i", count];
    
    if (count == 0) {
        [timer invalidate];
        
        score = 0;
        self.timerLabel.text = [NSString stringWithFormat:@"%i", score];
        timerScore = [NSTimer scheduledTimerWithTimeInterval:0.001 target:self selector:@selector(scoreCounter) userInfo:nil repeats:YES];
    }
}

-(void) scoreCounter {
    score += 1;
    self.timerLabel.text = [NSString stringWithFormat:@"%i", score];

}
@end
