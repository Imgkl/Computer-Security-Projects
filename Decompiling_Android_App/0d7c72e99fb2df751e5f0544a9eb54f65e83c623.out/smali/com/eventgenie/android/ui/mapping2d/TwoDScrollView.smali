.class public Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;
.super Landroid/widget/FrameLayout;
.source "TwoDScrollView.java"


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static final MAX_SCROLL_FACTOR:F = 0.5f


# instance fields
.field private mChildToScrollTo:Landroid/view/View;

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mScroller:Landroid/widget/Scroller;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTwoDScrollViewMovedFocus:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mIsLayoutDirty:Z

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mIsBeingDragged:Z

    .line 114
    invoke-direct {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->initTwoDScrollView()V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mIsLayoutDirty:Z

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mIsBeingDragged:Z

    .line 119
    invoke-direct {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->initTwoDScrollView()V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mIsLayoutDirty:Z

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mIsBeingDragged:Z

    .line 124
    invoke-direct {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->initTwoDScrollView()V

    .line 125
    return-void
.end method

.method private canScroll()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 231
    invoke-virtual {p0, v3}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 232
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 234
    .local v1, "childHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 235
    .local v2, "childWidth":I
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 238
    .end local v1    # "childHeight":I
    .end local v2    # "childWidth":I
    :cond_1
    return v3
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .prologue
    .line 1119
    if-ge p1, p2, :cond_0

    if-gez p0, :cond_2

    .line 1135
    :cond_0
    const/4 p0, 0x0

    .line 1145
    .end local p0    # "n":I
    :cond_1
    :goto_0
    return p0

    .line 1137
    .restart local p0    # "n":I
    :cond_2
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    .line 1143
    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private doScroll(II)V
    .locals 0
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 372
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 373
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->smoothScrollBy(II)V

    .line 375
    :cond_1
    return-void
.end method

.method private findFocusableViewInBounds(ZIIZII)Landroid/view/View;
    .locals 15
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "leftFocus"    # Z
    .param p5, "left"    # I
    .param p6, "right"    # I

    .prologue
    .line 447
    const/4 v14, 0x2

    invoke-virtual {p0, v14}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 448
    .local v3, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v2, 0x0

    .line 457
    .local v2, "focusCandidate":Landroid/view/View;
    const/4 v4, 0x0

    .line 459
    .local v4, "foundFullyContainedFocusable":Z
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 460
    .local v1, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_b

    .line 461
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 462
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v13

    .line 463
    .local v13, "viewTop":I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 464
    .local v7, "viewBottom":I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 465
    .local v11, "viewLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v12

    .line 467
    .local v12, "viewRight":I
    move/from16 v0, p2

    if-ge v0, v7, :cond_0

    move/from16 v0, p3

    if-ge v13, v0, :cond_0

    move/from16 v0, p5

    if-ge v0, v12, :cond_0

    move/from16 v0, p6

    if-ge v11, v0, :cond_0

    .line 472
    move/from16 v0, p2

    if-ge v0, v13, :cond_1

    move/from16 v0, p3

    if-ge v7, v0, :cond_1

    move/from16 v0, p5

    if-ge v0, v11, :cond_1

    move/from16 v0, p6

    if-ge v12, v0, :cond_1

    const/4 v10, 0x1

    .line 473
    .local v10, "viewIsFullyContained":Z
    :goto_1
    if-nez v2, :cond_2

    .line 475
    move-object v2, v6

    .line 476
    move v4, v10

    .line 460
    .end local v10    # "viewIsFullyContained":Z
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 472
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 478
    .restart local v10    # "viewIsFullyContained":Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v14

    if-lt v13, v14, :cond_4

    :cond_3
    if-nez p1, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v14

    if-le v7, v14, :cond_7

    :cond_4
    const/4 v9, 0x1

    .line 481
    .local v9, "viewIsCloserToVerticalBoundary":Z
    :goto_3
    if-eqz p4, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v14

    if-lt v11, v14, :cond_6

    :cond_5
    if-nez p4, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v14

    if-le v12, v14, :cond_8

    :cond_6
    const/4 v8, 0x1

    .line 484
    .local v8, "viewIsCloserToHorizontalBoundary":Z
    :goto_4
    if-eqz v4, :cond_9

    .line 485
    if-eqz v10, :cond_0

    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    .line 491
    move-object v2, v6

    goto :goto_2

    .line 478
    .end local v8    # "viewIsCloserToHorizontalBoundary":Z
    .end local v9    # "viewIsCloserToVerticalBoundary":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 481
    .restart local v9    # "viewIsCloserToVerticalBoundary":Z
    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    .line 494
    .restart local v8    # "viewIsCloserToHorizontalBoundary":Z
    :cond_9
    if-eqz v10, :cond_a

    .line 496
    move-object v2, v6

    .line 497
    const/4 v4, 0x1

    goto :goto_2

    .line 498
    :cond_a
    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    .line 503
    move-object v2, v6

    goto :goto_2

    .line 509
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "viewBottom":I
    .end local v8    # "viewIsCloserToHorizontalBoundary":Z
    .end local v9    # "viewIsCloserToVerticalBoundary":Z
    .end local v10    # "viewIsFullyContained":Z
    .end local v11    # "viewLeft":I
    .end local v12    # "viewRight":I
    .end local v13    # "viewTop":I
    :cond_b
    return-object v2
.end method

.method private findFocusableViewInMyBounds(ZIZILandroid/view/View;)Landroid/view/View;
    .locals 9
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "leftFocus"    # Z
    .param p4, "left"    # I
    .param p5, "preferredFocusable"    # Landroid/view/View;

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    .line 534
    .local v8, "verticalFadingEdgeLength":I
    add-int v2, p2, v8

    .line 535
    .local v2, "topWithoutFadingEdge":I
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getHeight()I

    move-result v0

    add-int/2addr v0, p2

    sub-int v3, v0, v8

    .line 536
    .local v3, "bottomWithoutFadingEdge":I
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 537
    .local v7, "horizontalFadingEdgeLength":I
    add-int v5, p4, v7

    .line 538
    .local v5, "leftWithoutFadingEdge":I
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getWidth()I

    move-result v0

    add-int/2addr v0, p4

    sub-int v6, v0, v7

    .line 540
    .local v6, "rightWithoutFadingEdge":I
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, v3, :cond_0

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, v2, :cond_0

    invoke-virtual {p5}, Landroid/view/View;->getLeft()I

    move-result v0

    if-ge v0, v6, :cond_0

    invoke-virtual {p5}, Landroid/view/View;->getRight()I

    move-result v0

    if-le v0, v5, :cond_0

    .line 547
    .end local p5    # "preferredFocusable":Landroid/view/View;
    :goto_0
    return-object p5

    .restart local p5    # "preferredFocusable":Landroid/view/View;
    :cond_0
    move-object v0, p0

    move v1, p1

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->findFocusableViewInBounds(ZIIZII)Landroid/view/View;

    move-result-object p5

    goto :goto_0
.end method

.method private initTwoDScrollView()V
    .locals 3

    .prologue
    .line 693
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    .line 694
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->setFocusable(Z)V

    .line 695
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->setDescendantFocusability(I)V

    .line 696
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->setWillNotDraw(Z)V

    .line 697
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 698
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTouchSlop:I

    .line 699
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mMinimumVelocity:I

    .line 700
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mMaximumVelocity:I

    .line 701
    return-void
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 707
    if-ne p1, p2, :cond_1

    .line 712
    :cond_0
    :goto_0
    return v1

    .line 711
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 712
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private scrollAndFocus(IIIIII)Z
    .locals 19
    .param p1, "directionY"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "directionX"    # I
    .param p5, "left"    # I
    .param p6, "right"    # I

    .prologue
    .line 1000
    const/4 v15, 0x1

    .line 1001
    .local v15, "handled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getHeight()I

    move-result v16

    .line 1002
    .local v16, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollY()I

    move-result v12

    .line 1003
    .local v12, "containerTop":I
    add-int v9, v12, v16

    .line 1004
    .local v9, "containerBottom":I
    const/16 v2, 0x21

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    const/4 v3, 0x1

    .line 1005
    .local v3, "up":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getWidth()I

    move-result v18

    .line 1006
    .local v18, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollX()I

    move-result v10

    .line 1007
    .local v10, "containerLeft":I
    add-int v11, v10, v18

    .line 1008
    .local v11, "containerRight":I
    const/16 v2, 0x21

    move/from16 v0, p4

    if-ne v0, v2, :cond_5

    const/4 v6, 0x1

    .local v6, "leftwards":Z
    :goto_1
    move-object/from16 v2, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    .line 1009
    invoke-direct/range {v2 .. v8}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->findFocusableViewInBounds(ZIIZII)Landroid/view/View;

    move-result-object v17

    .line 1010
    .local v17, "newFocused":Landroid/view/View;
    if-nez v17, :cond_0

    .line 1011
    move-object/from16 v17, p0

    .line 1013
    :cond_0
    move/from16 v0, p2

    if-lt v0, v12, :cond_1

    move/from16 v0, p3

    if-le v0, v9, :cond_2

    :cond_1
    move/from16 v0, p5

    if-lt v0, v10, :cond_6

    move/from16 v0, p6

    if-gt v0, v11, :cond_6

    .line 1014
    :cond_2
    const/4 v15, 0x0

    .line 1020
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v17

    if-eq v0, v2, :cond_3

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1021
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTwoDScrollViewMovedFocus:Z

    .line 1022
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTwoDScrollViewMovedFocus:Z

    .line 1024
    :cond_3
    return v15

    .line 1004
    .end local v3    # "up":Z
    .end local v6    # "leftwards":Z
    .end local v10    # "containerLeft":I
    .end local v11    # "containerRight":I
    .end local v17    # "newFocused":Landroid/view/View;
    .end local v18    # "width":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 1008
    .restart local v3    # "up":Z
    .restart local v10    # "containerLeft":I
    .restart local v11    # "containerRight":I
    .restart local v18    # "width":I
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 1016
    .restart local v6    # "leftwards":Z
    .restart local v17    # "newFocused":Landroid/view/View;
    :cond_6
    if-eqz v3, :cond_7

    sub-int v14, p2, v12

    .line 1017
    .local v14, "deltaY":I
    :goto_3
    if-eqz v6, :cond_8

    sub-int v13, p5, v10

    .line 1018
    .local v13, "deltaX":I
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->doScroll(II)V

    goto :goto_2

    .line 1016
    .end local v13    # "deltaX":I
    .end local v14    # "deltaY":I
    :cond_7
    sub-int v14, p3, v9

    goto :goto_3

    .line 1017
    .restart local v14    # "deltaY":I
    :cond_8
    sub-int v13, p6, v11

    goto :goto_4
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1057
    iget-object v1, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1059
    iget-object v1, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1060
    iget-object v1, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1061
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    .line 1062
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->scrollBy(II)V

    .line 1064
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1075
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1076
    .local v0, "delta":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1077
    .local v1, "scroll":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1078
    if-eqz p2, :cond_2

    .line 1079
    invoke-virtual {p0, v2, v0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->scrollBy(II)V

    .line 1084
    :cond_0
    :goto_1
    return v1

    .end local v1    # "scroll":Z
    :cond_1
    move v1, v2

    .line 1076
    goto :goto_0

    .line 1081
    .restart local v1    # "scroll":Z
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TwoDScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 133
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TwoDScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 141
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TwoDScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 149
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TwoDScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    return-void
.end method

.method public arrowScroll(IZ)Z
    .locals 10
    .param p1, "direction"    # I
    .param p2, "horizontal"    # Z

    .prologue
    const/16 v8, 0x21

    const/16 v9, 0x82

    const/4 v7, 0x0

    .line 167
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 168
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 169
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {v6, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 170
    .local v3, "nextFocused":Landroid/view/View;
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getMaxScrollAmountHorizontal()I

    move-result v2

    .line 172
    .local v2, "maxJump":I
    :goto_0
    if-nez p2, :cond_7

    .line 173
    if-eqz v3, :cond_2

    .line 174
    iget-object v6, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 175
    iget-object v6, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v6}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 176
    iget-object v6, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v5

    .line 177
    .local v5, "scrollDelta":I
    invoke-direct {p0, v7, v5}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->doScroll(II)V

    .line 178
    invoke-virtual {v3, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 225
    :goto_1
    const/4 v6, 0x1

    :goto_2
    return v6

    .line 170
    .end local v2    # "maxJump":I
    .end local v5    # "scrollDelta":I
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getMaxScrollAmountVertical()I

    move-result v2

    goto :goto_0

    .line 181
    .restart local v2    # "maxJump":I
    :cond_2
    move v5, v2

    .line 182
    .restart local v5    # "scrollDelta":I
    if-ne p1, v8, :cond_4

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollY()I

    move-result v6

    if-ge v6, v5, :cond_4

    .line 183
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollY()I

    move-result v5

    .line 193
    :cond_3
    :goto_3
    if-nez v5, :cond_5

    move v6, v7

    .line 194
    goto :goto_2

    .line 184
    :cond_4
    if-ne p1, v9, :cond_3

    .line 185
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 186
    invoke-virtual {p0, v7}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 187
    .local v1, "daBottom":I
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getHeight()I

    move-result v8

    add-int v4, v6, v8

    .line 188
    .local v4, "screenBottom":I
    sub-int v6, v1, v4

    if-ge v6, v2, :cond_3

    .line 189
    sub-int v5, v1, v4

    goto :goto_3

    .line 196
    .end local v1    # "daBottom":I
    .end local v4    # "screenBottom":I
    :cond_5
    if-ne p1, v9, :cond_6

    move v6, v5

    :goto_4
    invoke-direct {p0, v7, v6}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->doScroll(II)V

    goto :goto_1

    :cond_6
    neg-int v6, v5

    goto :goto_4

    .line 199
    .end local v5    # "scrollDelta":I
    :cond_7
    if-eqz v3, :cond_8

    .line 200
    iget-object v6, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 201
    iget-object v6, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v6}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 202
    iget-object v6, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v5

    .line 203
    .restart local v5    # "scrollDelta":I
    invoke-direct {p0, v5, v7}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->doScroll(II)V

    .line 204
    invoke-virtual {v3, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_1

    .line 207
    .end local v5    # "scrollDelta":I
    :cond_8
    move v5, v2

    .line 208
    .restart local v5    # "scrollDelta":I
    if-ne p1, v8, :cond_a

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollY()I

    move-result v6

    if-ge v6, v5, :cond_a

    .line 209
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollY()I

    move-result v5

    .line 219
    :cond_9
    :goto_5
    if-nez v5, :cond_b

    move v6, v7

    .line 220
    goto :goto_2

    .line 210
    :cond_a
    if-ne p1, v9, :cond_9

    .line 211
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_9

    .line 212
    invoke-virtual {p0, v7}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 213
    .restart local v1    # "daBottom":I
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getHeight()I

    move-result v8

    add-int v4, v6, v8

    .line 214
    .restart local v4    # "screenBottom":I
    sub-int v6, v1, v4

    if-ge v6, v2, :cond_9

    .line 215
    sub-int v5, v1, v4

    goto :goto_5

    .line 222
    .end local v1    # "daBottom":I
    .end local v4    # "screenBottom":I
    :cond_b
    if-ne p1, v9, :cond_c

    move v6, v5

    :goto_6
    invoke-direct {p0, v6, v7}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->doScroll(II)V

    goto/16 :goto_1

    :cond_c
    neg-int v6, v5

    goto :goto_6
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildCount()I

    move-result v0

    .line 244
    .local v0, "count":I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getWidth()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    .line 249
    iget-object v5, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 266
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollX()I

    move-result v1

    .line 267
    .local v1, "oldX":I
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollY()I

    move-result v2

    .line 268
    .local v2, "oldY":I
    iget-object v5, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 269
    .local v3, "x":I
    iget-object v5, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 270
    .local v4, "y":I
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 271
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 272
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-static {v3, v5, v6}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->clamp(III)I

    move-result v5

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v4, v6, v7}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->clamp(III)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->scrollTo(II)V

    .line 277
    .end local v0    # "child":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollX()I

    move-result v5

    if-ne v1, v5, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollY()I

    move-result v5

    if-eq v2, v5, :cond_1

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollY()I

    move-result v6

    invoke-virtual {p0, v5, v6, v1, v2}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->onScrollChanged(IIII)V

    .line 282
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->postInvalidate()V

    .line 284
    .end local v1    # "oldX":I
    .end local v2    # "oldY":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_2
    return-void

    .line 275
    .restart local v1    # "oldX":I
    .restart local v2    # "oldY":I
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    :cond_3
    invoke-virtual {p0, v3, v4}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 295
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    .line 343
    :cond_0
    :goto_0
    return v6

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getHeight()I

    move-result v3

    .line 297
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollY()I

    move-result v5

    .line 298
    .local v5, "screenTop":I
    add-int v4, v5, v3

    .line 299
    .local v4, "screenBottom":I
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 301
    .local v2, "fadingEdge":I
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_2

    .line 302
    add-int/2addr v5, v2

    .line 306
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 307
    sub-int/2addr v4, v2

    .line 309
    :cond_3
    const/4 v6, 0x0

    .line 310
    .local v6, "scrollYDelta":I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v5, :cond_5

    .line 314
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v3, :cond_4

    .line 316
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 323
    :goto_1
    invoke-virtual {p0, v7}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 324
    .local v0, "bottom":I
    sub-int v1, v0, v4

    .line 325
    .local v1, "distanceToBottom":I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 327
    goto :goto_0

    .line 319
    .end local v0    # "bottom":I
    .end local v1    # "distanceToBottom":I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    add-int/2addr v6, v8

    goto :goto_1

    .line 327
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_0

    .line 332
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 334
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 341
    :goto_2
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 337
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_2
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildCount()I

    move-result v0

    .line 353
    .local v0, "count":I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 359
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 360
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 361
    const/4 v1, 0x1

    .line 363
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v8, 0x21

    const/16 v7, 0x11

    const/16 v6, 0x82

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 386
    iget-object v5, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 387
    invoke-direct {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->canScroll()Z

    move-result v5

    if-nez v5, :cond_3

    .line 388
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 389
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 390
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 391
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    invoke-virtual {v5, p0, v0, v6}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 392
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v6}, Landroid/view/View;->requestFocus(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 429
    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v2    # "nextFocused":Landroid/view/View;
    :goto_0
    return v3

    .restart local v0    # "currentFocused":Landroid/view/View;
    .restart local v2    # "nextFocused":Landroid/view/View;
    :cond_1
    move v3, v4

    .line 392
    goto :goto_0

    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v2    # "nextFocused":Landroid/view/View;
    :cond_2
    move v3, v4

    .line 394
    goto :goto_0

    .line 396
    :cond_3
    const/4 v1, 0x0

    .line 397
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_4

    .line 398
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_4
    :goto_1
    move v3, v1

    .line 429
    goto :goto_0

    .line 400
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 401
    invoke-virtual {p0, v8, v4}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->arrowScroll(IZ)Z

    move-result v1

    goto :goto_1

    .line 403
    :cond_5
    invoke-virtual {p0, v8, v4}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->fullScroll(IZ)Z

    move-result v1

    .line 405
    goto :goto_1

    .line 407
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 408
    invoke-virtual {p0, v6, v4}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->arrowScroll(IZ)Z

    move-result v1

    goto :goto_1

    .line 410
    :cond_6
    invoke-virtual {p0, v6, v4}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->fullScroll(IZ)Z

    move-result v1

    .line 412
    goto :goto_1

    .line 414
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_7

    .line 415
    invoke-virtual {p0, v7, v3}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->arrowScroll(IZ)Z

    move-result v1

    goto :goto_1

    .line 417
    :cond_7
    invoke-virtual {p0, v7, v3}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->fullScroll(IZ)Z

    move-result v1

    .line 419
    goto :goto_1

    .line 421
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_8

    .line 422
    const/16 v4, 0x42

    invoke-virtual {p0, v4, v3}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->arrowScroll(IZ)Z

    move-result v1

    goto :goto_1

    .line 424
    :cond_8
    const/16 v4, 0x42

    invoke-virtual {p0, v4, v3}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->fullScroll(IZ)Z

    move-result v1

    goto :goto_1

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public fling(II)V
    .locals 14
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 559
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getPaddingTop()I

    move-result v2

    sub-int v10, v0, v2

    .line 560
    .local v10, "height":I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 561
    .local v9, "bottom":I
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getPaddingLeft()I

    move-result v2

    sub-int v13, v0, v2

    .line 562
    .local v13, "width":I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 564
    .local v12, "right":I
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollY()I

    move-result v2

    const/4 v5, 0x0

    sub-int v6, v12, v13

    const/4 v7, 0x0

    sub-int v8, v9, v10

    move v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 566
    if-lez p2, :cond_3

    const/4 v3, 0x1

    .line 567
    .local v3, "movingDown":Z
    :goto_0
    if-lez p1, :cond_4

    const/4 v1, 0x1

    .line 569
    .local v1, "movingRight":Z
    :goto_1
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v4

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->findFocusableViewInMyBounds(ZIZILandroid/view/View;)Landroid/view/View;

    move-result-object v11

    .line 570
    .local v11, "newFocused":Landroid/view/View;
    if-nez v11, :cond_0

    .line 571
    move-object v11, p0

    .line 574
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v11, v0, :cond_1

    if-eqz v3, :cond_5

    const/16 v0, 0x82

    :goto_2
    invoke-virtual {v11, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTwoDScrollViewMovedFocus:Z

    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTwoDScrollViewMovedFocus:Z

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->awakenScrollBars(I)Z

    .line 580
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->invalidate()V

    .line 582
    .end local v1    # "movingRight":Z
    .end local v3    # "movingDown":Z
    .end local v9    # "bottom":I
    .end local v10    # "height":I
    .end local v11    # "newFocused":Landroid/view/View;
    .end local v12    # "right":I
    .end local v13    # "width":I
    :cond_2
    return-void

    .line 566
    .restart local v9    # "bottom":I
    .restart local v10    # "height":I
    .restart local v12    # "right":I
    .restart local v13    # "width":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 567
    .restart local v3    # "movingDown":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 574
    .restart local v1    # "movingRight":Z
    .restart local v11    # "newFocused":Landroid/view/View;
    :cond_5
    const/16 v0, 0x21

    goto :goto_2
.end method

.method public fullScroll(IZ)Z
    .locals 13
    .param p1, "direction"    # I
    .param p2, "horizontal"    # Z

    .prologue
    .line 597
    if-nez p2, :cond_2

    .line 598
    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    const/4 v8, 0x1

    .line 599
    .local v8, "down":Z
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getHeight()I

    move-result v9

    .line 600
    .local v9, "height":I
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 601
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    .line 602
    if-eqz v8, :cond_0

    .line 603
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildCount()I

    move-result v7

    .line 604
    .local v7, "count":I
    if-lez v7, :cond_0

    .line 605
    add-int/lit8 v0, v7, -0x1

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 606
    .local v11, "view":Landroid/view/View;
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 607
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v9

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 610
    .end local v7    # "count":I
    .end local v11    # "view":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->scrollAndFocus(IIIIII)Z

    move-result v0

    .line 624
    .end local v8    # "down":Z
    .end local v9    # "height":I
    :goto_1
    return v0

    .line 598
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 612
    :cond_2
    const/16 v0, 0x82

    if-ne p1, v0, :cond_4

    const/4 v10, 0x1

    .line 613
    .local v10, "right":Z
    :goto_2
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getWidth()I

    move-result v12

    .line 614
    .local v12, "width":I
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 615
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v12, v0, Landroid/graphics/Rect;->right:I

    .line 616
    if-eqz v10, :cond_3

    .line 617
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildCount()I

    move-result v7

    .line 618
    .restart local v7    # "count":I
    if-lez v7, :cond_3

    .line 619
    add-int/lit8 v0, v7, -0x1

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 620
    .restart local v11    # "view":Landroid/view/View;
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 621
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v12

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 624
    .end local v7    # "count":I
    .end local v11    # "view":Landroid/view/View;
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->scrollAndFocus(IIIIII)Z

    move-result v0

    goto :goto_1

    .line 612
    .end local v10    # "right":Z
    .end local v12    # "width":I
    :cond_4
    const/4 v10, 0x0

    goto :goto_2
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 631
    const/4 v3, 0x0

    .line 639
    :goto_0
    return v3

    .line 633
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 634
    .local v1, "length":I
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 635
    .local v0, "bottomEdge":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 636
    .local v2, "span":I
    if-ge v2, v1, :cond_1

    .line 637
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .line 639
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 645
    const/4 v1, 0x0

    .line 651
    :goto_0
    return v1

    .line 647
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 648
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollX()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 649
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 651
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getMaxScrollAmountHorizontal()I
    .locals 2

    .prologue
    .line 655
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getMaxScrollAmountVertical()I
    .locals 2

    .prologue
    .line 663
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 669
    const/4 v3, 0x0

    .line 677
    :goto_0
    return v3

    .line 671
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 672
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getPaddingRight()I

    move-result v4

    sub-int v1, v3, v4

    .line 673
    .local v1, "rightEdge":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .line 674
    .local v2, "span":I
    if-ge v2, v0, :cond_1

    .line 675
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_0

    .line 677
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 683
    const/4 v1, 0x0

    .line 689
    :goto_0
    return v1

    .line 685
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 686
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 687
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 689
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 716
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 720
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 721
    .local v1, "childWidthMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 723
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 724
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

    .line 728
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 730
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 731
    .local v1, "childWidthMeasureSpec":I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 733
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 734
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 747
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 748
    .local v0, "action":I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_0

    iget-boolean v7, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mIsBeingDragged:Z

    if-eqz v7, :cond_0

    .line 798
    :goto_0
    return v5

    .line 751
    :cond_0
    invoke-direct {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->canScroll()Z

    move-result v7

    if-nez v7, :cond_1

    .line 752
    iput-boolean v6, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mIsBeingDragged:Z

    move v5, v6

    .line 753
    goto :goto_0

    .line 755
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 756
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 757
    .local v1, "x":F
    packed-switch v0, :pswitch_data_0

    .line 798
    :cond_2
    :goto_1
    iget-boolean v5, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 767
    :pswitch_0
    iget v6, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mLastMotionY:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v4, v6

    .line 768
    .local v4, "yDiff":I
    iget v6, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mLastMotionX:F

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v2, v6

    .line 769
    .local v2, "xDiff":I
    iget v6, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTouchSlop:I

    if-gt v4, v6, :cond_3

    iget v6, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTouchSlop:I

    if-le v2, v6, :cond_2

    .line 770
    :cond_3
    iput-boolean v5, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 776
    .end local v2    # "xDiff":I
    .end local v4    # "yDiff":I
    :pswitch_1
    iput v3, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mLastMotionY:F

    .line 777
    iput v1, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mLastMotionX:F

    .line 784
    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_4

    :goto_2
    iput-boolean v5, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mIsBeingDragged:Z

    goto :goto_1

    :cond_4
    move v5, v6

    goto :goto_2

    .line 790
    :pswitch_2
    iput-boolean v6, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 757
    nop

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
    .line 803
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mIsLayoutDirty:Z

    .line 806
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->scrollToChild(Landroid/view/View;)V

    .line 809
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 812
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->scrollTo(II)V

    .line 813
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 826
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 827
    const/16 p1, 0x82

    .line 832
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 837
    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    if-nez v0, :cond_3

    .line 838
    const/4 v1, 0x0

    .line 841
    :goto_2
    return v1

    .line 828
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 829
    const/16 p1, 0x21

    goto :goto_0

    .line 832
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 841
    .restart local v0    # "nextFocus":Landroid/view/View;
    :cond_3
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 846
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 848
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 849
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    iget-object v3, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 856
    iget-object v3, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 857
    iget-object v3, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 858
    .local v1, "scrollDeltaX":I
    iget-object v3, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 859
    .local v2, "scrollDeltaY":I
    invoke-direct {p0, v1, v2}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->doScroll(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    .line 864
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v12

    if-eqz v12, :cond_1

    .line 957
    :cond_0
    :goto_0
    return v11

    .line 870
    :cond_1
    invoke-direct {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->canScroll()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 874
    iget-object v12, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_2

    .line 875
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v12

    iput-object v12, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 877
    :cond_2
    iget-object v12, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 879
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 880
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 881
    .local v10, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 883
    .local v9, "x":F
    packed-switch v0, :pswitch_data_0

    .line 957
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v11, 0x1

    goto :goto_0

    .line 890
    :pswitch_1
    iget-object v11, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-nez v11, :cond_4

    .line 891
    iget-object v11, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->abortAnimation()V

    .line 895
    :cond_4
    iput v10, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mLastMotionY:F

    .line 896
    iput v9, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mLastMotionX:F

    goto :goto_1

    .line 903
    :pswitch_2
    iget-object v11, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-nez v11, :cond_3

    .line 904
    iget-object v11, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_1

    .line 909
    :pswitch_3
    iget v12, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mLastMotionX:F

    sub-float/2addr v12, v9

    float-to-int v3, v12

    .line 910
    .local v3, "deltaX":I
    iget v12, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mLastMotionY:F

    sub-float/2addr v12, v10

    float-to-int v4, v12

    .line 911
    .local v4, "deltaY":I
    iput v9, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mLastMotionX:F

    .line 912
    iput v10, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mLastMotionY:F

    .line 914
    if-gez v3, :cond_8

    .line 915
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollX()I

    move-result v12

    if-gez v12, :cond_5

    .line 916
    const/4 v3, 0x0

    .line 927
    :cond_5
    :goto_2
    if-gez v4, :cond_a

    .line 928
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollY()I

    move-result v11

    if-gez v11, :cond_6

    .line 929
    const/4 v4, 0x0

    .line 940
    :cond_6
    :goto_3
    if-nez v4, :cond_7

    if-eqz v3, :cond_3

    .line 941
    :cond_7
    invoke-virtual {p0, v3, v4}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->scrollBy(II)V

    goto :goto_1

    .line 918
    :cond_8
    if-lez v3, :cond_5

    .line 919
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getWidth()I

    move-result v12

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getPaddingRight()I

    move-result v13

    sub-int v7, v12, v13

    .line 920
    .local v7, "rightEdge":I
    invoke-virtual {p0, v11}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollX()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int v1, v12, v7

    .line 921
    .local v1, "availableToScroll":I
    if-lez v1, :cond_9

    .line 922
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_2

    .line 924
    :cond_9
    const/4 v3, 0x0

    goto :goto_2

    .line 931
    .end local v1    # "availableToScroll":I
    .end local v7    # "rightEdge":I
    :cond_a
    if-lez v4, :cond_6

    .line 932
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getHeight()I

    move-result v12

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getPaddingBottom()I

    move-result v13

    sub-int v2, v12, v13

    .line 933
    .local v2, "bottomEdge":I
    invoke-virtual {p0, v11}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollY()I

    move-result v12

    sub-int/2addr v11, v12

    sub-int v1, v11, v2

    .line 934
    .restart local v1    # "availableToScroll":I
    if-lez v1, :cond_b

    .line 935
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_3

    .line 937
    :cond_b
    const/4 v4, 0x0

    goto :goto_3

    .line 944
    .end local v1    # "availableToScroll":I
    .end local v2    # "bottomEdge":I
    .end local v3    # "deltaX":I
    .end local v4    # "deltaY":I
    :pswitch_4
    iget-object v8, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 945
    .local v8, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v11, 0x3e8

    iget v12, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mMaximumVelocity:I

    int-to-float v12, v12

    invoke-virtual {v8, v11, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 946
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v11

    float-to-int v5, v11

    .line 947
    .local v5, "initialXVelocity":I
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v11

    float-to-int v6, v11

    .line 948
    .local v6, "initialYVelocity":I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v11, v12

    iget v12, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mMinimumVelocity:I

    if-le v11, v12, :cond_c

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getChildCount()I

    move-result v11

    if-lez v11, :cond_c

    .line 949
    neg-int v11, v5

    neg-int v12, v6

    invoke-virtual {p0, v11, v12}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->fling(II)V

    .line 951
    :cond_c
    iget-object v11, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v11, :cond_3

    .line 952
    iget-object v11, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->recycle()V

    .line 953
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 883
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 962
    iget-boolean v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mTwoDScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 963
    iget-boolean v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 964
    invoke-direct {p0, p2}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->scrollToChild(Landroid/view/View;)V

    .line 970
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 971
    return-void

    .line 967
    :cond_1
    iput-object p2, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 976
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 977
    invoke-direct {p0, p2, p3}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 982
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mIsLayoutDirty:Z

    .line 983
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 984
    return-void
.end method

.method public scrollTo(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1034
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1049
    :goto_0
    return-void

    .line 1038
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method public final smoothScrollBy(II)V
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 1094
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mLastScroll:J

    sub-long v0, v2, v4

    .line 1095
    .local v0, "duration":J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1096
    iget-object v2, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollY()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1097
    iget-object v2, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->awakenScrollBars(I)Z

    .line 1098
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->invalidate()V

    .line 1105
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mLastScroll:J

    .line 1106
    return-void

    .line 1100
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1101
    iget-object v2, p0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1103
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1115
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->smoothScrollBy(II)V

    .line 1116
    return-void
.end method
