//
//  ViewController.m
//  Popup
//
//  Created by タカ on 2014/08/22.
//  Copyright (c) 2014年 Taka. All rights reserved.
//

#import "ViewController.h"
#import "PopupViewController.h"

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
}

- (IBAction)popup:(id)sender
{
  PopupViewController *popupViewController = [[PopupViewController alloc] init];
  [self addChildViewController:popupViewController];
  [popupViewController didMoveToParentViewController:self];
  [self.view addSubview:popupViewController.view];
  
  CGPoint center = popupViewController.contentView.center;
  
  UIView* view = popupViewController.contentView;
  
  view.transform = CGAffineTransformScale(CGAffineTransformIdentity,0.5f,0.5f);
  view.center = center;
  
  [UIView animateWithDuration:0.2
                        delay:0.0
                      options:UIViewAnimationOptionCurveEaseInOut
                   animations:^{
                     view.transform = CGAffineTransformIdentity;
                     view.center = center;
                   }
                   completion:nil];
  
}

@end
