.class public abstract Lcom/eventgenie/android/activities/activitystream/GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureListener.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/eventgenie/android/activities/activitystream/GestureListener;->context:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public abstract invalidateScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v0, 0x0

    .line 19
    iget-object v5, p0, Lcom/eventgenie/android/activities/activitystream/GestureListener;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 20
    .local v4, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    .line 21
    .local v2, "swipeMinDistance":I
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    .line 22
    .local v3, "swipeThresholdVelocity":I
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 24
    .local v1, "swipeMaxOffPath":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    int-to-float v6, v2

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    int-to-float v6, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/activities/activitystream/GestureListener;->onFlingRightToLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 28
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    int-to-float v6, v2

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    int-to-float v6, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/activities/activitystream/GestureListener;->onFlingLeftToRight(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 31
    .local v0, "ret":Z
    goto :goto_0

    .line 34
    .end local v0    # "ret":Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    int-to-float v6, v2

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    int-to-float v6, v3

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 37
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    int-to-float v6, v2

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    int-to-float v6, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    goto :goto_0
.end method

.method public abstract onFlingLeftToRight(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
.end method

.method public abstract onFlingRightToLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/activities/activitystream/GestureListener;->invalidateScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method
