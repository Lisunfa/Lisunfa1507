//
//  TuWanImageCell.m
//  BaseProject
//
//  Created by apple-jd21 on 15/11/6.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "TuWanImageCell.h"

@implementation TuWanImageCell

- (UILabel *)titleLabel{
    if (!_titleLabel) {
        _titleLabel = [UILabel new];
        _titleLabel.font = [UIFont systemFontOfSize:17];
    }
    return _titleLabel;
}
- (UILabel *)clicksNumLabel{
    if (!_clicksNumLabel) {
        _clicksNumLabel = [UILabel new];
        _clicksNumLabel.font = [UIFont systemFontOfSize:12];
        _clicksNumLabel.textColor = [UIColor lightGrayColor];
    }
    return _clicksNumLabel;
}
- (UIImageView *)iconImageView0{
    if (!_iconImageView0) {
        _iconImageView0 = [UIImageView new];
        _iconImageView0.contentMode = UIViewContentModeScaleAspectFill;
    }
    return _iconImageView0;
}
- (UIImageView *)iconImageView1{
    if (!_iconImageView1) {
        _iconImageView1 = [UIImageView new];
        _iconImageView1.contentMode = UIViewContentModeScaleAspectFill;
    }
    return _iconImageView1;
}
- (UIImageView *)iconImageView2{
    if (!_iconImageView2) {
        _iconImageView2 = [UIImageView new];
        _iconImageView2.contentMode = UIViewContentModeScaleAspectFill;
    }
    return _iconImageView2;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        [self.contentView addSubview:self.titleLabel];
        [self.contentView addSubview:self.clicksNumLabel];
        [self.contentView addSubview:self.iconImageView0];
        [self.contentView addSubview:self.iconImageView1];
        [self.contentView addSubview:self.iconImageView2];
        /** 题目的约束 左上 10， 右10 */
        [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.mas_equalTo(10);
            make.right.mas_equalTo(_clicksNumLabel.mas_left).mas_equalTo(-10);
        }];
        /** 点击数的约束 上右 10，宽最大 70， 最小40  */
        [self.clicksNumLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(10);
            make.right.mas_equalTo(-10);
            make.width.mas_greaterThanOrEqualTo(40).mas_lessThanOrEqualTo(70);
        }];
        /** 图片：宽高相等，间距5， 边缘10 高度88 */
        [self.iconImageView0 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.mas_equalTo(88);
            make.left.mas_equalTo(10);
            make.top.mas_equalTo(self.titleLabel.mas_bottom).mas_equalTo(5);
        }];
        [self.iconImageView1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(self.iconImageView0);
            make.left.mas_equalTo(self.iconImageView0.mas_right).mas_equalTo(5);
            make.topMargin.mas_equalTo(self.iconImageView0);
        }];
        [self.iconImageView2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(self.iconImageView0);
            make.topMargin.mas_equalTo(self.iconImageView0);
            make.left.mas_equalTo(self.iconImageView1.mas_right).mas_equalTo(5);
            make.right.mas_equalTo(-10);
        }];
        
        
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
