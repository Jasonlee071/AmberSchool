//
//  ViewController.m
//  unit1_objc_helloworld
//
//  Created by JasonMBP on 2019/11/14.
//  Copyright © 2019 JasonMBP. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"ViewController:viewDidLoad");
    //UILabel *label = [[UILabel alloc] init];
    //[label setFrame:CGRectMake(0, 0, 400, 100)];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 400, 100)];
    label.text = @"Hello World!!! Amber AppTeam";
    [self.view addSubview:label];
    
}


@end
