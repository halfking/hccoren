//
//  SecondViewController.m
//  HCCorenTest
//
//  Created by HUANGXUTAO on 16/5/4.
//  Copyright © 2016年 seenvoice.com. All rights reserved.
//

#import "SecondViewController.h"
#import "CMD_GetMtvInfo.h"
#import "Json.h"
#import "base.h"
#import "CMDS.h"
#import "HCCallbackresult.h"
#import "publicconfig.h"
@interface SecondViewController ()
{
    UITextView * textView_;
}
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    textView_ = [[UITextView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:textView_];
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    __block NSString * text = textView_.text?textView_.text:@"";
    text = [text stringByAppendingString:@"\n\rrequest....."];
    textView_.text = text;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        CMD_CREATE(cmd, GetMtvInfo, @"GetMtvInfo");
        cmd.MtvID = 3741;
        cmd.HasSample = NO;
        //    [self showProgressHUDWithMessage:@"waiting...	"];
        cmd.CMDCallBack = ^(HCCallbackResult * result)
        {
            text = [text stringByAppendingFormat:@"%d",result.Code];
            //        [self hideProgressHUD:YES];
            if(result.Code==0)
            {
                if (result.Data) {
                    //NSlog(@"data:%@",[result.Data json])
                }
            }
            dispatch_async(dispatch_get_main_queue(), ^{
                textView_.text = text;    
            });
            
        };
        if ([cmd sendCMD]) {
            //        [self hideProgressHUD:YES];
        }
        cmd = nil;
    });
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
