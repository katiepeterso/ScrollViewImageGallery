//
//  ViewController.m
//  ScrollViewImageGalleries
//
//  Created by Katherine Peterson on 2015-09-07.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *imageGalleryView;
@property (strong, nonatomic) IBOutlet UIImageView *image1;
@property (strong, nonatomic) IBOutlet UIImageView *image2;
@property (strong, nonatomic) IBOutlet UIImageView *image3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.image1.image = [UIImage imageNamed:@"Lighthouse-in-Field"];
    
    self.image2.image = [UIImage imageNamed:@"Lighthouse-night"];
    
    self.image3.image = [UIImage imageNamed:@"Lighthouse"];
    
//    NSLayoutConstraint *image1Width = [NSLayoutConstraint constraintWithItem:self.image1 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.imageGalleryView attribute:NSLayoutAttributeWidth multiplier:1.0 constant:0];
//    
//    NSLayoutConstraint *image1Height = [NSLayoutConstraint constraintWithItem:self.image1 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.imageGalleryView attribute:NSLayoutAttributeHeight multiplier:1.0 constant:0];
//    
//    NSLayoutConstraint *image1LeftMargin = [NSLayoutConstraint constraintWithItem:self.image1 attribute:NSLayoutAttributeLeftMargin relatedBy:NSLayoutRelationEqual toItem:self.imageGalleryView attribute:NSLayoutAttributeLeftMargin multiplier:1.0 constant:0];
//    
//    NSLayoutConstraint *image1TopMargin = [NSLayoutConstraint constraintWithItem:self.image1 attribute:NSLayoutAttributeTopMargin relatedBy:NSLayoutRelationEqual toItem:self.imageGalleryView attribute:NSLayoutAttributeTopMargin multiplier:1.0 constant:0];
//    
//    NSLayoutConstraint *imageGalleryWidth = [NSLayoutConstraint constraintWithItem:self.imageGalleryView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeWidth multiplier:1.0 constant:0];
//    
//    NSLayoutConstraint *imageGalleryHeight = [NSLayoutConstraint constraintWithItem:self.imageGalleryView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeHeight multiplier:1.0 constant:0];
//    
//    NSLayoutConstraint *imageGalleryLeftMargin = [NSLayoutConstraint constraintWithItem:self.imageGalleryView attribute:NSLayoutAttributeLeftMargin relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeftMargin multiplier:1.0 constant:0];
//    
//    NSLayoutConstraint *imageGalleryTopMargin = [NSLayoutConstraint constraintWithItem:self.imageGalleryView attribute:NSLayoutAttributeTopMargin relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTopMargin multiplier:1.0 constant:0];
//
//    [self.view addConstraints:@[imageGalleryHeight, imageGalleryLeftMargin, imageGalleryWidth, imageGalleryTopMargin]];
//    [self.imageGalleryView addConstraints:@[image1Width, image1LeftMargin, image1Height, image1TopMargin]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
