.class public Lcom/markupartist/android/widget/PullToRefreshListView;
.super Landroid/widget/ListView;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/markupartist/android/widget/PullToRefreshListView$1;,
        Lcom/markupartist/android/widget/PullToRefreshListView$OnRefreshListener;,
        Lcom/markupartist/android/widget/PullToRefreshListView$OnClickRefreshListener;
    }
.end annotation


# static fields
.field private static final PULL_TO_REFRESH:I = 0x2

.field private static final REFRESHING:I = 0x4

.field private static final RELEASE_TO_REFRESH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PullToRefreshListView"

.field private static final TAP_TO_REFRESH:I = 0x1


# instance fields
.field private mBounceHack:Z

.field private mCurrentScrollState:I

.field private mFlipAnimation:Landroid/view/animation/RotateAnimation;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastMotionY:I

.field private mOnRefreshListener:Lcom/markupartist/android/widget/PullToRefreshListView$OnRefreshListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mRefreshOriginalTopPadding:I

.field private mRefreshState:I

.field private mRefreshView:Landroid/widget/RelativeLayout;

.field private mRefreshViewHeight:I

.field private mRefreshViewImage:Landroid/widget/ImageView;

.field private mRefreshViewLastUpdated:Landroid/widget/TextView;

.field private mRefreshViewProgress:Landroid/widget/ProgressBar;

.field private mRefreshViewText:Landroid/widget/TextView;

