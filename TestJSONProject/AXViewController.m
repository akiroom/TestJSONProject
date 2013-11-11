//
//  AXViewController.m
//  TestJSONProject
//
//  Created by Hiroki Akiyama (office) on 2013/11/11.
//  Copyright (c) 2013年 akiroom. All rights reserved.
//

#import "AXViewController.h"

@interface AXViewController ()

@end

@implementation AXViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  [button setTitle:@"JSON test" forState:UIControlStateNormal];
  [button addTarget:self action:@selector(json:) forControlEvents:UIControlEventTouchUpInside];
  [button sizeToFit];
  [button setCenter:(CGPoint){CGRectGetMidX(self.view.bounds), CGRectGetMidY(self.view.bounds)}];
  [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void)json:(id)sender
{
  NSURL *url = [NSURL URLWithString:@"http://b.hatena.ne.jp/entry/json/?url=http%3A%2F%2Fwww.hatena.ne.jp%2F"];
  NSData *jsonData = [NSData dataWithContentsOfURL:url];
  id jsonObject = [NSJSONSerialization JSONObjectWithData:jsonData
                                                  options:NSJSONReadingAllowFragments
                                                    error:NULL];
  NSLog(@"%@", [jsonObject description]);
}
@end
