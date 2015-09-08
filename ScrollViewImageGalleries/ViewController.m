//
//  ViewController.m
//  ScrollViewImageGalleries
//
//  Created by Katherine Peterson on 2015-09-07.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController () <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *imageGalleryView;
@property (strong, nonatomic) IBOutlet UIImageView *image1;
@property (strong, nonatomic) IBOutlet UIImageView *image2;
@property (strong, nonatomic) IBOutlet UIImageView *image3;
@property (strong, nonatomic) NSArray *imageArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.image1.image = [UIImage imageNamed:@"Lighthouse-in-Field"];
    self.image2.image = [UIImage imageNamed:@"Lighthouse-night"];
    self.image3.image = [UIImage imageNamed:@"Lighthouse"];
    self.imageArray = @[self.image1.image, self.image2.image, self.image3.image];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)imageTapped:(UITapGestureRecognizer *)sender {
    int imageNumber = self.imageGalleryView.contentOffset.x / self.imageGalleryView.frame.size.width;
    UIImage *currentImage = [self.imageArray objectAtIndex:imageNumber];
    [self performSegueWithIdentifier:@"showImageDetail" sender:currentImage];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIImage *)sender {
    
    if ([segue.identifier isEqualToString:@"showImageDetail"]) {
        
        DetailViewController *newImageDetailVC = segue.destinationViewController;
        newImageDetailVC.imageFromMainVC = sender;
    }
    
}


@end
