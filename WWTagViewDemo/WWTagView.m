//
//  WWTagView.m
//  ProtocolCategory
//
//  Created by 董奇 on 2017/8/28.
//  Copyright © 2017年 董奇. All rights reserved.
//

#import "WWTagView.h"
@interface WWTagView()

@end

@implementation WWTagView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initializeSubview];
    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self initializeSubview];
    }
    return self;
}


- (void)updateConstraints {
    [super updateConstraints];
    
    [self setupTextLabelFrameAndDirection];
}

- (void)initializeSubview {
    _direction = TagDirectionLeft;
    _tagHeight = self.frame.size.width/4.0;

    
    self.textLabel = [[UILabel alloc] init];
    self.clipsToBounds = YES;
    self.textLabel.backgroundColor = [UIColor redColor];
    self.textLabel.textAlignment = NSTextAlignmentCenter;
    self.textLabel.textColor = [UIColor whiteColor];
    self.textLabel.font = [UIFont systemFontOfSize:12];
    self.textLabel.text = @"Tag";
    [self addSubview:self.textLabel];
}


- (void)setupTextLabelFrameWithHeight:(CGFloat)height {
    CGRect frame = self.frame;
    CGFloat width = frame.size.width;
    
    CGFloat centerX = 0;
    CGFloat centerY =  0;
    if (_direction == TagDirectionRight) {
        centerX = (width/2.0 + height/2.0 * sqrt(2)/2) ;
        centerY = width - centerX;
    }else {
        centerX = (width/2.0 - height/2.0 * sqrt(2)/2) ;
        centerY =  centerX;
    }
    
    self.textLabel.frame = CGRectMake(0, 0, width*2, height);
    self.textLabel.center = CGPointMake(centerX, centerY);
}
- (void)setupTextLabelFrameAndDirection {
    double dir = _direction == TagDirectionRight ? 1.0 : -1.0;
    _textLabel.transform = CGAffineTransformIdentity;
    
    [self setupTextLabelFrameWithHeight:_tagHeight];
    _textLabel.transform = CGAffineTransformMakeRotation(dir * M_PI_4);
}

- (void)setDirection:(TagDirection )direction {
    _direction = direction;
    
    [self setupTextLabelFrameAndDirection];


}

- (void)setTagHeight:(CGFloat)tagHeight {
    CGFloat width = self.frame.size.width;
    if (tagHeight < 0 || tagHeight > width /2.0 * sqrt(2)) {
        return;
    }
    _tagHeight = tagHeight;
    [self setupTextLabelFrameAndDirection];
}
@end
