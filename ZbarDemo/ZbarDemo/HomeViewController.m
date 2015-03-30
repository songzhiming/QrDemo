//
//  HomeViewController.m
//  ZbarDemo
//
//  Created by 宋志明 on 15-3-30.
//  Copyright (c) 2015年 songzm. All rights reserved.
//

#import "HomeViewController.h"


@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)creatView{    //用于响应扫描事件，点击开始扫描
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setFrame:CGRectMake(110, 200, 100, 40)];
    [button setTitle:@"扫描" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(scanButtonPressed:) forControlEvents:UIControlEventTouchUpInside]; [self.view addSubview:button];
    //用于显示扫描到的图像
    UIImageView *imageview = [[UIImageView alloc]initWithFrame:CGRectMake(20, 50, 280, 280)];
    [self.view addSubview:imageview];
    //用于显示扫描到的信息
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(20, 356, 280, 68)];
    [self.view addSubview:label];
}

- (IBAction)onclickSaomiao:(id)sender {
   ZBarReaderViewController *reader = [[ZBarReaderViewController alloc]init];
    reader.readerDelegate = self;
    reader.supportedOrientationsMask = ZBarOrientationMaskAll;
    ZBarImageScanner *scanner = reader.scanner;
    [scanner setSymbology:ZBAR_I25 config:ZBAR_CFG_ENABLE to:0];
    [self presentViewController:reader animated:YES completion:nil];
}

- (void) imagePickerController: (UIImagePickerController*) reader didFinishPickingMediaWithInfo: (NSDictionary*) info{
    //通过info获得结果
    
    NSLog(@"info====%@",info);
    
//    id<NSFastEnumeration> results =    [info objectForKey: ZBarReaderControllerResults];
//    ZBarSymbol *symbol = nil;
//    for(symbol in results)        break;
//    imageview.image =    [info objectForKey: UIImagePickerControllerOriginalImage];
//    //扫描界面退出
//    [reader dismissViewControllerAnimated:YES completion:nil];
}



@end
