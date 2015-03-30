//
//  QrViewController.h
//  ZbarDemo
//
//  Created by 宋志明 on 15-3-30.
//  Copyright (c) 2015年 songzm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QrViewController : UIViewController
{
    __weak IBOutlet UIButton *startBtn;
    __weak IBOutlet UIView *viewPreview;
    __weak IBOutlet UILabel *lblStatus;
}

@end
