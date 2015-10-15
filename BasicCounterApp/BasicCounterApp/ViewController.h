//
//  ViewController.h
//  BasicCounterApp
//
//  Created by Weboniselab on 30/09/15.
//  Copyright © 2015 Weboniselab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *labelCounterDisplay;
@property (weak, nonatomic) IBOutlet UIButton *buttonCounterIncrement;

@property (weak, nonatomic) IBOutlet UIButton *buttonCounterDecrement;
@end

