//
//  ViewController.h
//  Calc
//
//  Created by Garret Deal on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{


float result;
IBOutlet UILabel *calculatorScreen;
int currentOperation;
float currentNumber;


}
-(IBAction)buttonDigitPressed:(id)sender;
-(IBAction)buttonOperationPressed:(id)sender;
-(IBAction)cancelInput;
-(IBAction)cancelOperation; 

@end