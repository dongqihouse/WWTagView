//
//  WWTagView.h
//  ProtocolCategory
//
//  Created by 董奇 on 2017/8/28.
//  Copyright © 2017年 董奇. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef  NS_ENUM(NSInteger, TagDirection) {
    TagDirectionRight = 1,
    TagDirectionLeft = -1
};

@interface WWTagView : UIView


/**
 tag label 默认背景红色 12号白色字体
 */
@property (nonatomic, strong) UILabel *textLabel;

/**
 tag direction 默认为右边
 */
@property (nonatomic, assign) TagDirection direction;

/**
 tag height 默认1/4 width 的高度
 */
@property (nonatomic, assign) CGFloat tagHeight;
@end
