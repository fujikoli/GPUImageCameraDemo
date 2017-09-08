//
//  CameraViewController.m
//  GPUImageCameraDemo
//
//  Created by fujikoli(李鑫) on 2017/9/8.
//  Copyright © 2017年 fujikoli(李鑫). All rights reserved.
//

#import "CameraViewController.h"



@implementation CameraViewController

- (void)viewDidLoad
{
    
    [self.navigationController setNavigationBarHidden:YES];
    self.view.backgroundColor = [UIColor blackColor];

    self.cameraManager = [[Camera alloc] init];
    
    self.cameraManager.cameraScreen = [[GPUImageView alloc] initWithFrame:self.view.bounds];
    
    self.cameraManager.cameraScreen.fillMode = kGPUImageFillModePreserveAspectRatioAndFill;
    
    [self.view addSubview:self.cameraManager.cameraScreen];

    [self.cameraManager startCamera];

    _cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _cancelButton.frame = CGRectMake(self.view.bounds.size.width * 1/4, self.view.bounds.size.height - 100, 60, 60);
    [_cancelButton setImage:[UIImage imageNamed:@"close-button"] forState: UIControlStateNormal];
    _cancelButton.accessibilityLabel = @"Close Camera Viewer";
    [_cancelButton addTarget:self action:@selector(dismissController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_cancelButton];

}

- (void)viewDidAppear:(BOOL)animated
{
    [_cancelButton setEnabled:YES];
}

- (void)viewWillDisappear:(BOOL)animated
{

}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissController];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)dealloc
{

}

- (void)dismissController
{
    [self.cameraManager stopCamera];
    [_delegate imagePickerDidCancel];
}

@end
