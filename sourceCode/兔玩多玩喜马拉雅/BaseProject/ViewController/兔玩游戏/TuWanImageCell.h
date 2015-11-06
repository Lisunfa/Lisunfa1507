//
//  TuWanImageCell.h
//  BaseProject
//
//  Created by apple-jd21 on 15/11/6.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TuWanImageCell : UITableViewCell

/** 题目标签 */
@property (nonatomic, strong) UILabel *titleLabel;
/** 点击数标签 */
@property (nonatomic, strong) UILabel *clicksNumLabel;
/** 图片1 */
@property (nonatomic, strong) UIImageView *iconImageView0;
/** 图片2 */
@property (nonatomic, strong) UIImageView *iconImageView1;
/** 图片3 */
@property (nonatomic, strong) UIImageView *iconImageView2;


@end
