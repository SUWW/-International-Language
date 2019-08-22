//
//  ViewController.m
//  InternationalLanguage
//
//  Created by su on 2019/8/21.
//  Copyright © 2019 su. All rights reserved.
//

#import "ViewController.h"
#define ASLocalizedString(key)  [NSString stringWithFormat:@"%@", [[NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@",[[NSUserDefaults standardUserDefaults] objectForKey:@"appLanguage"]] ofType:@"lproj"]] localizedStringForKey:(key) value:nil table:@"Localizable"]]
static NSString *appLanguage = @"appLanguage";
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button1 =[UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame =CGRectMake(50, 100, 50, 20);
    button1.backgroundColor =[UIColor blueColor];
    [button1 setTitle:@"中文" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(button1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    UIButton *button2 =[UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame =CGRectMake(200, 100, 50, 20);
    button2.backgroundColor =[UIColor blueColor];
    [button2 setTitle:@"英文" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(button2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
    NSString *name =ASLocalizedString(@"name");
    NSLog(@"我是谁=%@",name);
    // Do any additional setup after loading the view.
}
-(void)button1
{
    NSLog(@"我是中文");
     [[NSUserDefaults standardUserDefaults] setObject:@"zh-Hans" forKey:appLanguage];
}
-(void)button2
{
     [[NSUserDefaults standardUserDefaults] setObject:@"en" forKey:appLanguage];
    NSLog(@"我是英文");
}
@end
