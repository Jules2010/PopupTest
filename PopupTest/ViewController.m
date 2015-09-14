//
//  ViewController.m
//  PopupTest
//
//  Created by Julian Moorhouse on 14/09/2015.
//  Copyright (c) 2015 Julian Moorhouse. All rights reserved.
//

#import "ViewController.h"
#import "SettingsLoginViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnOpenTapped:(id)sender {
    
    
    SettingsLoginViewController *vc = (SettingsLoginViewController*)[[self storyboard] instantiateViewControllerWithIdentifier: @"sb_SettingsLoginViewController"];
    
    vc.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain
                                                                          target:self action:nil];
    
    
    UINavigationController *popin = [[UINavigationController alloc] initWithRootViewController:vc];
    
    
    [popin setPopinTransitionStyle:0];//[self transitionStyleForIndexPath:selectedIndexPath]];
    //
    //
    //    if ([self isDismissable]) {
    //        [popin setPopinOptions:BKTPopinDefault];
    //    } else {
    [popin setPopinOptions:BKTPopinDisableAutoDismiss];
    //    }
    //
    //    //Set popin alignement according to value in segmented control
    [popin setPopinAlignment:0];//self.selectedAlignementOption];
    //
    //Create a blur parameters object to configure background blur
    BKTBlurParameters *blurParameters = [BKTBlurParameters new];
    blurParameters.alpha = 1.0f;
    blurParameters.radius = 10.0f;
    blurParameters.saturationDeltaFactor = 1.0f;
    blurParameters.tintColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.5];
    [popin setBlurParameters:blurParameters];
    
    //Add option for a blurry background
    [popin setPopinOptions:[popin popinOptions]|BKTPopinBlurryDimmingView];
    
    
    [popin setPreferedPopinContentSize:CGSizeMake(600, 600)];
    
    //Set popin transition direction
    [popin setPopinTransitionDirection:BKTPopinTransitionDirectionTop];
    
    //UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:popin];
    
    [self presentPopinController:popin animated:YES completion:^{
        NSLog(@"Popin presented !");
    }];
}
@end
