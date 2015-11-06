//
//  TuWanListViewController.h
//  BaseProject
//
//  Created by apple-jd21 on 15/11/6.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TuWanListViewController : UITableViewController

/** 接收外部传参，决定当前控制器显示暗中类型的信息 */
@property (nonatomic, strong) NSNumber *infoType;

@end
