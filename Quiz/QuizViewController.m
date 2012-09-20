//
//  QuizViewController.m
//  Quiz
//
//  Created by Avijeet Sachdev on 9/6/12.
//  Copyright (c) 2012 Avijeet Sachdev. All rights reserved.
//

#import "QuizViewController.h"

@implementation QuizViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil

{

//Call init method that is implemented by the superclass
self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];


if (self) {
    //Creating two arrays and making pointers point toward them
    questions = [[NSMutableArray alloc] init];
    answers = [[NSMutableArray alloc] init];
    
    //Adding the questions and answers to the array now. YAY!
    [questions addObject:@"What is the capital of California?"];
    [answers addObject:@"Sacramento."];
    
    [questions addObject:@"Who said, 'Veni Vedi Vici'?"];
    [answers addObject:@"Ceasar."];
    
    [questions addObject:@"How long is each round in a boxing match?"];
    [answers addObject:@"3 minutes."];
    
    [questions addObject:@"How many Ivy League schools are there in the world?"];
    [answers addObject:@"7."];
    
    [questions addObject:@"How many months have 31 days?"];
    [answers addObject:@"7."];
    
    [questions addObject:@"Who invented the telephone?"];
    [answers addObject:@"Alexander Grand Bell."];
    
    [questions addObject:@"How much does a liter of water weigh?"];
    [answers addObject:@"1 kilogram (kg)."];
    
    [questions addObject:@"What is the smallest ocean?"];
    [answers addObject:@"Arctic Ocean."];
    
    [questions addObject:@"Who did John Lennon marry?"];
    [answers addObject:@"Yoko Ono."];
}

    //Return the address of the new object.
return self;
    
}

-(IBAction)showQuestions:(id)sender
{
    //Step to the next questions
    currentQuestionIndex++;
    
    //Am I past the last question? 
    if (currentQuestionIndex == [questions count]) {
        
        //Go back to the first question
        currentQuestionIndex = 0;
    }

    //Get the string at that index in the questions aray
    NSString *question = [questions objectAtIndex:currentQuestionIndex];

    //Log the string to the console
    NSLog(@"displaying questio: %@", question);

    
    //Display the string in the question field
    [questionField setText:question];


    //Clear the answer field
    [answerField setText:@"???"];
}

- (IBAction)showAnswer:(id)sender
{

    //What is the answer to the current question? 
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    //Display it in the answer field. DONE!
    [answerField setText:answer];
}
@end
