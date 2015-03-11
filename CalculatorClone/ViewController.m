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
@property float finalTotalAmount;
@property int number;
@property NSString *operation;
@end



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
    self.number = 0;

    self.inputText.text = @"0";
    self.finalTotalAmount = 0;


}

- (IBAction)plusOrMinusButtonTapped:(id)sender {
    self.operation = @"+/-";
    self.finalTotalAmount = self.number;


}
- (IBAction)percentButtonTapped:(id)sender {
    self.operation = @"%";

    self.finalTotalAmount = self.number;
    self.number = 0;

}

- (IBAction)divisionButtonTapped:(id)sender {
    self.operation = @"/";
    self.inputText.text = @"0";
    self.finalTotalAmount = self.number;
    self.number = 0;
}

- (IBAction)timesButtonTapped:(id)sender {

    self.operation = @"*";
    self.inputText.text = @"";
    self.finalTotalAmount = self.number;
    self.number = 0;
}
- (IBAction)minusButtonTapped:(id)sender {
    self.operation = @"-";
    self.inputText.text = @"0";
    self.finalTotalAmount = self.number;
    self.number = 0;


}
- (IBAction)plusButtonTapped:(id)sender {
    self.operation = @"+";
    self.inputText.text = @"0";
    self.number = 0;


}
- (IBAction)equalButtonTapped:(id)sender {
    if ([self.operation  isEqual: @"+"]){

        self.finalTotalAmount = self.finalTotalAmount + self.number;

        self.inputText.text = [NSString stringWithFormat:@"%f",self.finalTotalAmount];
    } else if([self.operation  isEqual: @"-"]){

        self.finalTotalAmount = self.finalTotalAmount - self.number;
         self.inputText.text = [NSString stringWithFormat:@"%f",self.finalTotalAmount];
    } else if([self.operation  isEqual: @"*"]){

        self.finalTotalAmount = self.finalTotalAmount * self.number;
        self.inputText.text = [NSString stringWithFormat:@"%f", self.finalTotalAmount];
    } else if([self.operation  isEqual: @"/"]){

        self.finalTotalAmount = self.finalTotalAmount / self.number;
        self.inputText.text = [NSString stringWithFormat:@"%f",self.finalTotalAmount];
    } else if ([self.operation  isEqual: @"%"]){

        self.finalTotalAmount = self.finalTotalAmount +(self.number / 100);
        self.inputText.text = [NSString stringWithFormat:@"%f",self.finalTotalAmount];
    } else if ([self.operation  isEqual: @"+/-"]){

        self.finalTotalAmount = self.finalTotalAmount * -1;
        self.inputText.text = [NSString stringWithFormat:@"%f", self.finalTotalAmount];
    }
}
- (IBAction)periodButtonTapped:(id)sender {


}
- (IBAction)oneButtonTapped:(id)sender {
   // finalTotalAmount = [self.inputText.text intValue] + 1;
    self.number = self.number * 10;
    self.number = self.number + 1;

    self.inputText.text = [NSString stringWithFormat:@"%d", self.number];

}

- (IBAction)twoButtonTapped:(id)sender {
    self.number = self.number * 10;
    self.number = self.number + 2;

    self.inputText.text = [NSString stringWithFormat:@"%d", self.number];
}
- (IBAction)threeButtonTapped:(id)sender {
    self.number = self.number * 10;
    self.number = self.number + 3;

    self.inputText.text = [NSString stringWithFormat:@"%d", self.number];
}
- (IBAction)fourButtonTapped:(id)sender {
    self.number = self.number * 10;
    self.number = self.number + 4;

    self.inputText.text = [NSString stringWithFormat:@"%d", self.number];
}
- (IBAction)fiveButtonTapped:(id)sender {
    self.number = self.number * 10;
    self.number = self.number + 5;

    self.inputText.text = [NSString stringWithFormat:@"%d", self.number];
}

- (IBAction)sixButtonTapped:(id)sender {    self.number = self.number * 10;
    self.number = self.number + 6;

    self.inputText.text = [NSString stringWithFormat:@"%d", self.number];

}
- (IBAction)sevenButtonTapped:(id)sender {
    self.number = self.number * 10;
    self.number = self.number + 7;

    self.inputText.text = [NSString stringWithFormat:@"%d", self.number];
}
- (IBAction)eightButtonTapped:(id)sender {
    self.number = self.number * 10;
    self.number = self.number + 8;

    self.inputText.text = [NSString stringWithFormat:@"%d", self.number];
}
- (IBAction)nineButtonTapped:(id)sender {
    self.number = self.number * 10;
    self.number = self.number + 9;

    self.inputText.text = [NSString stringWithFormat:@"%d", self.number];
}
- (IBAction)zeroButtonTapped:(id)sender {
    self.number = self.number * 10;
    self.number = self.number + 0;

    self.inputText.text = [NSString stringWithFormat:@"%d", self.number];
}

- (float) getRidOfZeroes:(float) floatNumber{

    int someInt = (int)floatNumber;
    return someInt / 100;
}



@end
