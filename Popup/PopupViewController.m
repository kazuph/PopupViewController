//
//  TestViewController.m
//  Popup
//
//  Created by タカ on 2014/08/23.
//  Copyright (c) 2014年 Taka. All rights reserved.
//

#import "PopupViewController.h"

@implementation PopupViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
}

- (IBAction)close:(id)sender
{
  [UIView animateWithDuration:0.2f
                   animations:^{
                     self.view.alpha = 0.2f;
                   }
                   completion:^(BOOL finished){
                     [self.view removeFromSuperview];
                     self.view.alpha = 1.f;
                   }];
}

@end
