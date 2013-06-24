//
//  choicesViewController.m
//  Choices
//
//  Created by Eduardo Sierra on 6/24/13.
//  Copyright (c) 2013 Eduardo Sierra. All rights reserved.
//

#import "choicesViewController.h"

@interface choicesViewController ()

@end

@implementation choicesViewController

- (void)viewDidLoad
{
    
    self.num1.delegate = self;
    self.num2.delegate = self;
    self.num3.delegate = self;
    self.num4.delegate = self;
    self.num5.delegate = self;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    return [textField resignFirstResponder];
}

- (IBAction)go:(id)sender
{

    self.stringFromNum1 = self.num1.text;
    self.stringFromNum2 = self.num2.text;
    self.stringFromNum3 = self.num3.text;
    self.stringFromNum4 = self.num4.text;
    self.stringFromNum5 = self.num5.text;
    
    self.choices = [[NSMutableArray alloc] initWithCapacity:5];
    
    if(![self.stringFromNum1 isEqualToString:@""])
    {
        [self.choices addObject:self.stringFromNum1];
    }
    if(![self.stringFromNum2 isEqualToString:@""])
    {
        [self.choices addObject:self.stringFromNum2];
    }
    if(![self.stringFromNum3 isEqualToString:@""])
    {
        [self.choices addObject:self.stringFromNum3];
    }
    if(![self.stringFromNum4 isEqualToString:@""])
    {
        [self.choices addObject:self.stringFromNum4];
    }
    if(![self.stringFromNum5 isEqualToString:@""])
    {
        [self.choices addObject:self.stringFromNum5];
    }
    
    int index = arc4random() % [self.choices count];
    self.answer.text = self.choices[index];

}

@end
