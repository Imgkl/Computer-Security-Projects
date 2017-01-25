.class Lcom/julysystems/appx/AppXFullScrollView;
.super Landroid/widget/FrameLayout;
.source "AppXFullScrollView.java"


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final MAX_SCROLL_FACTOR:F = 0.5f

.field static final TAG:Ljava/lang/String; = "FullScrollView"

.field static final localLOGV:Z


# instance fields
.field private mChildToScrollTo:Landroid/view/View;

.field private mFillViewportX:Z

.field private mFillViewportY:Z

.field private mIsBeingDraggedX:Z

.field private mIsBeingDraggedY:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mScrollViewMovedFocus:Z

.field protected mScrollX:I

.field protected mScrollY:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/julysystems/appx/AppXFullScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 136
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Lcom/julysystems/appx/AppXFullScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 97
    iput-boolean v2, p0, Lcom/julysystems/appx/AppXFullScrollView;->mIsLayoutDirty:Z

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 111
    iput-boolean v1, p0, Lcom/julysystems/appx/AppXFullScrollView;->mIsBeingDraggedX:Z

    .line 112
    iput-boolean v1, p0, Lcom/julysystems/appx/AppXFullScrollView;->mIsBeingDraggedY:Z

    .line 129
    iput-boolean v2, p0, Lcom/julysystems/appx/AppXFullScrollView;->mSmoothScrollingEnabled:Z

    .line 141
    invoke-direct {p0}, Lcom/julysystems/appx/AppXFullScrollView;->initScrollView()V

    .line 151
    return-void
.end method

.method private canScrollX()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-virtual {p0, v2}, Lcom/julysystems/appx/AppXFullScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 281
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 283
    .local v1, "childWidth":I
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v1

    .line 284
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 283
    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 286
    .end local v1    # "childWidth":I
    :cond_0
    return v2
.end method

.method private canScrollY()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 293
    invoke-virtual {p0, v2}, Lcom/julysystems/appx/AppXFullScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 294
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 296
    .local v1, "childHeight":I
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v1

    .line 297
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    .line 296
    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 299
    .end local v1    # "childHeight":I
    :cond_0
    return v2
.end method

