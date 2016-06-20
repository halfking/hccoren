//
//  FirstViewController.m
//  HCCorenTest
//
//  Created by HUANGXUTAO on 16/5/4.
//  Copyright © 2016年 seenvoice.com. All rights reserved.
//

#import "FirstViewController.h"
#import "CMD_GetMtvInfo.h"
#import "Json.h"
#import "base.h"
#import "CMDS.h"
#import "HCCallbackresult.h"
#import "HCFileManager.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    UIButton * btn = [UIButton alloc]initWithFrame:CGRectMake(50, 50, <#CGFloat width#>, <#CGFloat height#>)
    
    HCFileManager * manager = [HCFileManager manager];
    NSString * fileName = [manager getFileName:@"/Users/huangxutao/Library/Developer/CoreSimulator/Devices/B299442B-51B6-46FE-86AF-B508537ADDA5/data/Containers/Bundle/Application/9A005E17-2BDF-48B3-BC4E-F151D5D75EDA/HCMVManagerTest.app/test2.MOV"];
    NSLog(@"fileName:%@",fileName);
    
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
