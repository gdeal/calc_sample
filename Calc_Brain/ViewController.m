//
//  ViewController.m
//  Calc
//
//  Created by Garret Deal on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "CalculatorBrain.h"

@interface ViewController ()

@end

@implementation ViewController


-(IBAction)buttonDigitPressed:(id)sender {
	currentNumber = currentNumber*10 + (float)[sender tag];
	calculatorScreen.text = [NSString stringWithFormat:@"%.02f",currentNumber];
}

-(IBAction)buttonOperationPressed:(id)sender {
	if (currentOperation == 0) result = currentNumber;
	else {
		
        
        CalculatorBrain* calculator = [[CalculatorBrain alloc] init];
        
        
        switch (currentOperation) {
			case 1:
				result = [calculator add_num:result with_num:currentNumber];

				break;
			case 2:
				result = [calculator subtract_num:result with_num:currentNumber];
				break;
			case 3:
				result = [calculator multiply_num:result with_num:currentNumber];
				break;
			case 4:
				result = [calculator divide_num:result with_num:currentNumber];
				break;
			case 5:
				currentOperation = 0;
				break;
		}
	}
	currentNumber = 0;
	calculatorScreen.text = [NSString stringWithFormat:@"%.02f",result];
	if ([sender tag] == 0) result = 0;
	currentOperation = [sender tag];
}
-(IBAction)cancelInput {
	currentNumber = 0;
	calculatorScreen.text = @"0";
}
-(IBAction)cancelOperation {
	currentNumber = 0;
	calculatorScreen.text = @"0";
	currentOperation = 0;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
