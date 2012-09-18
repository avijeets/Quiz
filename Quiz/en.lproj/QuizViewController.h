//
//  QuizViewController.h
//  Quiz
//
//  Created by Avijeet Sachdev on 9/6/12.
//  Copyright (c) 2012 Avijeet Sachdev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController

{

int currentQuestionIndex;

//Model Objects
NSMutableArray *questions;
NSMutableArray *answers;

//View objects
IBOutlet UILabel *questionField;
IBOutlet UILabel *answerField;

}

- (IBAction)showQuestions:(id)sender;
- (IBAction)showAnswer:(id)sender;
    
@end
