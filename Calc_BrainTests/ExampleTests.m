//
//  DragWordsTest.m
//  VerseMinder
//
//  Created by Garret Deal on 2/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <GHUnitIOS/GHUnit.h>
#import <OCMock/OCMock.h>
#import "CalculatorBrain.h"


@interface ExampleTest : GHTestCase { 
    CalculatorBrain* testCalculator;
}
@end

@implementation ExampleTest

- (void) setUpClass
{
    testCalculator = [[CalculatorBrain alloc] init];
    // Run at start of all tests in the class
}

- (void) tearDownClass
{
    // Run at end of all tests in the class
}

- (void) setUp
{
    //    // Run before each test method
}

- (void) tearDown
{
    // Run after each test method
}  

- (void) test_add_two_positive
{
    //Testing pushes to github
    sleep(1);
    float value = [testCalculator add_num:3 with_num:4];
    float expected = 7;
    
    GHAssertEquals(value, expected, @"");
}

- (void) test_add_two_negative
{
    //Testing pushes to github
    sleep(0);
    float value = [testCalculator add_num:-3 with_num:-4];
    float expected = -7;
    
    GHAssertEquals(value, expected, @"");
}

- (void) test_add_positive_negative
{
    //Testing pushes to github
    sleep(0);
    float value = [testCalculator add_num:-3 with_num:4];
    float expected = 1;
    
    GHAssertEquals(value, expected, @"");
}

- (void) test_subtract_two_positive
{
    sleep(1);
    float value = [testCalculator subtract_num:7 with_num:4];
    float expected = 3;
    
    GHAssertEquals(value, expected, @"");
}

- (void) test_subtract_two_negative
{
    sleep(1);
    float value = [testCalculator subtract_num:-7 with_num:-4];
    float expected = -3;
    
    GHAssertEquals(value, expected, @"");
}

- (void) test_subtract_positive_negative
{
    sleep(1);
    float value = [testCalculator subtract_num:-7 with_num:4];
    float expected = -11;
    
    GHAssertEquals(value, expected, @"");
}

- (void) test_multiply
{
    sleep(3);
    float value = [testCalculator multiply_num:90 with_num:12];
    float expected = 900;
    
    GHAssertEquals(value, expected, @"");
}

- (void) test_divide
{
    sleep(2);
    float value = [testCalculator divide_num:8 with_num:4];
    float expected = 2;
    
    GHAssertEquals(value, expected, @"");}
@end