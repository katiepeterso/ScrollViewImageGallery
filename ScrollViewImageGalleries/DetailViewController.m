//
//  DetailViewController.m
//  ScrollViewImageGalleries
//
//  Created by Katherine Peterson on 2015-09-07.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()<UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *detailScrollView;
@property (strong, nonatomic) IBOutlet UIImageView *detailImageView;

@end

@implementation DetailViewController

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.detailImageView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.detailImageView.image = self.imageFromMainVC;
    [self zoomIntoScrollView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)zoomIntoScrollView {
    
    self.detailScrollView.minimumZoomScale = 0.25;
    self.detailScrollView.maximumZoomScale = 4.0;
    self.detailScrollView.zoomScale = 1.0;
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
