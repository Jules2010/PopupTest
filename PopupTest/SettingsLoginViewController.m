//
//  SettingsLoginViewController.m
//  PopupTest
//
//  Created by Julian Moorhouse on 14/09/2015.
//  Copyright (c) 2015 Julian Moorhouse. All rights reserved.
//

#import "SettingsLoginViewController.h"

@interface SettingsLoginViewController ()

@end

@implementation SettingsLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnCloseTapped:(id)sender {
    
    
//    [self.presentingPopinViewController dismissCurrentPopinControllerAnimated:YES completion:^{
//        NSLog(@"Popin dismissed !");
//        [self.navigationController popViewControllerAnimated:YES];
//        
//    }];
    
        [self dismissCurrentPopinControllerAnimated:YES completion:^{
            NSLog(@"Popin dismissed !");
            [self.navigationController popViewControllerAnimated:YES];
    
        }];
    
}
@end