.field private mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/markupartist/android/widget/PullToRefreshListView;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/markupartist/android/widget/PullToRefreshListView;->init(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-direct {p0, p1}, Lcom/markupartist/android/widget/PullToRefreshListView;->init(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method static synthetic access$100(Lcom/markupartist/android/widget/PullToRefreshListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/markupartist/android/widget/PullToRefreshListView;

    .prologue
    .line 23
    iget v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    return v0
.end method

.method private applyHeaderPadding(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 77
    .local v2, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "p":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 78
    iget v4, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->isVerticalFadingEdgeEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/markupartist/android/widget/PullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 83
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v4

    float-to-int v0, v4

    .line 87
    .local v0, "historicalY":I
    iget v4, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mLastMotionY:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewHeight:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    const-wide v6, 0x3ffb333333333333L    # 1.7

    div-double/2addr v4, v6

    double-to-int v3, v4

    .line 90
    .local v3, "topPadding":I
    iget-object v4, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 77
    .end local v0    # "historicalY":I
    .end local v3    # "topPadding":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_2
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v12, 0xfa

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 101
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    .line 104
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 105
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 106
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 107
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    .line 110
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 111
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 112
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 114
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mInflater:Landroid/view/LayoutInflater;

    .line 117
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/eventgenie/android/R$layout;->pull_to_refresh_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    .line 118
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    sget v1, Lcom/eventgenie/android/R$id;->pull_to_refresh_text:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    sget v1, Lcom/eventgenie/android/R$id;->pull_to_refresh_image:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    .line 122
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    sget v1, Lcom/eventgenie/android/R$id;->pull_to_refresh_progress:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewProgress:Landroid/widget/ProgressBar;

    .line 124
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    sget v1, Lcom/eventgenie/android/R$id;->pull_to_refresh_updated_at:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 128
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/markupartist/android/widget/PullToRefreshListView$OnClickRefreshListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/markupartist/android/widget/PullToRefreshListView$OnClickRefreshListener;-><init>(Lcom/markupartist/android/widget/PullToRefreshListView;Lcom/markupartist/android/widget/PullToRefreshListView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshOriginalTopPadding:I

    .line 131
    iput v3, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    .line 133
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/markupartist/android/widget/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 135
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 137
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/markupartist/android/widget/PullToRefreshListView;->measureView(Landroid/view/View;)V

    .line 138
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewHeight:I

    .line 139
    return-void
.end method

.method private static measureView(Landroid/view/View;)V
    .locals 7
    .param p0, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 359
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 360
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 361
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 366
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 368
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 370
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 371
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 375
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    .line 376
    return-void

    .line 373
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private resetHeader()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 290
    iget v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v1, :cond_0

    .line 291
    iput v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    .line 293
    invoke-direct {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->resetHeaderPadding()V

    .line 296
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    sget v1, Lcom/eventgenie/android/R$string;->pull_to_refresh_tap_label:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 298
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_pulltorefresh_arrow:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 302
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 305
    :cond_0
    return-void
.end method

.method private resetHeaderPadding()V
    .locals 5

    .prologue
    .line 311
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshOriginalTopPadding:I

    iget-object v3, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 316
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/markupartist/android/widget/PullToRefreshListView;->setSelection(I)V

    .line 145
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    .line 148
    const-string v0, "PullToRefreshListView"

    const-string v1, "onRefresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mOnRefreshListener:Lcom/markupartist/android/widget/PullToRefreshListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mOnRefreshListener:Lcom/markupartist/android/widget/PullToRefreshListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/markupartist/android/widget/PullToRefreshListView$OnRefreshListener;->onRefresh()V

    .line 153
    :cond_0
    return-void
.end method

.method public onRefreshComplete()V
    .locals 2

    .prologue
    .line 159
    const-string v0, "PullToRefreshListView"

    const-string v1, "onRefreshComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-direct {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->resetHeader()V

    .line 165
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v0

    if-lez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->invalidateViews()V

    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/markupartist/android/widget/PullToRefreshListView;->setSelection(I)V

    .line 169
    :cond_0
    return-void
.end method

.method public onRefreshComplete(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "lastUpdated"    # Ljava/lang/CharSequence;

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/markupartist/android/widget/PullToRefreshListView;->setLastUpdated(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->onRefreshComplete()V

    .line 178
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 184
    iget v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mCurrentScrollState:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v1, :cond_6

    .line 186
    if-nez p2, :cond_5

    .line 187
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewHeight:I

    add-int/lit8 v1, v1, 0x14

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v0

    if-ltz v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v4, :cond_3

    .line 191
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    sget v1, Lcom/eventgenie/android/R$string;->pull_to_refresh_release_label:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 193
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 194
    iput v4, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    .line 217
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 221
    :cond_2
    return-void

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewHeight:I

    add-int/lit8 v1, v1, 0x14

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v3, :cond_1

    .line 197
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    sget v1, Lcom/eventgenie/android/R$string;->pull_to_refresh_pull_label:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 198
    iget v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v2, :cond_4

    .line 199
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 200
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 202
    :cond_4
    iput v3, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    goto :goto_0

    .line 205
    :cond_5
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    invoke-direct {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->resetHeader()V

    goto :goto_0

    .line 208
    :cond_6
    iget v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mCurrentScrollState:I

    if-ne v0, v3, :cond_7

    if-nez p2, :cond_7

    iget v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v1, :cond_7

    .line 211
    invoke-virtual {p0, v2}, Lcom/markupartist/android/widget/PullToRefreshListView;->setSelection(I)V

    .line 212
    iput-boolean v2, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mBounceHack:Z

    goto :goto_0

    .line 213
    :cond_7
    iget-boolean v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mBounceHack:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mCurrentScrollState:I

    if-ne v0, v3, :cond_1

    .line 214
    invoke-virtual {p0, v2}, Lcom/markupartist/android/widget/PullToRefreshListView;->setSelection(I)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 225
    iput p2, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mCurrentScrollState:I

    .line 227
    iget v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mCurrentScrollState:I

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mBounceHack:Z

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 234
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 239
    .local v0, "y":I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mBounceHack:Z

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 269
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 243
    :pswitch_0
    invoke-virtual {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->isVerticalScrollBarEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 244
    invoke-virtual {p0, v3}, Lcom/markupartist/android/widget/PullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    if-eq v1, v4, :cond_0

    .line 247
    iget-object v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewHeight:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    if-ltz v1, :cond_3

    :cond_2
    iget v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 251
    iput v4, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    .line 252
    invoke-virtual {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->prepareForRefresh()V

    .line 253
    invoke-virtual {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->onRefresh()V

    goto :goto_0

    .line 254
    :cond_3
    iget-object v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewHeight:I

    if-lt v1, v2, :cond_4

    iget-object v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    if-gtz v1, :cond_0

    .line 257
    :cond_4
    invoke-direct {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->resetHeader()V

    .line 258
    invoke-virtual {p0, v3}, Lcom/markupartist/android/widget/PullToRefreshListView;->setSelection(I)V

    goto :goto_0

    .line 263
    :pswitch_1
    iput v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mLastMotionY:I

    goto :goto_0

    .line 266
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/markupartist/android/widget/PullToRefreshListView;->applyHeaderPadding(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public prepareForRefresh()V
    .locals 2

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->resetHeaderPadding()V

    .line 275
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    sget v1, Lcom/eventgenie/android/R$string;->pull_to_refresh_refreshing_label:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 283
    const/4 v0, 0x4

    iput v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    .line 284
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 23
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/markupartist/android/widget/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 320
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 322
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/markupartist/android/widget/PullToRefreshListView;->setSelection(I)V

    .line 323
    return-void
.end method

.method public setLastUpdated(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "lastUpdated"    # Ljava/lang/CharSequence;

    .prologue
    .line 330
    if-eqz p1, :cond_0

    .line 331
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnRefreshListener(Lcom/markupartist/android/widget/PullToRefreshListView$OnRefreshListener;)V
    .locals 0
    .param p1, "onRefreshListener"    # Lcom/markupartist/android/widget/PullToRefreshListView$OnRefreshListener;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mOnRefreshListener:Lcom/markupartist/android/widget/PullToRefreshListView$OnRefreshListener;

    .line 345
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 356
    return-void
.end method
