//
//  ViewController.h
//  HomeworkConstrains_Parus
//
//  Created by Aleksandra Borovytskaya on 6/22/15.
//  Copyright (c) 2015 Aleksandra Borovytskaya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property(nonatomic, strong) UIView *redView;
@property(nonatomic, strong) UIView *pinkView;
@property(nonatomic, strong) UIView *blueView;
@property(nonatomic, strong) UIView *yellowView;
@property(nonatomic, strong) UIView *orangeView;
@property(nonatomic, strong) UIView *greenView;

- (void)setupLayout;
@end

