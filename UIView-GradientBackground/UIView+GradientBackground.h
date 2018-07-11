//
//  UIView+GradientBackground.h
//  VChat
//
//  Created by changcun on 29/08/2017.
//  Copyright © 2017 Beijing Xiaochang Technology Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CBGradientView : UIView
@end

@interface UIView (GradientBackground)

/**
 *  Gradient a view's background
 *  @praram fromColor begin color of gradient
 *  @praram toColor end color of gradient
 */

- (void)cb_gradientBackgroundFromColor:(UIColor *)fromColor
                               toColor:(UIColor *)toColor;

/**
 *  Gradient a view's background
 *  @praram fromPoint start point of gradient default (0, 0)
 *  @praram toPoint end point of gradient default (1, 1)
 *  @praram fromColor begin color of gradient
 *  @praram toColor end color of gradient
 */

- (void)cb_gradientBackgroundFromColor:(UIColor *)fromColor
                               toColor:(UIColor *)toColor
                             fromPoint:(CGPoint)fromPoint
                               toPoint:(CGPoint)toPoint;

/**
 *  Gradient a view's background
 *  @praram fromPoint start point of gradient default (0, 0)
 *  @praram toPoint end point of gradient default (1, 1)
 *  @praram fromColor begin color of gradient
 *  @praram toColor end color of gradient
 *  @praram useAutoLayout default YES
 */
- (void)cb_gradientBackgroundFromColor:(UIColor *)fromColor
                               toColor:(UIColor *)toColor
                             fromPoint:(CGPoint)fromPoint
                               toPoint:(CGPoint)toPoint
                         useAutoLayout:(BOOL)useAutoLayout;

- (void)cb_removeGradientBackground;

@end
