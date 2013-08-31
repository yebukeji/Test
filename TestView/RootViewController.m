//
//  RootViewController.m
//  TestView
//
//  Created by songyanming on 13-8-23.
//  Copyright (c) 2013年 songyanming. All rights reserved.
//

#import "RootViewController.h"


@interface RootViewController ()

@end

@implementation RootViewController
@synthesize _pageControl,imgV;
-(void)dealloc
{
    [_pageControl release];
    [imgV release];
    [super dealloc];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.imgV = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.height, self.view.frame.size.width)];
    self.imgV.image = [UIImage imageNamed:@"0.jpg"];
    [self.imgV setUserInteractionEnabled:YES];
    [self.view addSubview:self.imgV];
    
    UISwipeGestureRecognizer *swipright = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipright)];
    [swipright setDirection:UISwipeGestureRecognizerDirectionRight];
    [self.imgV addGestureRecognizer:swipright];
    swipright.delegate = self;
    [swipright release];
    
    UISwipeGestureRecognizer *swipleft = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipleft)];
    [swipleft setDirection:UISwipeGestureRecognizerDirectionLeft];
    [self.imgV addGestureRecognizer:swipleft];
    swipleft.delegate = self;
    [swipleft release];
  
    self._pageControl = [[UIPageControl alloc]initWithFrame:CGRectMake(0, self.view.frame.size.width-20, 320, 20)];
    self._pageControl.backgroundColor = [UIColor clearColor];
    self._pageControl.userInteractionEnabled = YES;
    self._pageControl.numberOfPages = 20;
    [self._pageControl addTarget:self action:@selector(changePage:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self._pageControl];
    self.view.autoresizesSubviews = YES;
}


-(void)changePage:(UIPageControl*)sender
{
//    NSLog(@"%d",sender.currentPage);
//    self.imgV.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",sender.currentPage]];
    
    
}


-(void)swipleft
{
    
    self.imgV.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", _pageControl.currentPage+1]];
    _pageControl.currentPage++;
        
    
}


-(void)swipright
{
    if(_pageControl.currentPage>0)
    imgV.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",self._pageControl.currentPage-1]];
    [self.view addSubview:imgV];
    _pageControl.currentPage--;
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
