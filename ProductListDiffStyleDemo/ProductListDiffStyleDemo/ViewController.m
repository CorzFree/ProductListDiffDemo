//
//  ViewController.m
//  ProductListDiffStyleDemo
//
//  Created by crw on 6/20/16.
//  Copyright © 2016 crw. All rights reserved.
//

#import "ViewController.h"
#import "OneColumCell.h"
#import "MulColumCell.h"

#import "ProductInfoModel.h"

static const NSInteger kColumn = 3;

@interface ViewController ()<UICollectionViewDelegateFlowLayout,UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *mCollectionView;

@property (nonatomic, strong) NSMutableArray     *dataArray;

@property (nonatomic, assign) BOOL     isSingleLine;///< YES-> tableview   NO->多列

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataArray = @[].mutableCopy;
    
    [self loadData];
}

- (void)loadData{
    for (NSInteger i = 0; i < 20 ; i ++ ) {
        NSString *title = [NSString stringWithFormat:@"title - %ld",(long)i];
        NSString *desc  = [NSString stringWithFormat:@"desc - %ld",(long)i];
        
        [self.dataArray addObject:[[ProductInfoModel alloc] initWithTitle:title desc:desc image:nil]];
    }
}

#pragma mark - action
- (IBAction)change:(id)sender {
    self.isSingleLine = !self.isSingleLine;
    [self.mCollectionView reloadData];
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.dataArray.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    ProductInfoModel *model = self.dataArray[indexPath.row];
    if (self.isSingleLine)
    {
        OneColumCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([OneColumCell class]) forIndexPath:indexPath];
        [cell setProductInfoModel:model];
        return cell;
    }
    else
    {
        MulColumCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([MulColumCell class]) forIndexPath:indexPath];
        [cell setProductInfoModel:model];
        return cell;
    }
}


#pragma mark - UICollectionViewDelegate
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    if (self.isSingleLine) {
        return CGSizeMake([self screenSize].width, 139);
    }
    return CGSizeMake([self screenSize].width / kColumn , 143);
}

#pragma mark - getter
- (CGSize)screenSize{
    return [UIScreen mainScreen].bounds.size;
}
@end
