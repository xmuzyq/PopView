//
// Created by @krq_tiger on 13-7-8.
// Copyright (c) 2013 kariqu. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "MainViewController.h"
#import "PopDemoView.h"


@implementation MainViewController {
    PopViewController *_popViewController;

}
- (void)viewDidLoad {
    [super viewDidLoad];
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(presentView)];
    [self.view addGestureRecognizer:tapGestureRecognizer];
    tapGestureRecognizer.delegate=self;

    _popViewController = [[PopViewController alloc] initWithPopViewClass:NSStringFromClass(PopDemoView.class)];
    [_popViewController setup:self delegate:self];
}

- (void)presentView {
    [_popViewController presentInView:self.view animation:YES];
}


- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    return YES;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    return YES;
}


@end