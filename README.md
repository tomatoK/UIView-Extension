# UIView-Extension
BatchAddSubview

    UIView *oneSubView = [[UIView alloc] init];
    oneSubView.frame = CGRectMake(50, 50, 100, 100);
    
    UIView *twoSubView = [[UIView alloc] init];
    twoSubView.frame = CGRectMake(50, 200, 20, 20);
    
    UIView *threeSubView = [[UIView alloc] init];
    threeSubView.frame = CGRectMake(200, 200, 50, 50);
    
    [self.view batchAddSubview:oneSubView, twoSubView, threeSubView, nil];
    // or
    // [self.view batchAddSubviews:@[oneSubView, twoSubView, threeSubView]];