.method private clamp(III)I
    .locals 1
    .param p1, "n"    # I
    .param p2, "my"    # I
    .param p3, "child"    # I

    .prologue
    .line 1808
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    .line 1818
    :cond_0
    const/4 p1, 0x0

    .line 1827
    .end local p1    # "n":I
    :cond_1
    :goto_0
    return p1

    .line 1820
    .restart local p1    # "n":I
    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    .line 1825
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method private doScrollX(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    .line 1219
    if-eqz p1, :cond_0

    .line 1220
    iget-boolean v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1221
    invoke-virtual {p0, p1, v1}, Lcom/julysystems/appx/AppXFullScrollView;->smoothScrollBy(II)V

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/julysystems/appx/AppXFullScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    .line 1235
    if-eqz p1, :cond_0

    .line 1236
    iget-boolean v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1237
    invoke-virtual {p0, v1, p1}, Lcom/julysystems/appx/AppXFullScrollView;->smoothScrollBy(II)V

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1239
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/julysystems/appx/AppXFullScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBoundsX(ZII)Landroid/view/View;
    .locals 11
    .param p1, "leftFocus"    # Z
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 815
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/julysystems/appx/AppXFullScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 816
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 825
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    .line 827
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 828
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v0, :cond_0

    .line 881
    return-object v1

    .line 829
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 830
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 831
    .local v8, "viewLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    .line 833
    .local v9, "viewRight":I
    if-ge p2, v9, :cond_1

    if-ge v8, p3, :cond_1

    .line 839
    if-ge p2, v8, :cond_2

    if-ge v9, p3, :cond_2

    const/4 v7, 0x1

    .line 842
    .local v7, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_3

    .line 844
    move-object v1, v5

    .line 845
    move v3, v7

    .line 828
    .end local v7    # "viewIsFullyContained":Z
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 839
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 847
    .restart local v7    # "viewIsFullyContained":Z
    :cond_3
    if-eqz p1, :cond_4

    .line 848
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v8, v10, :cond_6

    .line 849
    :cond_4
    if-nez p1, :cond_5

    .line 850
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    .line 847
    if-gt v9, v10, :cond_6

    :cond_5
    const/4 v6, 0x0

    .line 852
    .local v6, "viewIsCloserToBoundary":Z
    :goto_3
    if-eqz v3, :cond_7

    .line 853
    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    .line 859
    move-object v1, v5

    .line 861
    goto :goto_2

    .line 847
    .end local v6    # "viewIsCloserToBoundary":Z
    :cond_6
    const/4 v6, 0x1

    goto :goto_3

    .line 862
    .restart local v6    # "viewIsCloserToBoundary":Z
    :cond_7
    if-eqz v7, :cond_8

    .line 867
    move-object v1, v5

    .line 868
    const/4 v3, 0x1

    .line 869
    goto :goto_2

    :cond_8
    if-eqz v6, :cond_1

    .line 874
    move-object v1, v5

    goto :goto_2
.end method

.method private findFocusableViewInBoundsY(ZII)Landroid/view/View;
    .locals 11
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 907
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/julysystems/appx/AppXFullScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 908
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 917
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    .line 919
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 920
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v0, :cond_0

    .line 973
    return-object v1

    .line 921
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 922
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 923
    .local v9, "viewTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 925
    .local v6, "viewBottom":I
    if-ge p2, v6, :cond_1

    if-ge v9, p3, :cond_1

    .line 931
    if-ge p2, v9, :cond_2

    if-ge v6, p3, :cond_2

    const/4 v8, 0x1

    .line 934
    .local v8, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_3

    .line 936
    move-object v1, v5

    .line 937
    move v3, v8

    .line 920
    .end local v8    # "viewIsFullyContained":Z
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 931
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 939
    .restart local v8    # "viewIsFullyContained":Z
    :cond_3
    if-eqz p1, :cond_4

    .line 940
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_6

    .line 941
    :cond_4
    if-nez p1, :cond_5

    .line 942
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 939
    if-gt v6, v10, :cond_6

    :cond_5
    const/4 v7, 0x0

    .line 944
    .local v7, "viewIsCloserToBoundary":Z
    :goto_3
    if-eqz v3, :cond_7

    .line 945
    if-eqz v8, :cond_1

    if-eqz v7, :cond_1

    .line 951
    move-object v1, v5

    .line 953
    goto :goto_2

    .line 939
    .end local v7    # "viewIsCloserToBoundary":Z
    :cond_6
    const/4 v7, 0x1

    goto :goto_3

    .line 954
    .restart local v7    # "viewIsCloserToBoundary":Z
    :cond_7
    if-eqz v8, :cond_8

    .line 959
    move-object v1, v5

    .line 960
    const/4 v3, 0x1

    .line 961
    goto :goto_2

    :cond_8
    if-eqz v7, :cond_1

    .line 966
    move-object v1, v5

    goto :goto_2
.end method

.method private findFocusableViewInMyBoundsX(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "leftFocus"    # Z
    .param p2, "left"    # I
    .param p3, "preferredFocusable"    # Landroid/view/View;

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 737
    .local v0, "fadingEdgeLength":I
    add-int v1, p2, v0

    .line 738
    .local v1, "leftWithoutFadingEdge":I
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    .line 740
    .local v2, "rightWithoutFadingEdge":I
    if-eqz p3, :cond_0

    .line 741
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_0

    .line 742
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 746
    .end local p3    # "preferredFocusable":Landroid/view/View;
    :goto_0
    return-object p3

    .restart local p3    # "preferredFocusable":Landroid/view/View;
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Lcom/julysystems/appx/AppXFullScrollView;->findFocusableViewInBoundsX(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private findFocusableViewInMyBoundsY(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "preferredFocusable"    # Landroid/view/View;

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getVerticalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 778
    .local v1, "fadingEdgeLength":I
    add-int v2, p2, v1

    .line 779
    .local v2, "topWithoutFadingEdge":I
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v0, v3, v1

    .line 782
    .local v0, "bottomWithoutFadingEdge":I
    if-eqz p3, :cond_0

    .line 783
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v0, :cond_0

    .line 784
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 788
    .end local p3    # "preferredFocusable":Landroid/view/View;
    :goto_0
    return-object p3

    .restart local p3    # "preferredFocusable":Landroid/view/View;
    :cond_0
    invoke-direct {p0, p1, v2, v0}, Lcom/julysystems/appx/AppXFullScrollView;->findFocusableViewInBoundsY(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 2

    .prologue
    .line 230
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScroller:Landroid/widget/Scroller;

    .line 231
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXFullScrollView;->setFocusable(Z)V

    .line 232
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXFullScrollView;->setDescendantFocusability(I)V

    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXFullScrollView;->setWillNotDraw(Z)V

    .line 234
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1184
    invoke-direct {p0, p1, v0}, Lcom/julysystems/appx/AppXFullScrollView;->isWithinDeltaOfScreenX(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1185
    invoke-direct {p0, p1, v0}, Lcom/julysystems/appx/AppXFullScrollView;->isWithinDeltaOfScreenY(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1184
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 1711
    if-ne p1, p2, :cond_1

    .line 1716
    :cond_0
    :goto_0
    return v1

    .line 1715
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1716
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 1717
    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/julysystems/appx/AppXFullScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1716
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreenX(Landroid/view/View;I)Z
    .locals 3
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1194
    iget-object v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/julysystems/appx/AppXFullScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1196
    iget-object v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 1196
    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreenY(Landroid/view/View;I)Z
    .locals 3
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1206
    iget-object v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/julysystems/appx/AppXFullScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1208
    iget-object v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 1208
    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollAndFocus(III)Z
    .locals 10
    .param p1, "direction"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1065
    const/4 v3, 0x1

    .line 1067
    .local v3, "handled":Z
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getHeight()I

    move-result v4

    .line 1068
    .local v4, "height":I
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getScrollY()I

    move-result v1

    .line 1069
    .local v1, "containerTop":I
    add-int v0, v1, v4

    .line 1070
    .local v0, "containerBottom":I
    const/16 v9, 0x21

    if-ne p1, v9, :cond_2

    move v6, v7

    .line 1072
    .local v6, "up":Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Lcom/julysystems/appx/AppXFullScrollView;->findFocusableViewInBoundsY(ZII)Landroid/view/View;

    move-result-object v5

    .line 1073
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_0

    .line 1074
    move-object v5, p0

    .line 1077
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 1078
    const/4 v3, 0x0

    .line 1084
    :goto_1
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->findFocus()Landroid/view/View;

    move-result-object v9

    if-eq v5, v9, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1085
    iput-boolean v7, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollViewMovedFocus:Z

    .line 1086
    iput-boolean v8, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollViewMovedFocus:Z

    .line 1089
    :cond_1
    return v3

    .end local v5    # "newFocused":Landroid/view/View;
    .end local v6    # "up":Z
    :cond_2
    move v6, v8

    .line 1070
    goto :goto_0

    .line 1080
    .restart local v5    # "newFocused":Landroid/view/View;
    .restart local v6    # "up":Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    .line 1081
    .local v2, "delta":I
    :goto_2
    invoke-direct {p0, v2}, Lcom/julysystems/appx/AppXFullScrollView;->doScrollY(I)V

    goto :goto_1

    .line 1080
    .end local v2    # "delta":I
    :cond_4
    sub-int v2, p3, v0

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1400
    iget-object v2, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1405
    iget-object v2, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/julysystems/appx/AppXFullScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1407
    iget-object v2, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/julysystems/appx/AppXFullScrollView;->computeScrollDeltaToGetChildRectOnScreenX(Landroid/graphics/Rect;)I

    move-result v0

    .line 1408
    .local v0, "scrollDeltaX":I
    iget-object v2, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/julysystems/appx/AppXFullScrollView;->computeScrollDeltaToGetChildRectOnScreenY(Landroid/graphics/Rect;)I

    move-result v1

    .line 1410
    .local v1, "scrollDeltaY":I
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 1411
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/julysystems/appx/AppXFullScrollView;->scrollBy(II)V

    .line 1413
    :cond_1
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    .line 1426
    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXFullScrollView;->computeScrollDeltaToGetChildRectOnScreenX(Landroid/graphics/Rect;)I

    move-result v0

    .line 1427
    .local v0, "deltaX":I
    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXFullScrollView;->computeScrollDeltaToGetChildRectOnScreenY(Landroid/graphics/Rect;)I

    move-result v1

    .line 1428
    .local v1, "deltaY":I
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    .line 1429
    .local v2, "scroll":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 1430
    if-eqz p2, :cond_2

    .line 1431
    invoke-virtual {p0, v0, v1}, Lcom/julysystems/appx/AppXFullScrollView;->scrollBy(II)V

    .line 1436
    :cond_0
    :goto_1
    return v2

    .line 1428
    .end local v2    # "scroll":Z
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1433
    .restart local v2    # "scroll":Z
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/julysystems/appx/AppXFullScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 240
    const-string v1, "ScrollView can host only one direct child"

    .line 239
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 244
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 250
    const-string v1, "ScrollView can host only one direct child"

    .line 249
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 254
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 270
    const-string v1, "ScrollView can host only one direct child"

    .line 269
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 274
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 260
    const-string v1, "ScrollView can host only one direct child"

    .line 259
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1103
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 1104
    const/4 v0, 0x0

    .line 1106
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v11

    invoke-virtual {v11, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 1109
    .local v6, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getMaxScrollAmountX()I

    move-result v4

    .line 1110
    .local v4, "maxJumpX":I
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getMaxScrollAmountY()I

    move-result v5

    .line 1112
    .local v5, "maxJumpY":I
    if-eqz v6, :cond_3

    .line 1113
    invoke-direct {p0, v6, v4}, Lcom/julysystems/appx/AppXFullScrollView;->isWithinDeltaOfScreenX(Landroid/view/View;I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1114
    invoke-direct {p0, v6, v5}, Lcom/julysystems/appx/AppXFullScrollView;->isWithinDeltaOfScreenY(Landroid/view/View;I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1115
    iget-object v11, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1116
    iget-object v11, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v6, v11}, Lcom/julysystems/appx/AppXFullScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1117
    iget-object v11, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v11}, Lcom/julysystems/appx/AppXFullScrollView;->computeScrollDeltaToGetChildRectOnScreenX(Landroid/graphics/Rect;)I

    move-result v9

    .line 1118
    .local v9, "scrollDeltaX":I
    invoke-direct {p0, v9}, Lcom/julysystems/appx/AppXFullScrollView;->doScrollX(I)V

    .line 1119
    iget-object v11, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v11}, Lcom/julysystems/appx/AppXFullScrollView;->computeScrollDeltaToGetChildRectOnScreenY(Landroid/graphics/Rect;)I

    move-result v10

    .line 1120
    .local v10, "scrollDeltaY":I
    invoke-direct {p0, v10}, Lcom/julysystems/appx/AppXFullScrollView;->doScrollY(I)V

    .line 1121
    invoke-virtual {v6, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1162
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1163
    invoke-direct {p0, v0}, Lcom/julysystems/appx/AppXFullScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1171
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getDescendantFocusability()I

    move-result v3

    .line 1172
    .local v3, "descendantFocusability":I
    const/high16 v11, 0x20000

    invoke-virtual {p0, v11}, Lcom/julysystems/appx/AppXFullScrollView;->setDescendantFocusability(I)V

    .line 1173
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->requestFocus()Z

    .line 1174
    invoke-virtual {p0, v3}, Lcom/julysystems/appx/AppXFullScrollView;->setDescendantFocusability(I)V

    .line 1176
    .end local v3    # "descendantFocusability":I
    :cond_2
    const/4 v11, 0x1

    :goto_1
    return v11

    .line 1124
    .end local v9    # "scrollDeltaX":I
    .end local v10    # "scrollDeltaY":I
    :cond_3
    move v9, v4

    .line 1125
    .restart local v9    # "scrollDeltaX":I
    move v10, v5

    .line 1127
    .restart local v10    # "scrollDeltaY":I
    const/16 v11, 0x21

    if-ne p1, v11, :cond_6

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getScrollX()I

    move-result v11

    if-ge v11, v9, :cond_6

    .line 1128
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getScrollX()I

    move-result v9

    .line 1139
    :cond_4
    :goto_2
    const/16 v11, 0x21

    if-ne p1, v11, :cond_7

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getScrollY()I

    move-result v11

    if-ge v11, v10, :cond_7

    .line 1140
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getScrollY()I

    move-result v10

    .line 1151
    :cond_5
    :goto_3
    if-nez v9, :cond_8

    if-nez v10, :cond_8

    .line 1152
    const/4 v11, 0x0

    goto :goto_1

    .line 1129
    :cond_6
    const/16 v11, 0x82

    if-ne p1, v11, :cond_4

    .line 1131
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v11}, Lcom/julysystems/appx/AppXFullScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1133
    .local v2, "daRight":I
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getScrollX()I

    move-result v11

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getWidth()I

    move-result v12

    add-int v8, v11, v12

    .line 1135
    .local v8, "screenRight":I
    sub-int v11, v2, v8

    if-ge v11, v4, :cond_4

    .line 1136
    sub-int v9, v2, v8

    goto :goto_2

    .line 1141
    .end local v2    # "daRight":I
    .end local v8    # "screenRight":I
    :cond_7
    const/16 v11, 0x82

    if-ne p1, v11, :cond_5

    .line 1143
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v11}, Lcom/julysystems/appx/AppXFullScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1145
    .local v1, "daBottom":I
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getScrollY()I

    move-result v11

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getHeight()I

    move-result v12

    add-int v7, v11, v12

    .line 1147
    .local v7, "screenBottom":I
    sub-int v11, v1, v7

    if-ge v11, v5, :cond_5

    .line 1148
    sub-int v10, v1, v7

    goto :goto_3

    .line 1153
    .end local v1    # "daBottom":I
    .end local v7    # "screenBottom":I
    :cond_8
    if-nez v9, :cond_a

    .line 1154
    const/16 v11, 0x82

    if-ne p1, v11, :cond_9

    move v11, v10

    :goto_4
    invoke-direct {p0, v11}, Lcom/julysystems/appx/AppXFullScrollView;->doScrollY(I)V

    goto/16 :goto_0

    .line 1155
    :cond_9
    neg-int v11, v10

    goto :goto_4

    .line 1156
    :cond_a
    if-nez v10, :cond_1

    .line 1157
    const/16 v11, 0x82

    if-ne p1, v11, :cond_b

    move v11, v9

    :goto_5
    invoke-direct {p0, v11}, Lcom/julysystems/appx/AppXFullScrollView;->doScrollX(I)V

    goto/16 :goto_0

    .line 1158
    :cond_b
    neg-int v11, v9

    goto :goto_5
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 1292
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildCount()I

    move-result v0

    .line 1293
    .local v0, "count":I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getWidth()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/julysystems/appx/AppXFullScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    .line 1340
    iget-object v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1366
    iget v1, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollX:I

    .line 1367
    .local v1, "oldX":I
    iget v2, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollY:I

    .line 1368
    .local v2, "oldY":I
    iget-object v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 1369
    .local v3, "x":I
    iget-object v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 1370
    .local v4, "y":I
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 1371
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/julysystems/appx/AppXFullScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1372
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {p0, v3, v5, v6}, Lcom/julysystems/appx/AppXFullScrollView;->clamp(III)I

    move-result v5

    iput v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollX:I

    .line 1373
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/julysystems/appx/AppXFullScrollView;->clamp(III)I

    move-result v5

    iput v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollY:I

    .line 1384
    .end local v0    # "child":Landroid/view/View;
    :goto_0
    iget v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollX:I

    if-ne v1, v5, :cond_0

    iget v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollY:I

    if-eq v2, v5, :cond_1

    .line 1385
    :cond_0
    iget v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollX:I

    iget v6, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollY:I

    invoke-virtual {p0, v5, v6, v1, v2}, Lcom/julysystems/appx/AppXFullScrollView;->onScrollChanged(IIII)V

    .line 1389
    :cond_1
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->postInvalidate()V

    .line 1391
    .end local v1    # "oldX":I
    .end local v2    # "oldY":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_2
    return-void

    .line 1381
    .restart local v1    # "oldX":I
    .restart local v2    # "oldY":I
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    :cond_3
    iput v3, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollX:I

    .line 1382
    iput v4, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollY:I

    goto :goto_0
.end method

.method protected computeScrollDeltaToGetChildRectOnScreenX(Landroid/graphics/Rect;)I
    .locals 9
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1450
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getWidth()I

    move-result v6

    .line 1451
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getScrollX()I

    move-result v3

    .line 1452
    .local v3, "screenLeft":I
    add-int v4, v3, v6

    .line 1454
    .local v4, "screenRight":I
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getHorizontalFadingEdgeLength()I

    move-result v1

    .line 1458
    .local v1, "fadingEdge":I
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-lez v7, :cond_0

    .line 1459
    add-int/2addr v3, v1

    .line 1464
    :cond_0
    iget v7, p1, Landroid/graphics/Rect;->right:I

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/julysystems/appx/AppXFullScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 1465
    sub-int/2addr v4, v1

    .line 1468
    :cond_1
    const/4 v5, 0x0

    .line 1473
    .local v5, "scrollXDelta":I
    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-le v7, v4, :cond_4

    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-le v7, v3, :cond_4

    .line 1480
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_3

    .line 1482
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v3

    add-int/2addr v5, v7

    .line 1490
    :goto_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/julysystems/appx/AppXFullScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1491
    .local v2, "right":I
    sub-int v0, v2, v4

    .line 1495
    .local v0, "distanceToRight":I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1516
    .end local v0    # "distanceToRight":I
    .end local v2    # "right":I
    :cond_2
    :goto_1
    return v5

    .line 1485
    :cond_3
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v4

    add-int/2addr v5, v7

    goto :goto_0

    .line 1497
    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v7, v3, :cond_2

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_2

    .line 1504
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_5

    .line 1506
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    sub-int/2addr v5, v7

    .line 1514
    :goto_2
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getScrollX()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 1509
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v7

    sub-int/2addr v5, v7

    goto :goto_2
.end method

.method protected computeScrollDeltaToGetChildRectOnScreenY(Landroid/graphics/Rect;)I
    .locals 9
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1530
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getHeight()I

    move-result v3

    .line 1531
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getScrollY()I

    move-result v5

    .line 1532
    .local v5, "screenTop":I
    add-int v4, v5, v3

    .line 1534
    .local v4, "screenBottom":I
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1538
    .local v2, "fadingEdge":I
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-lez v7, :cond_0

    .line 1539
    add-int/2addr v5, v2

    .line 1544
    :cond_0
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/julysystems/appx/AppXFullScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 1545
    sub-int/2addr v4, v2

    .line 1548
    :cond_1
    const/4 v6, 0x0

    .line 1553
    .local v6, "scrollYDelta":I
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-le v7, v4, :cond_4

    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-le v7, v5, :cond_4

    .line 1560
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_3

    .line 1562
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v5

    add-int/2addr v6, v7

    .line 1570
    :goto_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/julysystems/appx/AppXFullScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1571
    .local v0, "bottom":I
    sub-int v1, v0, v4

    .line 1575
    .local v1, "distanceToBottom":I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1596
    .end local v0    # "bottom":I
    .end local v1    # "distanceToBottom":I
    :cond_2
    :goto_1
    return v6

    .line 1565
    :cond_3
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v4

    add-int/2addr v6, v7

    goto :goto_0

    .line 1577
    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_2

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_2

    .line 1584
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_5

    .line 1586
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 1594
    :goto_2
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_1

    .line 1589
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_2
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1304
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildCount()I

    move-result v0

    .line 1305
    .local v0, "count":I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/julysystems/appx/AppXFullScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 438
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 439
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 440
    const/4 v1, 0x1

    .line 442
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXFullScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v7, 0x42

    const/16 v6, 0x11

    const/4 v1, 0x0

    const/16 v3, 0x21

    const/16 v4, 0x82

    .line 455
    iget-object v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 457
    invoke-direct {p0}, Lcom/julysystems/appx/AppXFullScrollView;->canScrollX()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/julysystems/appx/AppXFullScrollView;->canScrollY()Z

    move-result v5

    if-nez v5, :cond_3

    .line 458
    :cond_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 459
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 460
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_1

    .line 461
    const/4 v0, 0x0

    .line 462
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 464
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_2

    if-eq v2, p0, :cond_2

    .line 465
    invoke-virtual {v2, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 464
    const/4 v1, 0x1

    .line 516
    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v2    # "nextFocused":Landroid/view/View;
    :cond_2
    :goto_0
    return v1

    .line 470
    :cond_3
    const/4 v1, 0x0

    .line 471
    .local v1, "handled":Z
    invoke-direct {p0}, Lcom/julysystems/appx/AppXFullScrollView;->canScrollY()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 472
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_4

    .line 473
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 495
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/julysystems/appx/AppXFullScrollView;->canScrollX()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 496
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 497
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 499
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_8

    .line 500
    invoke-virtual {p0, v6}, Lcom/julysystems/appx/AppXFullScrollView;->arrowScroll(I)Z

    move-result v1

    .line 501
    goto :goto_0

    .line 475
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_5

    .line 476
    invoke-virtual {p0, v3}, Lcom/julysystems/appx/AppXFullScrollView;->arrowScroll(I)Z

    move-result v1

    .line 477
    goto :goto_1

    .line 478
    :cond_5
    invoke-virtual {p0, v3}, Lcom/julysystems/appx/AppXFullScrollView;->fullScroll(I)Z

    move-result v1

    .line 480
    goto :goto_1

    .line 482
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 483
    invoke-virtual {p0, v4}, Lcom/julysystems/appx/AppXFullScrollView;->arrowScroll(I)Z

    move-result v1

    .line 484
    goto :goto_1

    .line 485
    :cond_6
    invoke-virtual {p0, v4}, Lcom/julysystems/appx/AppXFullScrollView;->fullScroll(I)Z

    move-result v1

    .line 487
    goto :goto_1

    .line 489
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_2
    invoke-virtual {p0, v3}, Lcom/julysystems/appx/AppXFullScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_7
    move v3, v4

    .line 490
    goto :goto_2

    .line 502
    :cond_8
    invoke-virtual {p0, v6}, Lcom/julysystems/appx/AppXFullScrollView;->fullScroll(I)Z

    move-result v1

    .line 504
    goto :goto_0

    .line 506
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_9

    .line 507
    invoke-virtual {p0, v7}, Lcom/julysystems/appx/AppXFullScrollView;->arrowScroll(I)Z

    move-result v1

    .line 508
    goto :goto_0

    .line 509
    :cond_9
    invoke-virtual {p0, v7}, Lcom/julysystems/appx/AppXFullScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_0

    .line 473
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch

    .line 497
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public flingX(I)V
    .locals 14
    .param p1, "velocityX"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 1729
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getWidth()I

    move-result v12

    .line 1730
    .local v12, "width":I
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v11

    .line 1732
    .local v11, "right":I
    iget-object v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollX:I

    iget v2, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollY:I

    .line 1733
    sub-int v8, v11, v12

    move v3, p1

    move v5, v4

    move v6, v4

    move v7, v4

    .line 1732
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1735
    if-lez p1, :cond_2

    move v9, v13

    .line 1737
    .local v9, "movingRight":Z
    :goto_0
    iget-object v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScroller:Landroid/widget/Scroller;

    .line 1738
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 1737
    invoke-direct {p0, v9, v0, v1}, Lcom/julysystems/appx/AppXFullScrollView;->findFocusableViewInMyBoundsX(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v10

    .line 1739
    .local v10, "newFocused":Landroid/view/View;
    if-nez v10, :cond_0

    .line 1740
    move-object v10, p0

    .line 1743
    :cond_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v10, v0, :cond_1

    .line 1744
    if-eqz v9, :cond_3

    const/16 v0, 0x82

    :goto_1
    invoke-virtual {v10, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    .line 1745
    if-eqz v0, :cond_1

    .line 1746
    iput-boolean v13, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollViewMovedFocus:Z

    .line 1747
    iput-boolean v4, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollViewMovedFocus:Z

    .line 1750
    :cond_1
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->invalidate()V

    .line 1751
    return-void

    .end local v9    # "movingRight":Z
    .end local v10    # "newFocused":Landroid/view/View;
    :cond_2
    move v9, v4

    .line 1735
    goto :goto_0

    .line 1745
    .restart local v9    # "movingRight":Z
    .restart local v10    # "newFocused":Landroid/view/View;
    :cond_3
    const/16 v0, 0x21

    goto :goto_1
.end method

.method public flingY(I)V
    .locals 14
    .param p1, "velocityY"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 1762
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getHeight()I

    move-result v10

    .line 1763
    .local v10, "height":I
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 1765
    .local v9, "bottom":I
    iget-object v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollX:I

    iget v2, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollY:I

    .line 1766
    sub-int v8, v9, v10

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    .line 1765
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1768
    if-lez p1, :cond_2

    move v11, v13

    .line 1770
    .local v11, "movingDown":Z
    :goto_0
    iget-object v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScroller:Landroid/widget/Scroller;

    .line 1771
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 1770
    invoke-direct {p0, v11, v0, v1}, Lcom/julysystems/appx/AppXFullScrollView;->findFocusableViewInMyBoundsY(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v12

    .line 1772
    .local v12, "newFocused":Landroid/view/View;
    if-nez v12, :cond_0

    .line 1773
    move-object v12, p0

    .line 1776
    :cond_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v12, v0, :cond_1

    .line 1777
    if-eqz v11, :cond_3

    const/16 v0, 0x82

    :goto_1
    invoke-virtual {v12, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    .line 1778
    if-eqz v0, :cond_1

    .line 1779
    iput-boolean v13, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollViewMovedFocus:Z

    .line 1780
    iput-boolean v3, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollViewMovedFocus:Z

    .line 1783
    :cond_1
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->invalidate()V

    .line 1784
    return-void

    .end local v11    # "movingDown":Z
    .end local v12    # "newFocused":Landroid/view/View;
    :cond_2
    move v11, v3

    .line 1768
    goto :goto_0

    .line 1778
    .restart local v11    # "movingDown":Z
    .restart local v12    # "newFocused":Landroid/view/View;
    :cond_3
    const/16 v0, 0x21

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 1029
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1030
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getHeight()I

    move-result v2

    .line 1032
    .local v2, "height":I
    iget-object v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 1033
    iget-object v4, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1035
    if-eqz v1, :cond_0

    .line 1036
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildCount()I

    move-result v0

    .line 1037
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1038
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/julysystems/appx/AppXFullScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1039
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1040
    iget-object v4, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1044
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/julysystems/appx/AppXFullScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    move v1, v4

    .line 1029
    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 200
    const/4 v3, 0x0

    .line 210
    :goto_0
    return v3

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 204
    .local v1, "length":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/julysystems/appx/AppXFullScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 205
    .local v0, "bottom":I
    iget v3, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollY:I

    sub-int v3, v0, v3

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getHeight()I

    move-result v4

    sub-int v2, v3, v4

    .line 206
    .local v2, "span":I
    if-ge v2, v1, :cond_1

    .line 207
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .line 210
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 156
    const/4 v1, 0x0

    .line 164
    :goto_0
    return v1

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 160
    .local v0, "width":I
    iget v1, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 161
    iget v1, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 164
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getMaxScrollAmountX()I
    .locals 3

    .prologue
    .line 226
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getMaxScrollAmountY()I
    .locals 3

    .prologue
    .line 218
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 170
    const/4 v3, 0x0

    .line 180
    :goto_0
    return v3

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getHorizontalFadingEdgeLength()I

    move-result v2

    .line 174
    .local v2, "width":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/julysystems/appx/AppXFullScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v0

    .line 175
    .local v0, "right":I
    iget v3, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollX:I

    sub-int v3, v0, v3

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getWidth()I

    move-result v4

    sub-int v1, v3, v4

    .line 176
    .local v1, "span":I
    if-ge v1, v2, :cond_1

    .line 177
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    goto :goto_0

    .line 180
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 186
    const/4 v1, 0x0

    .line 194
    :goto_0
    return v1

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 190
    .local v0, "length":I
    iget v1, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 191
    iget v1, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 194
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public isFillViewportX()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mFillViewportX:Z

    return v0
.end method

.method public isFillViewportY()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mFillViewportY:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    const/4 v2, 0x0

    .line 1314
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1317
    .local v1, "childWidthMeasureSpec":I
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1320
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1321
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    const/4 v5, 0x0

    .line 1327
    .line 1328
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1327
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1331
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 1330
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1333
    .local v1, "childWidthMeasureSpec":I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    .line 1332
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1335
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1336
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 531
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 532
    .local v0, "action":I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    .line 533
    iget-boolean v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mIsBeingDraggedX:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mIsBeingDraggedY:Z

    if-eqz v5, :cond_1

    .line 604
    :cond_0
    :goto_0
    return v7

    .line 537
    :cond_1
    invoke-direct {p0}, Lcom/julysystems/appx/AppXFullScrollView;->canScrollX()Z

    move-result v5

    if-nez v5, :cond_2

    .line 538
    iput-boolean v6, p0, Lcom/julysystems/appx/AppXFullScrollView;->mIsBeingDraggedX:Z

    .line 540
    :cond_2
    invoke-direct {p0}, Lcom/julysystems/appx/AppXFullScrollView;->canScrollY()Z

    move-result v5

    if-nez v5, :cond_3

    .line 541
    iput-boolean v6, p0, Lcom/julysystems/appx/AppXFullScrollView;->mIsBeingDraggedY:Z

    .line 544
    :cond_3
    invoke-direct {p0}, Lcom/julysystems/appx/AppXFullScrollView;->canScrollY()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0}, Lcom/julysystems/appx/AppXFullScrollView;->canScrollX()Z

    move-result v5

    if-nez v5, :cond_4

    move v7, v6

    .line 545
    goto :goto_0

    .line 548
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 549
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 551
    .local v3, "y":F
    packed-switch v0, :pswitch_data_0

    .line 604
    :cond_5
    :goto_1
    iget-boolean v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mIsBeingDraggedX:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mIsBeingDraggedY:Z

    if-nez v5, :cond_0

    move v7, v6

    goto :goto_0

    .line 563
    :pswitch_0
    iget v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mLastMotionX:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v2, v5

    .line 564
    .local v2, "xDiff":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v5

    if-le v2, v5, :cond_6

    .line 565
    iput-boolean v7, p0, Lcom/julysystems/appx/AppXFullScrollView;->mIsBeingDraggedX:Z

    .line 572
    :cond_6
    iget v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mLastMotionY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v4, v5

    .line 573
    .local v4, "yDiff":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v5

    if-le v4, v5, :cond_5

    .line 574
    iput-boolean v7, p0, Lcom/julysystems/appx/AppXFullScrollView;->mIsBeingDraggedY:Z

    goto :goto_1

    .line 580
    .end local v2    # "xDiff":I
    .end local v4    # "yDiff":I
    :pswitch_1
    iput v1, p0, Lcom/julysystems/appx/AppXFullScrollView;->mLastMotionX:F

    .line 581
    iput v3, p0, Lcom/julysystems/appx/AppXFullScrollView;->mLastMotionY:F

    .line 588
    iget-object v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mIsBeingDraggedX:Z

    .line 589
    iget-object v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v6

    :goto_3
    iput-boolean v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mIsBeingDraggedY:Z

    goto :goto_1

    :cond_7
    move v5, v7

    .line 588
    goto :goto_2

    :cond_8
    move v5, v7

    .line 589
    goto :goto_3

    .line 595
    :pswitch_2
    iput-boolean v6, p0, Lcom/julysystems/appx/AppXFullScrollView;->mIsBeingDraggedX:Z

    .line 596
    iput-boolean v6, p0, Lcom/julysystems/appx/AppXFullScrollView;->mIsBeingDraggedY:Z

    goto :goto_1

    .line 551
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1667
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1668
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mIsLayoutDirty:Z

    .line 1670
    iget-object v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/julysystems/appx/AppXFullScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1672
    iget-object v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/julysystems/appx/AppXFullScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1674
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1678
    iget v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollX:I

    iget v1, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/julysystems/appx/AppXFullScrollView;->scrollTo(II)V

    .line 1679
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 371
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 373
    iget-boolean v8, p0, Lcom/julysystems/appx/AppXFullScrollView;->mFillViewportX:Z

    if-nez v8, :cond_1

    iget-boolean v8, p0, Lcom/julysystems/appx/AppXFullScrollView;->mFillViewportY:Z

    if-nez v8, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 378
    .local v7, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 379
    .local v4, "heightMode":I
    if-nez v4, :cond_2

    .line 380
    if-eqz v7, :cond_0

    .line 384
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/julysystems/appx/AppXFullScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 385
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getMeasuredWidth()I

    move-result v6

    .line 386
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getMeasuredHeight()I

    move-result v3

    .line 387
    .local v3, "height":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-ge v8, v6, :cond_3

    .line 388
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    if-ge v8, v3, :cond_3

    .line 389
    if-eqz v4, :cond_3

    .line 390
    if-eqz v7, :cond_3

    iget-boolean v8, p0, Lcom/julysystems/appx/AppXFullScrollView;->mFillViewportX:Z

    if-eqz v8, :cond_3

    .line 391
    iget-boolean v8, p0, Lcom/julysystems/appx/AppXFullScrollView;->mFillViewportY:Z

    if-eqz v8, :cond_3

    .line 395
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v6, v8

    .line 396
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v6, v8

    .line 397
    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 399
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v3, v8

    .line 400
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v3, v8

    .line 401
    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 404
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 405
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    if-ge v8, v3, :cond_4

    .line 406
    if-eqz v4, :cond_4

    iget-boolean v8, p0, Lcom/julysystems/appx/AppXFullScrollView;->mFillViewportY:Z

    if-eqz v8, :cond_4

    .line 408
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 407
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 411
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 410
    invoke-static {p1, v8, v9}, Lcom/julysystems/appx/AppXFullScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 412
    .restart local v2    # "childWidthMeasureSpec":I
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v3, v8

    .line 413
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v3, v8

    .line 414
    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 417
    .restart local v1    # "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_0

    .line 418
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-ge v8, v6, :cond_0

    .line 419
    if-eqz v7, :cond_0

    iget-boolean v8, p0, Lcom/julysystems/appx/AppXFullScrollView;->mFillViewportX:Z

    if-eqz v8, :cond_0

    .line 421
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 420
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 424
    .restart local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 423
    invoke-static {p2, v8, v9}, Lcom/julysystems/appx/AppXFullScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 425
    .restart local v1    # "childHeightMeasureSpec":I
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v6, v8

    .line 426
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v6, v8

    .line 427
    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 430
    .restart local v2    # "childWidthMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 1627
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1628
    const/16 p1, 0x82

    .line 1633
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    .line 1634
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1638
    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 1646
    :cond_1
    :goto_2
    return v1

    .line 1629
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1630
    const/16 p1, 0x21

    goto :goto_0

    .line 1635
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1642
    .restart local v0    # "nextFocus":Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Lcom/julysystems/appx/AppXFullScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1646
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1683
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1685
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1686
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1704
    :cond_0
    :goto_0
    return-void

    .line 1689
    :cond_1
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getLeft()I

    move-result v6

    sub-int v1, v5, v6

    .line 1690
    .local v1, "maxJumpX":I
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getTop()I

    move-result v6

    sub-int v2, v5, v6

    .line 1692
    .local v2, "maxJumpY":I
    invoke-direct {p0, v0, v1}, Lcom/julysystems/appx/AppXFullScrollView;->isWithinDeltaOfScreenX(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1693
    iget-object v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1694
    iget-object v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/julysystems/appx/AppXFullScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1695
    iget-object v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/julysystems/appx/AppXFullScrollView;->computeScrollDeltaToGetChildRectOnScreenX(Landroid/graphics/Rect;)I

    move-result v3

    .line 1696
    .local v3, "scrollDeltaX":I
    invoke-direct {p0, v3}, Lcom/julysystems/appx/AppXFullScrollView;->doScrollX(I)V

    .line 1698
    .end local v3    # "scrollDeltaX":I
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/julysystems/appx/AppXFullScrollView;->isWithinDeltaOfScreenY(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1699
    iget-object v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1700
    iget-object v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/julysystems/appx/AppXFullScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1701
    iget-object v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/julysystems/appx/AppXFullScrollView;->computeScrollDeltaToGetChildRectOnScreenY(Landroid/graphics/Rect;)I

    move-result v4

    .line 1702
    .local v4, "scrollDeltaY":I
    invoke-direct {p0, v4}, Lcom/julysystems/appx/AppXFullScrollView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    .line 610
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v12

    if-eqz v12, :cond_1

    .line 706
    :cond_0
    :goto_0
    return v11

    .line 617
    :cond_1
    invoke-direct {p0}, Lcom/julysystems/appx/AppXFullScrollView;->canScrollX()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-direct {p0}, Lcom/julysystems/appx/AppXFullScrollView;->canScrollY()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 621
    :cond_2
    iget-object v12, p0, Lcom/julysystems/appx/AppXFullScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_3

    .line 622
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v12

    iput-object v12, p0, Lcom/julysystems/appx/AppXFullScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 624
    :cond_3
    iget-object v12, p0, Lcom/julysystems/appx/AppXFullScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 626
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 627
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 628
    .local v9, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 630
    .local v10, "y":F
    packed-switch v0, :pswitch_data_0

    .line 706
    :cond_4
    :goto_1
    const/4 v11, 0x1

    goto :goto_0

    .line 636
    :pswitch_0
    iget-object v11, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-nez v11, :cond_5

    .line 637
    iget-object v11, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->abortAnimation()V

    .line 641
    :cond_5
    iput v9, p0, Lcom/julysystems/appx/AppXFullScrollView;->mLastMotionX:F

    .line 642
    iput v10, p0, Lcom/julysystems/appx/AppXFullScrollView;->mLastMotionY:F

    goto :goto_1

    .line 646
    :pswitch_1
    iget v12, p0, Lcom/julysystems/appx/AppXFullScrollView;->mLastMotionX:F

    sub-float/2addr v12, v9

    float-to-int v3, v12

    .line 647
    .local v3, "deltaX":I
    iput v9, p0, Lcom/julysystems/appx/AppXFullScrollView;->mLastMotionX:F

    .line 648
    iget v12, p0, Lcom/julysystems/appx/AppXFullScrollView;->mLastMotionY:F

    sub-float/2addr v12, v10

    float-to-int v4, v12

    .line 649
    .local v4, "deltaY":I
    iput v10, p0, Lcom/julysystems/appx/AppXFullScrollView;->mLastMotionY:F

    .line 655
    if-gez v3, :cond_7

    .line 656
    iget v12, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollX:I

    if-ltz v12, :cond_6

    .line 658
    invoke-virtual {p0, v3, v11}, Lcom/julysystems/appx/AppXFullScrollView;->scrollBy(II)V

    .line 669
    :cond_6
    :goto_2
    if-gez v4, :cond_8

    .line 670
    iget v12, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollY:I

    if-ltz v12, :cond_4

    .line 672
    invoke-virtual {p0, v11, v4}, Lcom/julysystems/appx/AppXFullScrollView;->scrollBy(II)V

    goto :goto_1

    .line 660
    :cond_7
    if-lez v3, :cond_6

    .line 661
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getWidth()I

    move-result v12

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getPaddingRight()I

    move-result v13

    sub-int v7, v12, v13

    .line 662
    .local v7, "rightEdge":I
    invoke-virtual {p0, v11}, Lcom/julysystems/appx/AppXFullScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    .line 663
    iget v13, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollX:I

    .line 662
    sub-int/2addr v12, v13

    sub-int v1, v12, v7

    .line 664
    .local v1, "availableToScroll":I
    if-lez v1, :cond_6

    .line 665
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {p0, v12, v11}, Lcom/julysystems/appx/AppXFullScrollView;->scrollBy(II)V

    goto :goto_2

    .line 674
    .end local v1    # "availableToScroll":I
    .end local v7    # "rightEdge":I
    :cond_8
    if-lez v4, :cond_4

    .line 675
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getHeight()I

    move-result v12

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getPaddingBottom()I

    move-result v13

    sub-int v2, v12, v13

    .line 676
    .local v2, "bottomEdge":I
    invoke-virtual {p0, v11}, Lcom/julysystems/appx/AppXFullScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 677
    iget v13, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollY:I

    .line 676
    sub-int/2addr v12, v13

    sub-int v1, v12, v2

    .line 678
    .restart local v1    # "availableToScroll":I
    if-lez v1, :cond_4

    .line 679
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {p0, v11, v12}, Lcom/julysystems/appx/AppXFullScrollView;->scrollBy(II)V

    goto :goto_1

    .line 684
    .end local v1    # "availableToScroll":I
    .end local v2    # "bottomEdge":I
    .end local v3    # "deltaX":I
    .end local v4    # "deltaY":I
    :pswitch_2
    iget-object v8, p0, Lcom/julysystems/appx/AppXFullScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 685
    .local v8, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v11, 0x3e8

    invoke-virtual {v8, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 686
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v11

    float-to-int v5, v11

    .line 687
    .local v5, "initialVelocityX":I
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v11

    float-to-int v6, v11

    .line 689
    .local v6, "initialVelocityY":I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 690
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v12

    if-le v11, v12, :cond_9

    .line 691
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildCount()I

    move-result v11

    if-lez v11, :cond_9

    .line 692
    neg-int v11, v5

    invoke-virtual {p0, v11}, Lcom/julysystems/appx/AppXFullScrollView;->flingX(I)V

    .line 695
    :cond_9
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 696
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v12

    if-le v11, v12, :cond_a

    .line 697
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildCount()I

    move-result v11

    if-lez v11, :cond_a

    .line 698
    neg-int v11, v6

    invoke-virtual {p0, v11}, Lcom/julysystems/appx/AppXFullScrollView;->flingY(I)V

    .line 701
    :cond_a
    iget-object v11, p0, Lcom/julysystems/appx/AppXFullScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v11, :cond_4

    .line 702
    iget-object v11, p0, Lcom/julysystems/appx/AppXFullScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->recycle()V

    .line 703
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/julysystems/appx/AppXFullScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 630
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 991
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 992
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getHeight()I

    move-result v2

    .line 994
    .local v2, "height":I
    if-eqz v1, :cond_2

    .line 995
    iget-object v4, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 996
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildCount()I

    move-result v0

    .line 997
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 998
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/julysystems/appx/AppXFullScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 999
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1000
    iget-object v4, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1009
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1011
    iget-object v4, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/julysystems/appx/AppXFullScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    move v1, v4

    .line 991
    goto :goto_0

    .line 1004
    .restart local v1    # "down":Z
    .restart local v2    # "height":I
    :cond_2
    iget-object v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1005
    iget-object v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_0

    .line 1006
    iget-object v5, p0, Lcom/julysystems/appx/AppXFullScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1601
    iget-boolean v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 1602
    iget-boolean v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 1603
    invoke-direct {p0, p2}, Lcom/julysystems/appx/AppXFullScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1610
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1611
    return-void

    .line 1607
    :cond_1
    iput-object p2, p0, Lcom/julysystems/appx/AppXFullScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1653
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1654
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1653
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1656
    invoke-direct {p0, p2, p3}, Lcom/julysystems/appx/AppXFullScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mIsLayoutDirty:Z

    .line 1662
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1663
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1793
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1794
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/julysystems/appx/AppXFullScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1795
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/julysystems/appx/AppXFullScrollView;->clamp(III)I

    move-result p1

    .line 1796
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/julysystems/appx/AppXFullScrollView;->clamp(III)I

    move-result p2

    .line 1797
    iget v1, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 1798
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1799
    iput p1, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollX:I

    .line 1800
    iput p2, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollY:I

    .line 1805
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setFillViewportX(Z)V
    .locals 1
    .param p1, "fillViewportX"    # Z

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mFillViewportX:Z

    if-eq p1, v0, :cond_0

    .line 332
    iput-boolean p1, p0, Lcom/julysystems/appx/AppXFullScrollView;->mFillViewportX:Z

    .line 333
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->requestLayout()V

    .line 335
    :cond_0
    return-void
.end method

.method public setFillViewportY(Z)V
    .locals 1
    .param p1, "fillViewportY"    # Z

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mFillViewportY:Z

    if-eq p1, v0, :cond_0

    .line 347
    iput-boolean p1, p0, Lcom/julysystems/appx/AppXFullScrollView;->mFillViewportY:Z

    .line 348
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->requestLayout()V

    .line 350
    :cond_0
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    .prologue
    .line 366
    iput-boolean p1, p0, Lcom/julysystems/appx/AppXFullScrollView;->mSmoothScrollingEnabled:Z

    .line 367
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 1252
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 1253
    iget-wide v4, p0, Lcom/julysystems/appx/AppXFullScrollView;->mLastScroll:J

    .line 1252
    sub-long v0, v2, v4

    .line 1254
    .local v0, "duration":J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1258
    iget-object v2, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollX:I

    iget v4, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollY:I

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1259
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXFullScrollView;->invalidate()V

    .line 1269
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/julysystems/appx/AppXFullScrollView;->mLastScroll:J

    .line 1270
    return-void

    .line 1261
    :cond_0
    iget-object v2, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1262
    iget-object v2, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1267
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/julysystems/appx/AppXFullScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1281
    iget v0, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/julysystems/appx/AppXFullScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/julysystems/appx/AppXFullScrollView;->smoothScrollBy(II)V

    .line 1282
    return-void
.end method
