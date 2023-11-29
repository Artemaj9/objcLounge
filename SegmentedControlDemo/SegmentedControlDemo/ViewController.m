//
//  ViewController.m
//  SegmentedControlDemo
//
//  Created by Artem on 29.11.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label.text = @"Segment 1 was selected";
}

- (IBAction)segmentAction:(id)sender {
    if (self.segmcControl.selectedSegmentIndex == 0) {
        self.label.text = @"Segment 1 was selected";
    }
    if (self.segmcControl.selectedSegmentIndex == 1) {
        self.label.text = @"Segment 2 was selected";
    }
    if (self.segmcControl.selectedSegmentIndex == 2) {
        self.label.text = @"Segment 3 was selected";
    }
    if (self.segmcControl.selectedSegmentIndex == 3) {
        self.label.text = @"Segment 4 was selected";
    }
 }
@end
