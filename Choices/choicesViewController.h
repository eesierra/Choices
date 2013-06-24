//
//  choicesViewController.h
//  Choices
//
//  Created by Eduardo Sierra on 6/24/13.
//  Copyright (c) 2013 Eduardo Sierra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface choicesViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, strong) NSMutableArray *choices;

@property (weak, nonatomic) IBOutlet UITextField *num1;
@property (weak, nonatomic) IBOutlet UITextField *num2;
@property (weak, nonatomic) IBOutlet UITextField *num3;
@property (weak, nonatomic) IBOutlet UITextField *num4;
@property (weak, nonatomic) IBOutlet UITextField *num5;

@property (strong, nonatomic) NSString *stringFromNum1;
@property (strong, nonatomic) NSString *stringFromNum2;
@property (strong, nonatomic) NSString *stringFromNum3;
@property (strong, nonatomic) NSString *stringFromNum4;
@property (strong, nonatomic) NSString *stringFromNum5;


@property (weak, nonatomic) IBOutlet UIButton *go;
@property (weak, nonatomic) IBOutlet UILabel *answer;

- (IBAction)go:(id)sender;


@end
