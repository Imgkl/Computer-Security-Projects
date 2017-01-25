.class public Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeDismissViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;,
        Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;
    }
.end annotation


# static fields
.field private static final FLING_MIN_DRAG_PERCENT:F = 0.1f

.field private static final IDLE_MIN_DRAG_PERCENT:F = 0.75f


# instance fields
.field private dragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private listener:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;

.field private minFlingVelocity:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->init(Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->init(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    invoke-direct {p0, p1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->init(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defResStyle"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 135
    invoke-direct {p0, p1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->init(Landroid/content/Context;)V

    .line 136
    return-void
.end method

.method static synthetic access$100(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->listener:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    .prologue
    .line 51
    iget v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->minFlingVelocity:F

    return v0
.end method

.method static synthetic access$300(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 149
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->minFlingVelocity:F

    .line 151
    new-instance v1, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;-><init>(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$1;)V

    invoke-static {p0, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 282
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 283
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 286
    :cond_0
    return-void
.end method

.method public getMinFlingVelocity()F
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->minFlingVelocity:F

    return v0
.end method

.method public getXFraction()F
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getWidth()I

    move-result v0

    .line 245
    .local v0, "width":I
    if-nez v0, :cond_0

    .line 246
    const/4 v1, 0x0

    .line 249
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getTranslationX()F

    move-result v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method public getYFraction()F
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getHeight()I

    move-result v0

    .line 199
    .local v0, "height":I
    if-nez v0, :cond_0

    .line 200
    const/4 v1, 0x0

    .line 203
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getTranslationY()F

    move-result v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 290
    iget-object v3, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 291
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 309
    :cond_1
    :goto_0
    return v1

    .line 293
    :cond_2
    iget-object v3, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 300
    iget-object v3, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, v1}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 301
    iget-object v3, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v0

    .line 302
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 303
    iget-object v3, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 304
    iget-object v3, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v3

    if-eq v3, v1, :cond_1

    move v1, v2

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    :cond_3
    move v1, v2

    .line 309
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 315
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getCapturedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;

    .prologue
    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    iput-object p1, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->listener:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;

    .line 184
    monitor-exit p0

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMinFlingVelocity(F)V
    .locals 0
    .param p1, "minFlingVelocity"    # F

    .prologue
    .line 162
    iput p1, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->minFlingVelocity:F

    .line 163
    return-void
.end method

.method public setXFraction(F)V
    .locals 2
    .param p1, "xFraction"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getHeight()I

    move-result v1

    if-nez v1, :cond_0

    .line 264
    new-instance v0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$2;

    invoke-direct {v0, p0, p1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$2;-><init>(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;F)V

    .line 273
    .local v0, "preDrawListener":Landroid/view/ViewTreeObserver$OnPreDrawListener;
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 278
    .end local v0    # "preDrawListener":Landroid/view/ViewTreeObserver$OnPreDrawListener;
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->setTranslationX(F)V

    goto :goto_0
.end method

.method public setYFraction(F)V
    .locals 2
    .param p1, "yFraction"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getHeight()I

    move-result v1

    if-nez v1, :cond_0

    .line 218
    new-instance v0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$1;

    invoke-direct {v0, p0, p1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$1;-><init>(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;F)V

    .line 228
    .local v0, "preDrawListener":Landroid/view/ViewTreeObserver$OnPreDrawListener;
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 232
    .end local v0    # "preDrawListener":Landroid/view/ViewTreeObserver$OnPreDrawListener;
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->setTranslationY(F)V

    goto :goto_0
.end method
