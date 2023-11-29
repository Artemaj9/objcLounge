//
//  ViewController.m
//  tappingGame
//
//  Created by Artem on 29.11.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    time = 10;
    tap = 0;
    
    self.tapOutlet.enabled = NO;
}

- (IBAction)tapButton:(id)sender {
    
    if (time > 0) {
        tap += 1;
        
        self.tapLabel.text = [NSString stringWithFormat:@"%i", tap];
    }

    
}

- (IBAction)startGame:(id)sender {
    
    [UIView animateWithDuration:1.0 animations:^{
        self.view.backgroundColor = [UIColor systemPinkColor];
    }];
    if (time == 10) {
        tap = 0;
        self.tapOutlet.enabled = YES;
        timer = [NSTimer scheduledTimerWithTimeInterval: 1.0 target:self selector:@selector(startCounter) userInfo:nil repeats:YES];
    }
    
    if (time == 0) {
        time = 10;
        tap = 0;
        
        self.tapLabel.text = [NSString stringWithFormat:@"%i", tap];
        self.timeLabel.text = [NSString stringWithFormat:@"%i", time];
        self.tapOutlet.enabled = NO;
    }
}

-(void) startCounter {
    time -= 1;
    
    self.timeLabel.text = [NSString stringWithFormat:@"%i", time];
    
    if (time == 0) {
        [timer invalidate];
        [UIView animateWithDuration:1.0 animations:^{
            self.view.backgroundColor = [UIColor purpleColor];
        }];
        self.tapOutlet.enabled = NO;
        self.startButtonOutlet.titleLabel.text = @"Restart game!";
    }
    
}
@end
