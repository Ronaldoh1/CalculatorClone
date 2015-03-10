//
//  ViewController.m
//  CalculatorClone
//
//  Created by Ronald Hernandez on 3/9/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *inputText;
@property (weak, nonatomic) IBOutlet UIButton *clearButton;
@property (weak, nonatomic) IBOutlet UIButton *plusOrMinusButton;
@property (weak, nonatomic) IBOutlet UIButton *percentButton;
@property (weak, nonatomic) IBOutlet UIButton *divisionButton;
@property (weak, nonatomic) IBOutlet UIButton *sevenButton;
@property (weak, nonatomic) IBOutlet UIButton *eightButton;
@property (weak, nonatomic) IBOutlet UIButton *nineButton;
@property (weak, nonatomic) IBOutlet UIButton *timesButton;

@property (weak, nonatomic) IBOutlet UIButton *fourButton;

@property (weak, nonatomic) IBOutlet UIButton *fiveButton;
@property (weak, nonatomic) IBOutlet UIButton *sixButton;
@property (weak, nonatomic) IBOutlet UIButton *minusButton;

@property (weak, nonatomic) IBOutlet UIButton *oneButton;
@property (weak, nonatomic) IBOutlet UIButton *twoButton;

@property (weak, nonatomic) IBOutlet UIButton *threeButton;
@property (weak, nonatomic) IBOutlet UIButton *plusButton;
@property (weak, nonatomic) IBOutlet UIButton *zeroButton;
@property (weak, nonatomic) IBOutlet UIButton *periodButton;
@property (weak, nonatomic) IBOutlet UIButton *equalsButton;



@end

float finalTotalAmount = 0.0;
int number = 0;
NSString *operation;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    [[self.clearButton layer] setBorderWidth:3.0f];
    [[self.plusOrMinusButton layer] setBorderWidth:3.0f];
    [[self.plusOrMinusButton layer] setBorderWidth:3.0f];
    [[self.percentButton layer] setBorderWidth:3.f];
    [[self.divisionButton layer] setBorderWidth:3.f];
    [[self.sevenButton layer] setBorderWidth:3.f];
    [[self.eightButton layer] setBorderWidth:3.f];
    [[self.nineButton layer] setBorderWidth:3.f];
    [[self.timesButton layer] setBorderWidth:3.f];
    [[self.fourButton layer] setBorderWidth:3.f];
    [[self.fiveButton layer] setBorderWidth:3.f];
    [[self.sixButton layer] setBorderWidth:3.f];
    [[self.minusButton layer] setBorderWidth:3.f];
    [[self.oneButton layer] setBorderWidth:3.f];
    [[self.twoButton layer] setBorderWidth:3.f];
    [[self.threeButton layer] setBorderWidth:3.f];
    [[self.plusButton layer] setBorderWidth:3.f];
    [[self.zeroButton layer] setBorderWidth:3.f];
    [[self.periodButton layer] setBorderWidth:3.f];
    [[self.equalsButton layer] setBorderWidth:3.f];

    self.view.backgroundColor = [UIColor orangeColor];


}
- (IBAction)clearButtonTapped:(id)sender {
    number = 0;

    self.inputText.text = @"0";
    finalTotalAmount = 0;


}

- (IBAction)plusOrMinusButtonTapped:(id)sender {
    operation = @"+/-";
    finalTotalAmount = number;


}
- (IBAction)percentButtonTapped:(id)sender {
    operation = @"%";

    finalTotalAmount = number;
    number = 0;

}

- (IBAction)divisionButtonTapped:(id)sender {
    operation = @"/";
    self.inputText.text = @"0";
    finalTotalAmount = number;
    number = 0;
}

- (IBAction)timesButtonTapped:(id)sender {

    operation = @"*";
    self.inputText.text = @"0";
    finalTotalAmount = number;
    number = 0;
}
- (IBAction)minusButtonTapped:(id)sender {
    operation = @"-";
    self.inputText.text = @"0";
    finalTotalAmount = number;
    number = 0;


}
- (IBAction)plusButtonTapped:(id)sender {
    operation = @"+";
    self.inputText.text = @"0";
    number = 0;


}
- (IBAction)equalButtonTapped:(id)sender {
    if ([operation  isEqual: @"+"]){

        finalTotalAmount = finalTotalAmount + number;

        self.inputText.text = [NSString stringWithFormat:@"%f",finalTotalAmount];
    } else if([operation  isEqual: @"-"]){

        finalTotalAmount = finalTotalAmount - number;
         self.inputText.text = [NSString stringWithFormat:@"%f",finalTotalAmount];
    } else if([operation  isEqual: @"*"]){

        finalTotalAmount = finalTotalAmount *number;
        self.inputText.text = [NSString stringWithFormat:@"%f",finalTotalAmount];
    } else if([operation  isEqual: @"/"]){

        finalTotalAmount = finalTotalAmount /number;
        self.inputText.text = [NSString stringWithFormat:@"%f",finalTotalAmount];
    } else if ([operation  isEqual: @"%"]){

        finalTotalAmount = finalTotalAmount +(number / 100);
        self.inputText.text = [NSString stringWithFormat:@"%f",finalTotalAmount];
    } else if ([operation  isEqual: @"+/-"]){

        finalTotalAmount = finalTotalAmount * -1; 
        self.inputText.text = [NSString stringWithFormat:@"%f",finalTotalAmount];
    }
}
- (IBAction)periodButtonTapped:(id)sender {

}
- (IBAction)oneButtonTapped:(id)sender {
   // finalTotalAmount = [self.inputText.text intValue] + 1;
    number = number * 10;
    number = number + 1;

    self.inputText.text = [NSString stringWithFormat:@"%d", number];

}

- (IBAction)twoButtonTapped:(id)sender {
    number = number * 10;
    number = number + 2;

    self.inputText.text = [NSString stringWithFormat:@"%d", number];
}
- (IBAction)threeButtonTapped:(id)sender {
    number = number * 10;
    number = number + 3;

    self.inputText.text = [NSString stringWithFormat:@"%d", number];
}
- (IBAction)fourButtonTapped:(id)sender {
    number = number * 10;
    number = number + 4;

    self.inputText.text = [NSString stringWithFormat:@"%d", number];
}
- (IBAction)fiveButtonTapped:(id)sender {
    number = number * 10;
    number = number + 5;

    self.inputText.text = [NSString stringWithFormat:@"%d", number];
}

- (IBAction)sixButtonTapped:(id)sender {    number = number * 10;
    number = number + 6;

    self.inputText.text = [NSString stringWithFormat:@"%d", number];

}
- (IBAction)sevenButtonTapped:(id)sender {
    number = number * 10;
    number = number + 7;

    self.inputText.text = [NSString stringWithFormat:@"%d", number];
}
- (IBAction)eightButtonTapped:(id)sender {
    number = number * 10;
    number = number + 8;

    self.inputText.text = [NSString stringWithFormat:@"%d", number];
}
- (IBAction)nineButtonTapped:(id)sender {
    number = number * 10;
    number = number + 9;

    self.inputText.text = [NSString stringWithFormat:@"%d", number];
}
- (IBAction)zeroButtonTapped:(id)sender {
    number = number * 10;
    number = number + 0;

    self.inputText.text = [NSString stringWithFormat:@"%d", number];
}




@end
