//
//  ViewController.m
//  unit1_objc_helloworld
//
//  Created by JasonMBP on 2019/11/14.
//  Copyright © 2019 JasonMBP. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UILabel *label;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"ViewController:viewDidLoad");
    //UILabel *label = [[UILabel alloc] init];
    //[label setFrame:CGRectMake(0, 0, 400, 100)];
    CGFloat viewWidth = self.view.frame.size.width;
    CGFloat viewHeight = self.view.frame.size.height;
    self.label = [[UILabel alloc] initWithFrame:CGRectMake((viewWidth - 300) / 2, (viewHeight - 40) / 2, 300, 40)];
    self.label.textAlignment = NSTextAlignmentCenter;
    [self.label setBackgroundColor:[UIColor lightTextColor]];
    self.label.layer.borderColor = [[UIColor blackColor] CGColor];
    self.label.layer.borderWidth = 1.0f;
    self.label.layer.cornerRadius = 5.0f;
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake((viewWidth - 150) / 2, CGRectGetMaxY(self.label.frame) + 20 , 150, 44)];
    [button setTitle:@"請點我" forState:UIControlStateNormal];
    [button setTitle:@"恢復" forState:UIControlStateSelected];
    [button setBackgroundColor:[UIColor whiteColor]];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    button.layer.borderColor = [[UIColor blackColor] CGColor];
    button.layer.shadowOpacity = 0.5;
    button.layer.shadowOffset = CGSizeMake(3.0, 3.0);
    button.layer.borderWidth = 1.0f;
    button.layer.cornerRadius = 5.0f;
    [button addTarget:self action:@selector(handleButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view setBackgroundColor:[UIColor cyanColor]];
    [self.view addSubview:self.label];
    [self.view addSubview:button];
    
}

//- (void)handleButtonClicked:(id)sender {
//    UIButton *button = (UIButton *)sender;
//    if (button.isSelected) {
//        button.selected = NO;
//        self.label.text = @"";
//    } else {
//        button.selected = YES;
//        self.label.text = @"Hello World!!! Amber AppTeam";
//    }
//}

- (void)handleButtonClicked:(UIButton *)sender {
    if (sender.isSelected) {
        sender.selected = NO;
        self.label.text = @"請點擊下方按鈕";
    } else {
        sender.selected = YES;
        self.label.text = @"Hello World!!! Amber AppTeam";
    }
}


@end
