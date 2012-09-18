//
//  QuizAppDelegate.h
//  Quiz
//
//  Created by Avijeet Sachdev on 9/6/12.
//  Copyright (c) 2012 Avijeet Sachdev. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QuizViewController;

@interface QuizAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) QuizViewController *viewController;

@end
