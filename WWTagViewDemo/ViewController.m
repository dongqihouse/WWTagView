//
//  ViewController.m
//  WWTagViewDemo
//
//  Created by 董奇 on 2017/8/28.
//  Copyright © 2017年 董奇. All rights reserved.
//

#import "ViewController.h"
#import "WWTagView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet WWTagView *testVIew;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}
- (IBAction)switchAction:(UISwitch *)sender {
    BOOL on = sender.isOn;
    TagDirection direction = on == YES ? TagDirectionLeft : TagDirectionRight;
    self.testVIew.direction = direction;
}
- (IBAction)sliderAction:(UISlider *)sender {
    CGFloat value = 80 * sender.value;
    self.testVIew.tagHeight = value;
}


@end
