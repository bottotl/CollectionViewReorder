# CollectionViewReorder

系统在调用 endInteractiveMovement 之后会做一个动画（把 cell 放到它应该在的未知）然后调用一次 cellForItem 确保显示正常。

过程是 endInteractiveMovement→animation → cellForItem

如果在 endInteractiveMovement 中调用 reloadData 并不会保证所有 Cell 都得到刷新。


解决方案：

1、在 - (NSIndexPath *)collectionView:(UICollectionView *)collectionView targetIndexPathForMoveFromItemAtIndexPath:(NSIndexPath *)originalIndexPath toProposedIndexPath:(NSIndexPath *)proposedIndexPath 回调用记录一个标志位。

2、在 cellForItem 判断这个标志位

3、如果满足标志位

dispatch_async(dispatch_get_main_queue(), ^{

            [self.collectionView reloadData];

});
