//
//  RootViewController.h
//  TestView
//
//  Created by songyanming on 13-8-23.
//  Copyright (c) 2013年 songyanming. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController<UIGestureRecognizerDelegate>
{
    UIPageControl *_pageControl;
    UIImageView * imgV;
    
}
@property(nonatomic,retain)UIPageControl *_pageControl;
@property(nonatomic,retain)UIImageView * imgV;
@end
