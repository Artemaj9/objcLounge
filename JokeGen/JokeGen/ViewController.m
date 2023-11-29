//
//  ViewController.m
//  JokeGen
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


- (IBAction)jikeButton:(id)sender {
    NSString *fileContent = [[NSBundle mainBundle] pathForResource:@"JokeList" ofType:@"plist"];
    NSDictionary *wordDic = [[NSDictionary alloc] initWithContentsOfFile:fileContent];
    NSMutableArray *items = [wordDic valueForKey:@"Jokes"];
    int randomJoke = arc4random() % [items count];
    NSString *word = [items objectAtIndex:randomJoke];
    [self.label setText:[[NSString alloc] initWithFormat:@"%@", word]];
}
@end
