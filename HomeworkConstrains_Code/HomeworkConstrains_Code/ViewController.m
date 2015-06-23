//
//  ViewController.m
//  HomeworkConstrains_Code
//
//  Created by Aleksandra Borovytskaya on 6/23/15.
//  Copyright (c) 2015 Aleksandra Borovytskaya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.redView = [[UIView alloc]init];
    self.blueView = [[UIView alloc]init];
    self.pinkView = [[UIView alloc]init];
    
    NSArray *colors = @[[UIColor redColor],[UIColor blueColor], [UIColor colorWithRed:0.905 green:0.0 blue:0.552 alpha:1.0]];

    [@[self.redView, self.blueView, self.pinkView] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop)
    {
      [obj setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self.view addSubview:obj];

        [obj setBackgroundColor:colors[idx]];
        [obj setAlpha:0.5];
    }];

    [self setupLayout];
}

- (void)setupLayout {

//    Left of red to Parent
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self.redView
                                                                  attribute:NSLayoutAttributeLeading
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.view
                                                                  attribute:NSLayoutAttributeLeft
                                                                 multiplier:1
                                                                   constant:5];
    [self.view addConstraint:constraint];

//    Top red to top of parent
    constraint = [NSLayoutConstraint constraintWithItem:self.redView
                                              attribute:NSLayoutAttributeTop
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.view
                                              attribute:NSLayoutAttributeTop
                                             multiplier:1
                                               constant:20];
    [self.view addConstraint:constraint];

//    Bottom of Red to bottom of parent

    constraint = [NSLayoutConstraint constraintWithItem:self.redView
                                              attribute:NSLayoutAttributeBottom
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.view
                                              attribute:NSLayoutAttributeBottom
                                             multiplier:1
                                               constant:-5];
    [self.view addConstraint:constraint];

//    Horizontal spacing between red and blue

    constraint = [NSLayoutConstraint constraintWithItem:self.redView
                                              attribute:NSLayoutAttributeTrailing
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.blueView
                                              attribute:NSLayoutAttributeLeading
                                             multiplier:1
                                               constant:-5];
    [self.view addConstraint:constraint];

//    Top of blue to top of parent

    constraint = [NSLayoutConstraint constraintWithItem:self.blueView
                                              attribute:NSLayoutAttributeTop
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.view
                                              attribute:NSLayoutAttributeTop
                                             multiplier:1
                                               constant:20];
    [self.view addConstraint:constraint];

//   Trailing of blue to the right of parent

    constraint = [NSLayoutConstraint constraintWithItem:self.blueView
                                              attribute:NSLayoutAttributeTrailing
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.view
                                              attribute:NSLayoutAttributeRight
                                             multiplier:1
                                               constant:-5];
    [self.view addConstraint:constraint];

//    Bottom of blue to the top of the pink

    constraint = [NSLayoutConstraint constraintWithItem:self.blueView
                                              attribute:NSLayoutAttributeBottom
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.pinkView
                                              attribute:NSLayoutAttributeTop
                                             multiplier:1
                                               constant:-5];
    [self.view addConstraint:constraint];

//    Leading of pink to the right of red

    constraint = [NSLayoutConstraint constraintWithItem:self.pinkView
                                              attribute:NSLayoutAttributeLeading
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.redView
                                              attribute:NSLayoutAttributeRight
                                             multiplier:1
                                               constant: 5];
    [self.view addConstraint:constraint];

//    Trailing of pink to the right of parent

    constraint = [NSLayoutConstraint constraintWithItem:self.pinkView
                                              attribute:NSLayoutAttributeTrailing
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.view
                                              attribute:NSLayoutAttributeRight
                                             multiplier:1
                                               constant: 5];
    [self.view addConstraint:constraint];

//    Bottom of pink to the bottom of parent
    constraint = [NSLayoutConstraint constraintWithItem:self.pinkView
                                              attribute:NSLayoutAttributeBottom
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.view
                                              attribute:NSLayoutAttributeBottom
                                             multiplier:1
                                               constant: -5];
    [self.view addConstraint:constraint];

//    Blue and pink has equal height

    constraint = [NSLayoutConstraint constraintWithItem:self.blueView
                                              attribute:NSLayoutAttributeHeight
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.pinkView
                                              attribute:NSLayoutAttributeHeight
                                             multiplier:1
                                               constant:0];
    [self.view addConstraint:constraint];

//    Blue and pink has equal width

    constraint = [NSLayoutConstraint constraintWithItem:self.blueView
                                              attribute:NSLayoutAttributeWidth
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.pinkView
                                              attribute:NSLayoutAttributeWidth
                                             multiplier:1
                                               constant:0];
    [self.view addConstraint:constraint];

//    Red and blue has equal width

    constraint = [NSLayoutConstraint constraintWithItem:self.redView
                                              attribute:NSLayoutAttributeWidth
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.blueView
                                              attribute:NSLayoutAttributeWidth
                                             multiplier:1
                                               constant:0];
    [self.view addConstraint:constraint];


}

-(NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}

@end
