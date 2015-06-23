//
//  ViewController.m
//  HomeworkConstrains_Parus
//
//  Created by Aleksandra Borovytskaya on 6/22/15.
//  Copyright (c) 2015 Aleksandra Borovytskaya. All rights reserved.
//

#import "ViewController.h"
#import "PVGroup.h"
#import "PVLayout.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.redView = [[UIView alloc] init];
    self.pinkView = [[UIView alloc] init];
    self.blueView = [[UIView alloc] init];
    self.yellowView = [[UIView alloc] init];
    self.orangeView = [[UIView alloc] init];
    self.greenView = [[UIView alloc] init];

    NSArray *colors = @[[UIColor redColor],
            [UIColor colorWithRed:0.905 green:0.0 blue:0.552 alpha:1.0],
            [UIColor blueColor],
            [UIColor yellowColor],
            [UIColor orangeColor],
            [UIColor greenColor]];

    [@[self.redView, self.pinkView, self.blueView, self.yellowView, self.orangeView, self.greenView]
            enumerateObjectsUsingBlock:^(UIView *obj, NSUInteger idx, BOOL *stop) {
                [obj setTranslatesAutoresizingMaskIntoConstraints:NO];
                [self.view addSubview:obj];

                [obj setBackgroundColor:colors[idx]];
                [obj setAlpha:0.5];
            }];


    [self setupLayout];
}
 -(void) setupLayout {
     [self.view addConstraints:PVGroup(@[
             PVLeadingOf(self.redView).equalTo.leftOf(self.view).plus(5),
             PVTopOf(self.redView).equalTo.topOf(self.view).plus(20),
             PVTrailingOf(self.redView).equalTo.trailingOf(self.view).minus (5),
             PVHeightOf(self.redView).equalTo.heightOf(self.pinkView),

             PVLeadingOf(self.pinkView).equalTo.leadingOf(self.view).plus (5),
             PVHeightOf(self.pinkView).equalTo.heightOf(self.redView),
             PVWidthOf(self.pinkView).equalTo.widthOf(self.blueView),
             PVTopOf(self.pinkView).equalTo.bottomOf(self.redView).plus (5),
             PVBottomOf(self.pinkView).equalTo.topOf(self.orangeView).minus (5),

             PVLeadingOf(self.blueView).equalTo.trailingOf(self.pinkView).plus(5),
             PVWidthOf(self.blueView).equalTo.widthOf(self.yellowView),
             PVHeightOf(self.blueView).equalTo.heightOf(self.pinkView),
             PVCenterYOf(self.blueView).equalTo.centerYOf(self.pinkView),

             PVLeadingOf(self.yellowView).equalTo.trailingOf(self.blueView).plus(5),
             PVHeightOf(self.yellowView).equalTo.heightOf(self.blueView),
             PVWidthOf(self.yellowView).equalTo.widthOf(self.pinkView),
             PVTrailingOf(self.yellowView).equalTo.trailingOf(self.view).minus (5),
             PVCenterYOf(self.yellowView).equalTo.centerYOf(self.pinkView),

             PVLeadingOf(self.orangeView).equalTo.leadingOf(self.view).plus (5),
             PVHeightOf(self.orangeView).equalTo.heightOf(self.redView),
             PVBottomOf(self.orangeView).equalTo.bottomOf(self.view).minus (5),

             PVLeadingOf(self.greenView).equalTo.trailingOf(self.orangeView).plus (5),
             PVHeightOf(self.greenView).equalTo.heightOf(self.redView),
             PVWidthOf(self.greenView).equalTo.widthOf(self.orangeView),
             PVBottomOf(self.greenView).equalTo.bottomOf(self.view).minus (5),
             PVTrailingOf(self.greenView).equalTo.trailingOf(self.view).minus (5),

    ]) .asArray];

 }


-(NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}


@end
