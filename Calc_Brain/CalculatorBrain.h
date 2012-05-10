//
//  Calc.h
//  Calc
//
//  Created by Garret Deal on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//



@interface CalculatorBrain : NSObject
    -(id) init;
    -(float) add_num: (float) first with_num:(float) second;
    -(float) divide_num: (float) first with_num:(float) second;
    -(float) subtract_num: (float) first with_num:(float) second;
    -(float) multiply_num: (float) first with_num:(float) second;

@end
