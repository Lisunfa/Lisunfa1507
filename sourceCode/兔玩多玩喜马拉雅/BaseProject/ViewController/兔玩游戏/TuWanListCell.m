//
//  TuWanListCell.m
//  BaseProject
//
//  Created by apple-jd21 on 15/11/6.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "TuWanListCell.h"

@implementation TuWanListCell

- (UIImageView *)iconimageView{
    if (!_iconimageView) {
        _iconimageView = [UIImageView new];
        //内容模式：保持比例，填充满
        _iconimageView.contentMode = UIViewContentModeScaleAspectFill;
    }
    return _iconimageView;
}
- (UILabel *)titleLabel{
    if (!_titleLabel) {
        _titleLabel = [UILabel new];
        _titleLabel.font = [UIFont systemFontOfSize:17];
        
        
    }
    return _titleLabel;
}
- (UILabel *)longTitleLabel{
    if (!_longTitleLabel) {
        _longTitleLabel = [UILabel new];
        _longTitleLabel.font = [UIFont systemFontOfSize:14];
        _longTitleLabel.textColor = [UIColor lightGrayColor];
        
    }
    return _longTitleLabel;
}
- (UILabel *)clickNumLabel{
    if (!_clickNumLabel) {
        _clickNumLabel = [UILabel new];
        _clickNumLabel.font = [UIFont systemFontOfSize:12];
        _clickNumLabel.textColor = [UIColor lightGrayColor];
        
    }
    return _clickNumLabel;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.iconimageView];
        [self.contentView addSubview:self.titleLabel];
        [self.contentView addSubview:self.longTitleLabel];
        [self.contentView addSubview:self.clickNumLabel];
        
        //图片的约束 左10 宽高92 70 竖向居中
        [self.iconimageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(10);
            make.size.mas_equalTo(CGSizeMake(92, 70));
            make.centerY.mas_equalTo(0);
        }];
        //题目的约束 距离图片左边缘8 右边缘10 上边缘比图片多3像素
        [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.iconimageView.mas_right).mas_equalTo(8);
            make.right.mas_equalTo(-10);
            make.topMargin.mas_equalTo(self.iconimageView.mas_topMargin).mas_equalTo(3);
        }];
        //长题目的约束 左右边缘与题目一样，上边距离题目下边缘8像素
        [self.longTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leftMargin.mas_equalTo(self.titleLabel.mas_leftMargin);
            make.rightMargin.mas_equalTo(self.titleLabel.mas_rightMargin);
            make.top.mas_equalTo(self.titleLabel.mas_bottom).mas_equalTo(8);
        }];
        //点击数的约束 下边缘与图片对齐， 右边缘与任意title对齐
        [self.clickNumLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottomMargin.mas_equalTo(self.iconimageView.mas_bottomMargin);
            make.rightMargin.mas_equalTo(self.titleLabel.mas_rightMargin);
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
