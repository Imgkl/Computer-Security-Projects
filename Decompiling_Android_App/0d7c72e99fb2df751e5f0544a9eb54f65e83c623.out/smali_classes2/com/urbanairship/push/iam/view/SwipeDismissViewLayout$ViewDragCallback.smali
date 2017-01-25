.class Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SwipeDismissViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation


# instance fields
.field private capturedView:Landroid/view/View;

.field private dragPercent:F

.field private isDismissed:Z

.field private startLeft:I

.field private startTop:I

.field final synthetic this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;


# direct methods
.method private constructor <init>(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)V
    .locals 1

    .prologue
    .line 321
    iput-object p1, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    .line 324
    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->dragPercent:F

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->isDismissed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;
    .param p2, "x1"    # Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$1;

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;-><init>(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 335
    return p2
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 345
    iput-object p1, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->capturedView:Landroid/view/View;

    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->startTop:I

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->startLeft:I

    .line 348
    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->dragPercent:F

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->isDismissed:Z

    .line 350
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->capturedView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 374
    :cond_0
    monitor-enter p0

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    # getter for: Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->listener:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;
    invoke-static {v0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->access$100(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    # getter for: Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->listener:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;
    invoke-static {v0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->access$100(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->capturedView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;->onDragStateChanged(Landroid/view/View;I)V

    .line 379
    :cond_1
    if-nez p1, :cond_4

    .line 380
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->isDismissed:Z

    if-eqz v0, :cond_3

    .line 381
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    # getter for: Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->listener:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;
    invoke-static {v0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->access$100(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 382
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    # getter for: Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->listener:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;
    invoke-static {v0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->access$100(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->capturedView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;->onDismissed(Landroid/view/View;)V

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    iget-object v1, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->capturedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->removeView(Landroid/view/View;)V

    .line 388
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->capturedView:Landroid/view/View;

    .line 390
    :cond_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 355
    iget-object v2, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 356
    .local v1, "range":I
    iget v2, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->startLeft:I

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 358
    .local v0, "moved":I
    if-lez v1, :cond_0

    .line 359
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    iput v2, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->dragPercent:F

    .line 362
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-le v2, v3, :cond_1

    .line 363
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->dragPercent:F

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 364
    iget-object v2, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->invalidate()V

    .line 366
    :cond_1
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "xv"    # F
    .param p3, "yv"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 396
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 398
    .local v0, "absXv":F
    iget-object v5, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    # getter for: Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->minFlingVelocity:F
    invoke-static {v5}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->access$200(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)F

    move-result v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_3

    .line 399
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-lez v5, :cond_2

    move v1, v3

    .line 404
    .local v1, "isSwipeLeft":Z
    :goto_0
    iget v5, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->dragPercent:F

    const/high16 v6, 0x3f400000    # 0.75f

    cmpl-float v5, v5, v6

    if-gez v5, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    # getter for: Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->minFlingVelocity:F
    invoke-static {v6}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->access$200(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    iget v5, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->dragPercent:F

    const v6, 0x3dcccccd    # 0.1f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    iput-boolean v4, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->isDismissed:Z

    .line 407
    iget-boolean v3, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->isDismissed:Z

    if-eqz v3, :cond_6

    .line 408
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    neg-int v2, v3

    .line 409
    .local v2, "offSet":I
    :goto_1
    iget-object v3, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    # getter for: Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;
    invoke-static {v3}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->access$300(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v3

    iget v4, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->startLeft:I

    sub-int/2addr v4, v2

    iget v5, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->startTop:I

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 414
    .end local v2    # "offSet":I
    :goto_2
    iget-object v3, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    invoke-virtual {v3}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->invalidate()V

    .line 415
    return-void

    .end local v1    # "isSwipeLeft":Z
    :cond_2
    move v1, v4

    .line 399
    goto :goto_0

    .line 401
    :cond_3
    iget v5, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->startLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    if-ge v5, v6, :cond_4

    move v1, v3

    .restart local v1    # "isSwipeLeft":Z
    :goto_3
    goto :goto_0

    .end local v1    # "isSwipeLeft":Z
    :cond_4
    move v1, v4

    goto :goto_3

    .line 408
    .restart local v1    # "isSwipeLeft":Z
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_1

    .line 411
    :cond_6
    iget-object v3, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    # getter for: Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;
    invoke-static {v3}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->access$300(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v3

    iget v4, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->startLeft:I

    iget v5, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->startTop:I

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    goto :goto_2
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "i"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->capturedView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
