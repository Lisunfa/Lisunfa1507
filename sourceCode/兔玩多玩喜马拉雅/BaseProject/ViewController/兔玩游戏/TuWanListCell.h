//
//  TuWanListCell.h
//  BaseProject
//
//  Created by apple-jd21 on 15/11/6.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TuWanListCell : UITableViewCell

/** 左侧图片 */
@property (nonatomic, strong) UIImageView *iconimageView;
/** 题目标签 */
@property (nonatomic, strong) UILabel *titleLabel;
/** 长题目标签 */
@property (nonatomic, strong) UILabel *longTitleLabel;
/** 点击数标签 */
@property (nonatomic, strong) UILabel *clickNumLabel;

@end
