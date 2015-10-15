//
//  TestViewController.m
//  BasicCounterApp
//
//  Created by Weboniselab on 01/10/15.
//  Copyright © 2015 Weboniselab. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"
#import <OCMock/OCMock.h>

@interface ViewController(Test)

-(int)incrementCountForInitialValue:(int)currentValue;
-(int)decrementCountForInitialValue:(int)currentValue;
@end

@interface TestViewController : XCTestCase{
   
    ViewController *viewControllerCounter;
    UIStoryboard *storyboard;
}

@end

@implementation TestViewController

- (void)setUp {
    [super setUp];
    storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    viewControllerCounter = [storyboard instantiateViewControllerWithIdentifier:
                                             @"ViewController"];
    [viewControllerCounter view];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}
-(void)testViewControllerViewExists {
    NSLog(@"in test");
       XCTAssertNotNil([viewControllerCounter view],@"view controller is loaded");

}

-(void)testLabelCounterDisplayIsConnected{
    XCTAssertNotNil([viewControllerCounter labelCounterDisplay],@"label is connected");
    
    }

-(void)testButtonCounterIncrement{
    XCTAssertNotNil([viewControllerCounter buttonCounterIncrement],@"buttonCounterIncrement is connected");
    }

-(void)testButtonCounterDecrement{
    XCTAssertNotNil([viewControllerCounter buttonCounterDecrement],@"buttonCounterDecrement is connected");
}

-(void)testIncrementFunction{
    int returnedValue = [viewControllerCounter incrementCountForInitialValue:1];
    XCTAssertEqual(2, returnedValue, @"method works as desired");
}

-(void)testDecrementFunction{
    int returnedValue = [viewControllerCounter decrementCountForInitialValue:1];
    XCTAssertEqual(23, returnedValue,@"decrement method works as desired");
}


- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
