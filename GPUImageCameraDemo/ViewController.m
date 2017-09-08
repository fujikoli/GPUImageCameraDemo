//
//  ViewController.m
//  GPUImageCameraDemo
//
//  Created by fujikoli(李鑫) on 2017/9/8.
//  Copyright © 2017年 fujikoli(李鑫). All rights reserved.
//

#import "ViewController.h"

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

- (IBAction)initClicked:(id)sender {
    CameraViewController *imagePicker = [[CameraViewController alloc] init];
    
    [imagePicker setDelegate:self];
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:imagePicker];
    
    [self presentViewController:navigationController animated:YES completion:nil];
}

- (void)imagePickerDidCancel
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
