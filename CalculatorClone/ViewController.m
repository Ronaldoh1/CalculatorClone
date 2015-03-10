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





@end
