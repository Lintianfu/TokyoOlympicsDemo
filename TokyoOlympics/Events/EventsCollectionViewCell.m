//
//  EventsCollectionViewCell.m
//  TokyoOlympics
//
//  Created by Mr.TF on 2020/1/26.
//  Copyright © 2020 Mr.TF. All rights reserved.
//

#import "EventsCollectionViewCell.h"

@implementation EventsCollectionViewCell
-(id)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if(self)
    {
        CGFloat cellWidth=self.frame.size.width;
        CGFloat imageViewWidth=100;
        CGFloat imageViewHeight=100;
        CGFloat imageViewTopView=0;
        self.imageview = [[UIImageView alloc] initWithFrame: CGRectMake((cellWidth - imageViewWidth) / 2, imageViewTopView, imageViewWidth, imageViewHeight)];
        [self addSubview:self.imageview];
    }
    return self;
}
@end
