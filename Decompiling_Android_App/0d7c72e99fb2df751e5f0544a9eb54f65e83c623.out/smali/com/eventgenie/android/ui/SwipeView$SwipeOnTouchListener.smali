.class Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;
.super Ljava/lang/Object;
.source "SwipeView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/ui/SwipeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwipeOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/ui/SwipeView;


# direct methods
.method private constructor <init>(Lcom/eventgenie/android/ui/SwipeView;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eventgenie/android/ui/SwipeView;Lcom/eventgenie/android/ui/SwipeView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/eventgenie/android/ui/SwipeView;
    .param p2, "x1"    # Lcom/eventgenie/android/ui/SwipeView$1;

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;-><init>(Lcom/eventgenie/android/ui/SwipeView;)V

    return-void
.end method

.method private actionDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 521
    iget-object v0, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    # setter for: Lcom/eventgenie/android/ui/SwipeView;->mMotionStartX:I
    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/SwipeView;->access$502(Lcom/eventgenie/android/ui/SwipeView;I)I

    .line 522
    iget-object v0, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    # setter for: Lcom/eventgenie/android/ui/SwipeView;->mMotionStartY:I
    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/SwipeView;->access$602(Lcom/eventgenie/android/ui/SwipeView;I)I

    .line 523
    iget-object v0, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # setter for: Lcom/eventgenie/android/ui/SwipeView;->mFirstMotionEvent:Z
    invoke-static {v0, v2}, Lcom/eventgenie/android/ui/SwipeView;->access$702(Lcom/eventgenie/android/ui/SwipeView;Z)Z

    .line 524
    return v2
.end method

.method private actionMove(Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mMotionStartX:I
    invoke-static {v2}, Lcom/eventgenie/android/ui/SwipeView;->access$500(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v17, v2, v3

    .line 532
    .local v17, "newDistance":I
    if-gez v17, :cond_1

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mDistanceX:I
    invoke-static {v2}, Lcom/eventgenie/android/ui/SwipeView;->access$800(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    move/from16 v0, v17

    if-gt v2, v0, :cond_0

    const/16 v16, 0x1

    .line 542
    .local v16, "newDirection":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mPreviousDirection:I
    invoke-static {v2}, Lcom/eventgenie/android/ui/SwipeView;->access$900(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v2

    move/from16 v0, v16

    if-eq v0, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mFirstMotionEvent:Z
    invoke-static {v2}, Lcom/eventgenie/android/ui/SwipeView;->access$700(Lcom/eventgenie/android/ui/SwipeView;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    # setter for: Lcom/eventgenie/android/ui/SwipeView;->mMotionStartX:I
    invoke-static {v2, v3}, Lcom/eventgenie/android/ui/SwipeView;->access$502(Lcom/eventgenie/android/ui/SwipeView;I)I

    .line 545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mMotionStartX:I
    invoke-static {v3}, Lcom/eventgenie/android/ui/SwipeView;->access$500(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    # setter for: Lcom/eventgenie/android/ui/SwipeView;->mDistanceX:I
    invoke-static {v2, v3}, Lcom/eventgenie/android/ui/SwipeView;->access$802(Lcom/eventgenie/android/ui/SwipeView;I)I

    .line 552
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    move/from16 v0, v16

    # setter for: Lcom/eventgenie/android/ui/SwipeView;->mPreviousDirection:I
    invoke-static {v2, v0}, Lcom/eventgenie/android/ui/SwipeView;->access$902(Lcom/eventgenie/android/ui/SwipeView;I)I

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mJustInterceptedAndIgnored:Z
    invoke-static {v2}, Lcom/eventgenie/android/ui/SwipeView;->access$300(Lcom/eventgenie/android/ui/SwipeView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    const/4 v3, 0x1

    # setter for: Lcom/eventgenie/android/ui/SwipeView;->mSendingDummyMotionEvent:Z
    invoke-static {v2, v3}, Lcom/eventgenie/android/ui/SwipeView;->access$402(Lcom/eventgenie/android/ui/SwipeView;Z)Z

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mMotionStartX:I
    invoke-static {v7}, Lcom/eventgenie/android/ui/SwipeView;->access$500(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mMotionStartY:I
    invoke-static {v8}, Lcom/eventgenie/android/ui/SwipeView;->access$600(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/eventgenie/android/ui/SwipeView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    const/4 v3, 0x0

    # setter for: Lcom/eventgenie/android/ui/SwipeView;->mJustInterceptedAndIgnored:Z
    invoke-static {v2, v3}, Lcom/eventgenie/android/ui/SwipeView;->access$302(Lcom/eventgenie/android/ui/SwipeView;Z)Z

    .line 560
    const/4 v2, 0x1

    .line 562
    :goto_2
    return v2

    .line 534
    .end local v16    # "newDirection":I
    :cond_0
    const/16 v16, -0x1

    goto/16 :goto_0

    .line 538
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mDistanceX:I
    invoke-static {v2}, Lcom/eventgenie/android/ui/SwipeView;->access$800(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    move/from16 v0, v17

    if-gt v2, v0, :cond_2

    const/16 v16, 0x1

    .restart local v16    # "newDirection":I
    :goto_3
    goto/16 :goto_0

    .end local v16    # "newDirection":I
    :cond_2
    const/16 v16, -0x1

    goto :goto_3

    .line 549
    .restart local v16    # "newDirection":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    move/from16 v0, v17

    # setter for: Lcom/eventgenie/android/ui/SwipeView;->mDistanceX:I
    invoke-static {v2, v0}, Lcom/eventgenie/android/ui/SwipeView;->access$802(Lcom/eventgenie/android/ui/SwipeView;I)I

    goto/16 :goto_1

    .line 562
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private actionUp(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 567
    iget-object v4, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    invoke-virtual {v4}, Lcom/eventgenie/android/ui/SwipeView;->getScrollX()I

    move-result v4

    int-to-float v2, v4

    .line 568
    .local v2, "fingerUpPosition":F
    iget-object v4, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/eventgenie/android/ui/SwipeView;->access$1000(Lcom/eventgenie/android/ui/SwipeView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mPageWidth:I
    invoke-static {v5}, Lcom/eventgenie/android/ui/SwipeView;->access$1100(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v5

    div-int/2addr v4, v5

    int-to-float v3, v4

    .line 569
    .local v3, "numberOfPages":F
    iget-object v4, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mPageWidth:I
    invoke-static {v4}, Lcom/eventgenie/android/ui/SwipeView;->access$1100(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v4

    int-to-float v4, v4

    div-float v1, v2, v4

    .line 570
    .local v1, "fingerUpPage":F
    const/4 v0, 0x0

    .line 572
    .local v0, "edgePosition":F
    iget-object v4, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mPreviousDirection:I
    invoke-static {v4}, Lcom/eventgenie/android/ui/SwipeView;->access$900(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 574
    iget-object v4, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mDistanceX:I
    invoke-static {v4}, Lcom/eventgenie/android/ui/SwipeView;->access$800(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v4

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->DEFAULT_SWIPE_THRESHOLD:I
    invoke-static {}, Lcom/eventgenie/android/ui/SwipeView;->access$1200()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 576
    iget-object v4, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mCurrentPage:I
    invoke-static {v4}, Lcom/eventgenie/android/ui/SwipeView;->access$100(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v3, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 578
    add-float v4, v1, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mPageWidth:I
    invoke-static {v5}, Lcom/eventgenie/android/ui/SwipeView;->access$1100(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v0, v4

    .line 624
    :goto_0
    iget-object v4, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    float-to-int v5, v0

    iget-object v6, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mPageWidth:I
    invoke-static {v6}, Lcom/eventgenie/android/ui/SwipeView;->access$1100(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v6

    div-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/eventgenie/android/ui/SwipeView;->smoothScrollToPage(I)V

    .line 625
    iget-object v4, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # setter for: Lcom/eventgenie/android/ui/SwipeView;->mFirstMotionEvent:Z
    invoke-static {v4, v7}, Lcom/eventgenie/android/ui/SwipeView;->access$702(Lcom/eventgenie/android/ui/SwipeView;Z)Z

    .line 626
    iget-object v4, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # setter for: Lcom/eventgenie/android/ui/SwipeView;->mMostlyScrollingInX:Z
    invoke-static {v4, v8}, Lcom/eventgenie/android/ui/SwipeView;->access$1302(Lcom/eventgenie/android/ui/SwipeView;Z)Z

    .line 627
    iget-object v4, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # setter for: Lcom/eventgenie/android/ui/SwipeView;->mMostlyScrollingInY:Z
    invoke-static {v4, v8}, Lcom/eventgenie/android/ui/SwipeView;->access$1402(Lcom/eventgenie/android/ui/SwipeView;Z)Z

    .line 629
    return v7

    .line 582
    :cond_0
    iget-object v4, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mCurrentPage:I
    invoke-static {v4}, Lcom/eventgenie/android/ui/SwipeView;->access$100(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v4

    iget-object v5, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mPageWidth:I
    invoke-static {v5}, Lcom/eventgenie/android/ui/SwipeView;->access$1100(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v0, v4

    goto :goto_0

    .line 587
    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v3, v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    .line 592
    add-float v4, v1, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mPageWidth:I
    invoke-static {v5}, Lcom/eventgenie/android/ui/SwipeView;->access$1100(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v0, v4

    goto :goto_0

    .line 596
    :cond_2
    iget-object v4, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mCurrentPage:I
    invoke-static {v4}, Lcom/eventgenie/android/ui/SwipeView;->access$100(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v4

    iget-object v5, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mPageWidth:I
    invoke-static {v5}, Lcom/eventgenie/android/ui/SwipeView;->access$1100(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v0, v4

    goto :goto_0

    .line 603
    :cond_3
    iget-object v4, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mDistanceX:I
    invoke-static {v4}, Lcom/eventgenie/android/ui/SwipeView;->access$800(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v4

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->DEFAULT_SWIPE_THRESHOLD:I
    invoke-static {}, Lcom/eventgenie/android/ui/SwipeView;->access$1200()I

    move-result v5

    neg-int v5, v5

    if-ge v4, v5, :cond_4

    .line 605
    float-to-int v4, v1

    iget-object v5, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mPageWidth:I
    invoke-static {v5}, Lcom/eventgenie/android/ui/SwipeView;->access$1100(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v0, v4

    goto :goto_0

    .line 609
    :cond_4
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-nez v4, :cond_5

    .line 614
    float-to-int v4, v1

    iget-object v5, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mPageWidth:I
    invoke-static {v5}, Lcom/eventgenie/android/ui/SwipeView;->access$1100(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v0, v4

    goto :goto_0

    .line 618
    :cond_5
    iget-object v4, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mCurrentPage:I
    invoke-static {v4}, Lcom/eventgenie/android/ui/SwipeView;->access$100(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v4

    iget-object v5, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mPageWidth:I
    invoke-static {v5}, Lcom/eventgenie/android/ui/SwipeView;->access$1100(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v0, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 486
    iget-object v2, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Lcom/eventgenie/android/ui/SwipeView;->access$200(Lcom/eventgenie/android/ui/SwipeView;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mJustInterceptedAndIgnored:Z
    invoke-static {v2}, Lcom/eventgenie/android/ui/SwipeView;->access$300(Lcom/eventgenie/android/ui/SwipeView;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Lcom/eventgenie/android/ui/SwipeView;->access$200(Lcom/eventgenie/android/ui/SwipeView;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mSendingDummyMotionEvent:Z
    invoke-static {v2}, Lcom/eventgenie/android/ui/SwipeView;->access$400(Lcom/eventgenie/android/ui/SwipeView;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 488
    :cond_1
    iget-object v2, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Lcom/eventgenie/android/ui/SwipeView;->access$200(Lcom/eventgenie/android/ui/SwipeView;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 490
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 493
    invoke-direct {p0, p2}, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->actionUp(Landroid/view/MotionEvent;)Z

    .line 516
    :cond_2
    :goto_0
    return v0

    .line 499
    :cond_3
    iget-object v0, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mSendingDummyMotionEvent:Z
    invoke-static {v0}, Lcom/eventgenie/android/ui/SwipeView;->access$400(Lcom/eventgenie/android/ui/SwipeView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 501
    iget-object v0, p0, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # setter for: Lcom/eventgenie/android/ui/SwipeView;->mSendingDummyMotionEvent:Z
    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/SwipeView;->access$402(Lcom/eventgenie/android/ui/SwipeView;Z)Z

    move v0, v1

    .line 502
    goto :goto_0

    .line 505
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 516
    goto :goto_0

    .line 508
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->actionDown(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 511
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->actionMove(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 514
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;->actionUp(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 505
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
