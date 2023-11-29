//
//  ViewController.m
//  RandomPlistGenerator
//
//  Created by Artem on 29.11.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)randomPlistButtonPressed:(id)sender {
    NSString *fileContents = [[NSBundle mainBundle] pathForResource:@"Lists" ofType:@"plist"];
    NSDictionary *wordDic = [[NSDictionary alloc]initWithContentsOfFile:fileContents];
    
    NSMutableArray *items = [wordDic valueForKey:@"List"];
    int randomGen = arc4random() % [items count];
    NSString *word = [items objectAtIndex: randomGen];
    [self.label setText: [[NSString alloc] initWithFormat:@"%@", word]];
}
@end
