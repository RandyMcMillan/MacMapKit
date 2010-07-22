//
//  MKMapView+DelegateWrappers.m
//  MapKit
//
//  Created by Rick Fillion on 7/22/10.
//  Copyright 2010 Centrix.ca. All rights reserved.
//

#import "MKMapView+DelegateWrappers.h"


@implementation MKMapView (DelegateWrappers)

- (void)delegateRegionWillChangeAnimated:(BOOL)animated
{
    if (delegate && [delegate respondsToSelector:@selector(mapView:regionWillChangeAnimated:)])
    {
        [delegate mapView:self regionWillChangeAnimated:animated];
    }
}

- (void)delegateRegionDidChangeAnimated:(BOOL)animated
{
    if (delegate && [delegate respondsToSelector:@selector(mapView:regionDidChangeAnimated:)])
    {
        [delegate mapView:self regionDidChangeAnimated:animated];
    }
}

- (void)delegateDidUpdateUserLocation
{
    if (delegate && [delegate respondsToSelector:@selector(mapView:didUpdateUserLocation:)])
    {
        [delegate mapView:self didUpdateUserLocation:userLocation];
    }
}

- (void)delegateDidFailToLocateUserWithError:(NSError *)error
{
    if (delegate && [delegate respondsToSelector:@selector(mapView:didFailToLocateUserWithError:)])
    {
        [delegate mapView:self didFailToLocateUserWithError:error];
    }
}

- (void)delegateWillStartLocatingUser
{
    if (delegate && [delegate respondsToSelector:@selector(mapViewWillStartLocatingUser:)])
    {
        [delegate mapViewWillStartLocatingUser:self];
    }
}

- (void)delegateDidStopLocatingUser
{
    if (delegate && [delegate respondsToSelector:@selector(mapViewDidStopLocatingUser:)])
    {
        [delegate mapViewDidStopLocatingUser:self];
    }
}

- (void)delegateDidAddOverlayViews:(NSArray *)someOverlayViews
{
    if (delegate && [delegate respondsToSelector:@selector(mapView:didAddOverlayViews:)])
    {
        [delegate mapView:self didAddOverlayViews:someOverlayViews];
    }
}

- (void)delegateDidAddAnnotationViews:(NSArray *)someAnnotationViews
{
    if (delegate && [delegate respondsToSelector:@selector(mapView:didAddAnnotationViews:)])
    {
        [delegate mapView:self didAddAnnotationViews:someAnnotationViews];
    }
}

- (void)delegateDidSelectAnnotationView:(MKAnnotationView *)view
{
    if (delegate && [delegate respondsToSelector:@selector(mapView:didSelectAnnotationView:)])
    {
        [delegate mapView:self didSelectAnnotationView:view];
    }
}

- (void)delegateDidDeselectAnnotationView:(MKAnnotationView *)view
{
    if (delegate && [delegate respondsToSelector:@selector(mapView:didDeselectAnnotationView:)])
    {
        [delegate mapView:self didDeselectAnnotationView:view];
    }
}

- (void)delegateAnnotationView:(MKAnnotationView *)annotationView 
            didChangeDragState:(MKAnnotationViewDragState)newState 
                  fromOldState:(MKAnnotationViewDragState)oldState
{
    if (delegate && [delegate respondsToSelector:@selector(mapView:annotationView:didChangeDragState:fromOldState:)])
    {
        [delegate mapView:self annotationView:annotationView didChangeDragState:newState fromOldState:oldState];
    }
}


@end
