//
//  MulColumCell.m
//  ProductListDiffStyleDemo
//
//  Created by crw on 6/20/16.
//  Copyright © 2016 crw. All rights reserved.
//

#import "MulColumCell.h"
#import "ProductInfoModel.h"

@interface MulColumCell()

@property (weak, nonatomic) IBOutlet UIImageView *mImageView;

@property (weak, nonatomic) IBOutlet UILabel *mTitleLabel;

@property (nonatomic, strong) ProductInfoModel     *model;

@end

@implementation MulColumCell

- (void)setProductInfoModel:(ProductInfoModel *)model{
    _model = model;
    
    _mTitleLabel.text = model.title;
    
    if (model.image) {
        _mImageView.image = model.image;
    }
}

@end
