//
//  OneColumCell.m
//  ProductListDiffStyleDemo
//
//  Created by crw on 6/20/16.
//  Copyright © 2016 crw. All rights reserved.
//

#import "OneColumCell.h"
#import "ProductInfoModel.h"

@interface OneColumCell()

@property (weak, nonatomic) IBOutlet UIImageView *mImageView;

@property (weak, nonatomic) IBOutlet UILabel *mTitleLabel;

@property (weak, nonatomic) IBOutlet UILabel *mDescLabel;

@property (nonatomic, strong) ProductInfoModel     *model;

@end

@implementation OneColumCell

- (void)setProductInfoModel:(ProductInfoModel *)model{
    _model = model;
    
    _mTitleLabel.text = model.title;
    
    _mDescLabel.text  = model.desc;
    
    if (model.image) {
        _mImageView.image = model.image;
    }
}

@end
