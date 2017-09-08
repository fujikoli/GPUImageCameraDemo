//
//  CameraViewController.h
//  GPUImageCameraDemo
//
//  Created by fujikoli(李鑫) on 2017/9/8.
//  Copyright © 2017年 fujikoli(李鑫). All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import "Camera.h"

@protocol ImagePickerControllerDelegate <NSObject>

@required
- (void)imagePickerDidCancel;
@end


@interface CameraViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (nonatomic,assign) id<ImagePickerControllerDelegate> delegate;
@property (strong, nonatomic) UIButton *cancelButton;
@property (nonatomic , strong) Camera *cameraManager;

@end
