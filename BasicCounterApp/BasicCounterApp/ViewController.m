//
//  ViewController.m
//  BasicCounterApp
//
//  Created by Weboniselab on 30/09/15.
//  Copyright © 2015 Weboniselab. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController (){
    int labelValue;
}

@end

@implementation ViewController
@synthesize labelCounterDisplay;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonCounterDecrement:(UIButton *)sender {
    labelValue = labelCounterDisplay.text.intValue;
    labelCounterDisplay.text = [NSString stringWithFormat:@"%d",[self decrementCountForInitialValue:labelValue]];
}
- (IBAction)buttonCounterIncrement:(UIButton *)sender {
    labelValue = labelCounterDisplay.text.intValue;
    labelCounterDisplay.text = [NSString stringWithFormat:@"%d",[self incrementCountForInitialValue:labelValue]];
}

-(int)incrementCountForInitialValue:(int)currentValue{
    
    return (++currentValue);
}

-(int)decrementCountForInitialValue:(int)currentValue{
    
    return (--currentValue);
}

-(void)resetCounterToZero{
    labelCounterDisplay.text = [NSString stringWithFormat:@"%d",0];
}

#pragma mark:-next screen 
- (IBAction)buttonActionNextScreen:(id)sender {
    [self resetCounterToZero];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    SecondViewController *secondObject = [storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    [self.navigationController pushViewController:secondObject animated:true];
}

@end
