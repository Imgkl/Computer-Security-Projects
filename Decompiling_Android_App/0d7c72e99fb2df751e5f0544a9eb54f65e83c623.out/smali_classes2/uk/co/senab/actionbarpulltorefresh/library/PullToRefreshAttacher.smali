.class public Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;
.super Ljava/lang/Object;
.source "PullToRefreshAttacher.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PullToRefreshAttacher"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mAddHeaderViewRunnable:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;

.field private mEnvironmentDelegate:Luk/co/senab/actionbarpulltorefresh/library/EnvironmentDelegate;

.field private mHandlingTouchEventFromDown:Z

.field private mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mIsDestroyed:Z

.field private mIsRefreshing:Z

.field private mLastMotionY:F

.field private mOnRefreshListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;

.field private mPullBeginY:F

.field private final mRect:Landroid/graphics/Rect;

.field private final mRefreshMinimize:Z

.field private final mRefreshMinimizeDelay:I

.field private final mRefreshMinimizeRunnable:Ljava/lang/Runnable;

.field private final mRefreshOnUp:Z

.field private final mRefreshScrollDistance:F

.field private final mRefreshableViews:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mTouchSlop:I

.field private mViewBeingDragged:Landroid/view/View;

.field private final mViewLocationResult:[I


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Luk/co/senab/actionbarpulltorefresh/library/Options;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Luk/co/senab/actionbarpulltorefresh/library/Options;

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsDestroyed:Z

    .line 74
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mViewLocationResult:[I

    .line 75
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    .line 639
    new-instance v1, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$2;

    invoke-direct {v1, p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$2;-><init>(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)V

    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimizeRunnable:Ljava/lang/Runnable;

    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "activity cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    if-nez p2, :cond_1

    .line 84
    const-string v1, "PullToRefreshAttacher"

    const-string v2, "Given null options so using default options."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance p2, Luk/co/senab/actionbarpulltorefresh/library/Options;

    .end local p2    # "options":Luk/co/senab/actionbarpulltorefresh/library/Options;
    invoke-direct {p2}, Luk/co/senab/actionbarpulltorefresh/library/Options;-><init>()V

    .line 88
    .restart local p2    # "options":Luk/co/senab/actionbarpulltorefresh/library/Options;
    :cond_1
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    .line 89
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    .line 92
    iget v1, p2, Luk/co/senab/actionbarpulltorefresh/library/Options;->refreshScrollDistance:F

    iput v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshScrollDistance:F

    .line 93
    iget-boolean v1, p2, Luk/co/senab/actionbarpulltorefresh/library/Options;->refreshOnUp:Z

    iput-boolean v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshOnUp:Z

    .line 94
    iget v1, p2, Luk/co/senab/actionbarpulltorefresh/library/Options;->refreshMinimizeDelay:I

    iput v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimizeDelay:I

    .line 95
    iget-boolean v1, p2, Luk/co/senab/actionbarpulltorefresh/library/Options;->refreshMinimize:Z

    iput-boolean v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimize:Z

    .line 98
    iget-object v1, p2, Luk/co/senab/actionbarpulltorefresh/library/Options;->environmentDelegate:Luk/co/senab/actionbarpulltorefresh/library/EnvironmentDelegate;

    if-eqz v1, :cond_2

    iget-object v1, p2, Luk/co/senab/actionbarpulltorefresh/library/Options;->environmentDelegate:Luk/co/senab/actionbarpulltorefresh/library/EnvironmentDelegate;

    :goto_0
    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mEnvironmentDelegate:Luk/co/senab/actionbarpulltorefresh/library/EnvironmentDelegate;

    .line 103
    iget-object v1, p2, Luk/co/senab/actionbarpulltorefresh/library/Options;->headerTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    if-eqz v1, :cond_3

    iget-object v1, p2, Luk/co/senab/actionbarpulltorefresh/library/Options;->headerTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    :goto_1
    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    .line 108
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mTouchSlop:I

    .line 111
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 114
    .local v0, "decorView":Landroid/view/ViewGroup;
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mEnvironmentDelegate:Luk/co/senab/actionbarpulltorefresh/library/EnvironmentDelegate;

    invoke-interface {v1, p1}, Luk/co/senab/actionbarpulltorefresh/library/EnvironmentDelegate;->getContextForInflater(Landroid/app/Activity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p2, Luk/co/senab/actionbarpulltorefresh/library/Options;->headerLayout:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    .line 117
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    if-nez v1, :cond_4

    .line 118
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must supply valid layout id for header."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->createDefaultEnvironmentDelegate()Luk/co/senab/actionbarpulltorefresh/library/EnvironmentDelegate;

    move-result-object v1

    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->createDefaultHeaderTransformer()Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    move-result-object v1

    goto :goto_1

    .line 121
    .restart local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_4
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    iget-object v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, p1, v2}, Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;->onViewCreated(Landroid/app/Activity;Landroid/view/View;)V

    .line 127
    new-instance v1, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;-><init>(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$1;)V

    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mAddHeaderViewRunnable:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;

    .line 128
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mAddHeaderViewRunnable:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;

    invoke-virtual {v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;->start()V

    .line 129
    return-void
.end method

.method static synthetic access$100(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Z
    .locals 1
    .param p0, "x0"    # Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    .prologue
    .line 43
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    .prologue
    .line 43
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method private canRefresh(Z)Z
    .locals 1
    .param p1, "fromTouch"    # Z

    .prologue
    .line 532
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsRefreshing:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mOnRefreshListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkScrollForRefresh(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 499
    iget-boolean v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshOnUp:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 500
    iget v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mLastMotionY:F

    iget v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mPullBeginY:F

    sub-float/2addr v1, v2

    invoke-direct {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->getScrollNeededForRefresh(Landroid/view/View;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 501
    invoke-direct {p0, p1, v0, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->setRefreshingInt(Landroid/view/View;ZZ)V

    .line 505
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getScrollNeededForRefresh(Landroid/view/View;)F
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 536
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshScrollDistance:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private isDestroyed()Z
    .locals 2

    .prologue
    .line 580
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 581
    const-string v0, "PullToRefreshAttacher"

    const-string v1, "PullToRefreshAttacher is destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_0
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsDestroyed:Z

    return v0
.end method

.method private reset(Z)V
    .locals 2
    .param p1, "fromTouch"    # Z

    .prologue
    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsRefreshing:Z

    .line 544
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimize:Z

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->getHeaderView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimizeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 549
    :cond_0
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->hideHeaderView()V

    .line 550
    return-void
.end method

.method private setRefreshingInt(Landroid/view/View;ZZ)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "refreshing"    # Z
    .param p3, "fromTouch"    # Z

    .prologue
    .line 509
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsRefreshing:Z

    if-eq v0, p2, :cond_0

    .line 517
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->resetTouch()V

    .line 519
    if-eqz p2, :cond_2

    invoke-direct {p0, p3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->canRefresh(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 520
    invoke-direct {p0, p1, p3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->startRefresh(Landroid/view/View;Z)V

    goto :goto_0

    .line 522
    :cond_2
    invoke-direct {p0, p3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->reset(Z)V

    goto :goto_0
.end method

.method private startRefresh(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fromTouch"    # Z

    .prologue
    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsRefreshing:Z

    .line 557
    if-eqz p2, :cond_0

    .line 558
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mOnRefreshListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mOnRefreshListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;

    invoke-interface {v0, p1}, Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;->onRefreshStarted(Landroid/view/View;)V

    .line 564
    :cond_0
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;->onRefreshStarted()V

    .line 567
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->showHeaderView()V

    .line 570
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimize:Z

    if-eqz v0, :cond_1

    .line 571
    iget v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimizeDelay:I

    if-lez v0, :cond_2

    .line 572
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->getHeaderView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimizeRunnable:Ljava/lang/Runnable;

    iget v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimizeDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 577
    :cond_1
    :goto_0
    return-void

    .line 574
    :cond_2
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->getHeaderView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimizeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected addHeaderViewToActivity(Landroid/view/View;)V
    .locals 7
    .param p1, "headerView"    # Landroid/view/View;

    .prologue
    .line 588
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 591
    const/4 v1, -0x1

    .line 592
    .local v1, "width":I
    const/4 v2, -0x2

    .line 593
    .local v2, "height":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 594
    .local v6, "requestedLp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v6, :cond_0

    .line 595
    iget v1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 596
    iget v2, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 600
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x3e8

    const/16 v4, 0x118

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 605
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 606
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 607
    const/16 v3, 0x30

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 610
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 611
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3, p1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    return-void
.end method

.method addRefreshableView(Landroid/view/View;Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewDelegate"    # Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;

    .prologue
    .line 137
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 140
    :cond_0
    if-nez p1, :cond_1

    .line 141
    const-string v0, "PullToRefreshAttacher"

    const-string v1, "Refreshable View is null."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_1
    if-nez p2, :cond_2

    .line 147
    invoke-static {p1}, Luk/co/senab/actionbarpulltorefresh/library/InstanceCreationUtils;->getBuiltInViewDelegate(Landroid/view/View;)Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;

    move-result-object p2

    .line 151
    :cond_2
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method clearRefreshableViews()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 167
    return-void
.end method

.method protected createDefaultEnvironmentDelegate()Luk/co/senab/actionbarpulltorefresh/library/EnvironmentDelegate;
    .locals 1

    .prologue
    .line 476
    new-instance v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$1;

    invoke-direct {v0, p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$1;-><init>(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)V

    return-object v0
.end method

.method protected createDefaultHeaderTransformer()Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;
    .locals 1

    .prologue
    .line 495
    new-instance v0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;

    invoke-direct {v0}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;-><init>()V

    return-object v0
.end method

.method destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->removeHeaderViewFromActivity(Landroid/view/View;)V

    .line 221
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->clearRefreshableViews()V

    .line 223
    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    .line 224
    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    .line 225
    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;

    .line 226
    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mEnvironmentDelegate:Luk/co/senab/actionbarpulltorefresh/library/EnvironmentDelegate;

    .line 227
    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsDestroyed:Z

    goto :goto_0
.end method

.method protected final getAttachedActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getHeaderTransformer()Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    return-object v0
.end method

.method final getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method hideHeaderView()V
    .locals 3

    .prologue
    .line 463
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;->hideHeaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;->onStateChanged(Landroid/view/View;I)V

    .line 469
    :cond_0
    return-void
.end method

.method final isRefreshing()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsRefreshing:Z

    return v0
.end method

.method final isViewBeingDragged(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v6, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 315
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mViewLocationResult:[I

    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 316
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mViewLocationResult:[I

    aget v3, v6, v5

    .local v3, "viewLeft":I
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mViewLocationResult:[I

    const/4 v7, 0x1

    aget v4, v6, v7

    .line 317
    .local v4, "viewTop":I
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v6, v3, v4, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 321
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v1, v6

    .local v1, "rawX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v2, v6

    .line 322
    .local v2, "rawY":I
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 324
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v6, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;

    .line 325
    .local v0, "delegate":Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;
    if-eqz v0, :cond_0

    .line 327
    iget-object v5, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, v1, v5

    int-to-float v5, v5

    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, v2, v6

    int-to-float v6, v6

    invoke-interface {v0, p1, v5, v6}, Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;->isReadyForPull(Landroid/view/View;FF)Z

    move-result v5

    .line 331
    .end local v0    # "delegate":Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;
    .end local v1    # "rawX":I
    .end local v2    # "rawY":I
    .end local v3    # "viewLeft":I
    .end local v4    # "viewTop":I
    :cond_0
    return v5
.end method

.method minimizeHeader()V
    .locals 3

    .prologue
    .line 401
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;->onRefreshMinimized()V

    .line 405
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;->onStateChanged(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 176
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    .line 177
    return-void
.end method

.method final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    .line 262
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->isRefreshing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 263
    const/4 v6, 0x0

    .line 309
    :goto_0
    return v6

    .line 266
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 268
    .local v4, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 309
    :cond_1
    :goto_1
    iget-boolean v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsBeingDragged:Z

    goto :goto_0

    .line 272
    :pswitch_0
    iget-boolean v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsBeingDragged:Z

    if-nez v6, :cond_1

    iget v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mInitialMotionY:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 273
    iget v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mInitialMotionY:F

    sub-float v5, v4, v6

    .line 274
    .local v5, "yDiff":F
    iget v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mInitialMotionX:F

    sub-float v3, v2, v6

    .line 276
    .local v3, "xDiff":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    iget v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    .line 277
    iput-boolean v8, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsBeingDragged:Z

    .line 278
    invoke-virtual {p0, v4}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->onPullStarted(F)V

    goto :goto_1

    .line 279
    :cond_2
    iget v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mTouchSlop:I

    neg-int v6, v6

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_1

    .line 280
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->resetTouch()V

    goto :goto_1

    .line 288
    .end local v3    # "xDiff":F
    .end local v5    # "yDiff":F
    :pswitch_1
    invoke-direct {p0, v8}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->canRefresh(Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 289
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 290
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->isViewBeingDragged(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 291
    iput v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mInitialMotionX:F

    .line 292
    iput v4, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mInitialMotionY:F

    .line 293
    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mViewBeingDragged:Landroid/view/View;

    goto :goto_2

    .line 302
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "view":Landroid/view/View;
    :pswitch_2
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->resetTouch()V

    goto :goto_1

    .line 268
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method onPull(Landroid/view/View;F)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x1

    .line 429
    invoke-direct {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->getScrollNeededForRefresh(Landroid/view/View;)F

    move-result v0

    .line 430
    .local v0, "pxScrollForRefresh":F
    iget v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mPullBeginY:F

    sub-float v1, p2, v2

    .line 432
    .local v1, "scrollLength":F
    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    .line 433
    iget-object v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    div-float v3, v1, v0

    invoke-virtual {v2, v3}, Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;->onPulled(F)V

    .line 441
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-boolean v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshOnUp:Z

    if-eqz v2, :cond_1

    .line 436
    iget-object v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    invoke-virtual {v2}, Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;->onReleaseToRefresh()V

    goto :goto_0

    .line 438
    :cond_1
    invoke-direct {p0, p1, v3, v3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->setRefreshingInt(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method onPullEnded()V
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsRefreshing:Z

    if-nez v0, :cond_0

    .line 448
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->reset(Z)V

    .line 450
    :cond_0
    return-void
.end method

.method onPullStarted(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 420
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->showHeaderView()V

    .line 421
    iput p1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mPullBeginY:F

    .line 422
    return-void
.end method

.method final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 341
    iput-boolean v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHandlingTouchEventFromDown:Z

    .line 346
    :cond_0
    iget-boolean v4, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHandlingTouchEventFromDown:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsBeingDragged:Z

    if-nez v4, :cond_2

    .line 347
    invoke-virtual {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 397
    :cond_1
    :goto_0
    return v2

    .line 351
    :cond_2
    iget-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mViewBeingDragged:Landroid/view/View;

    if-nez v4, :cond_3

    move v2, v3

    .line 352
    goto :goto_0

    .line 355
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 388
    :pswitch_0
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mViewBeingDragged:Landroid/view/View;

    invoke-direct {p0, v3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->checkScrollForRefresh(Landroid/view/View;)Z

    .line 389
    iget-boolean v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsBeingDragged:Z

    if-eqz v3, :cond_4

    .line 390
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->onPullEnded()V

    .line 392
    :cond_4
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->resetTouch()V

    goto :goto_0

    .line 358
    :pswitch_1
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->isRefreshing()Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    .line 359
    goto :goto_0

    .line 362
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 364
    .local v0, "y":F
    iget-boolean v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsBeingDragged:Z

    if-eqz v3, :cond_1

    iget v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mLastMotionY:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_1

    .line 365
    iget v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mLastMotionY:F

    sub-float v1, v0, v3

    .line 372
    .local v1, "yDx":F
    iget v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mTouchSlop:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_6

    .line 373
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mViewBeingDragged:Landroid/view/View;

    invoke-virtual {p0, v3, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->onPull(Landroid/view/View;F)V

    .line 375
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    .line 376
    iput v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mLastMotionY:F

    goto :goto_0

    .line 379
    :cond_6
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->onPullEnded()V

    .line 380
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->resetTouch()V

    goto :goto_0

    .line 355
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected removeHeaderViewFromActivity(Landroid/view/View;)V
    .locals 1
    .param p1, "headerView"    # Landroid/view/View;

    .prologue
    .line 632
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mAddHeaderViewRunnable:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;->finish()V

    .line 634
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 637
    :cond_0
    return-void
.end method

.method resetTouch()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 411
    iput-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsBeingDragged:Z

    .line 412
    iput-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHandlingTouchEventFromDown:Z

    .line 413
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mPullBeginY:F

    iput v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mLastMotionY:F

    iput v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mInitialMotionY:F

    .line 414
    return-void
.end method

.method final setHeaderViewListener(Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;)V
    .locals 0
    .param p1, "listener"    # Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;

    .prologue
    .line 237
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;

    .line 238
    return-void
.end method

.method setOnRefreshListener(Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;)V
    .locals 0
    .param p1, "listener"    # Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;

    .prologue
    .line 211
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mOnRefreshListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;

    .line 212
    return-void
.end method

.method final setRefreshComplete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->setRefreshingInt(Landroid/view/View;ZZ)V

    .line 205
    return-void
.end method

.method final setRefreshing(Z)V
    .locals 2
    .param p1, "refreshing"    # Z

    .prologue
    .line 187
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->setRefreshingInt(Landroid/view/View;ZZ)V

    .line 188
    return-void
.end method

.method showHeaderView()V
    .locals 3

    .prologue
    .line 453
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->updateHeaderViewPosition(Landroid/view/View;)V

    .line 454
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;->showHeaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;->onStateChanged(Landroid/view/View;I)V

    .line 460
    :cond_0
    return-void
.end method

.method protected updateHeaderViewPosition(Landroid/view/View;)V
    .locals 3
    .param p1, "headerView"    # Landroid/view/View;

    .prologue
    .line 616
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_2

    .line 620
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "wlp":Landroid/view/WindowManager$LayoutParams;
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 625
    .restart local v0    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eq v1, v2, :cond_1

    .line 626
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 627
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    :cond_1
    return-void

    .line 621
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    .line 622
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wlp":Landroid/view/WindowManager$LayoutParams;
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .restart local v0    # "wlp":Landroid/view/WindowManager$LayoutParams;
    goto :goto_0
.end method

.method useViewDelegate(Ljava/lang/Class;Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;)V
    .locals 3
    .param p2, "delegate"    # Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 156
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 160
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method
