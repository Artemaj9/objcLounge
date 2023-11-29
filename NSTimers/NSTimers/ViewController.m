//
//  ViewController.m
//  NSTimers
//
//  Created by Artem on 29.11.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    timeDate = [NSTimer scheduledTimerWithTimeInterval: 1.0 target:self selector:@selector(updateDateTimer) userInfo:nil repeats:YES];
    // Do any additional setup after loading the view.
}


- (IBAction)stopCount:(id)sender {
    [timer invalidate];
}

- (IBAction)startCount:(id)sender {
    count = 0;
    self.label.text = [NSString stringWithFormat: @"%i", count];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countTimer) userInfo:nil repeats:YES];
}

-(void) countTimer {
    count += 1;
    self.label.text = [NSString stringWithFormat: @"%i", count];
}
-(void) updateDateTimer {
        
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat: @"hh:mm:ss"];
    self.timeLabel.text = [formatter stringFromDate:[NSDate date]];
    
    NSDateFormatter *formatter2 = [[NSDateFormatter alloc] init];
    [formatter setDateFormat: @"YYYY-MM-dd"];
    self.dateLabel.text = [formatter stringFromDate:[NSDate date]];
}
@end
