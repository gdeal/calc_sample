//
//  Calc.m
//  Calc
//
//  Created by Garret Deal on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain


-(id) init{
    if (self = [super init]) {
        //initialize properties' values
    }
    return self;
}


-(float) add_num: (float) first with_num:(float) second{
    return first + second;
}

-(float) subtract_num: (float) first with_num:(float) second{
    return first - second;
}

-(float) multiply_num: (float) first with_num:(float) second{
    return first * second;
}

-(float) divide_num: (float) first with_num:(float) second{
    return first / second;
}

@end
