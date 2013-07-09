//
// Created by @krq_tiger on 13-7-8.
// Copyright (c) 2013 kariqu. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <QuartzCore/QuartzCore.h>
#import "PopDemoView.h"


@implementation PopDemoView {

}

- (UIView *)createContentView:(CGRect)frame popDirection:(PopDirection)popDirection {
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(frame.origin.x, 0, frame.size.width, 320)];
    contentView.backgroundColor = [UIColor purpleColor];
    contentView.layer.cornerRadius = 8;
    return contentView;
}


@end