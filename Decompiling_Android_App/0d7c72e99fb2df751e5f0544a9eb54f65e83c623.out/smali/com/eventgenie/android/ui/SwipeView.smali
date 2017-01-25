.class public Lcom/eventgenie/android/ui/SwipeView;
.super Lcom/eventgenie/android/ui/ObservableHorizontalScrollView;
.source "SwipeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;,
        Lcom/eventgenie/android/ui/SwipeView$OnPageChangedListener;
    }
.end annotation


# static fields
.field private static DEFAULT_SWIPE_THRESHOLD:I


# instance fields
.field private SCREEN_WIDTH:I

.field private mContext:Landroid/content/Context;

.field private mCurrentPage:I

.field private mDistanceX:I

.field private mFirstMotionEvent:Z

.field private mFirstOnLayoutCall:Z

.field private mJustInterceptedAndIgnored:Z

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mMostlyScrollingInX:Z

.field private mMostlyScrollingInY:Z

.field private mMotionStartX:I

.field private mMotionStartY:I

.field private mOnPageChangedListener:Lcom/eventgenie/android/ui/SwipeView$OnPageChangedListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPageControl:Lcom/eventgenie/android/ui/PageControl;

.field private mPageWidth:I

.field private mPreviousDirection:I

.field private mSendingDummyMotionEvent:Z

.field private mSwipeOnTouchListener:Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x3c

    sput v0, Lcom/eventgenie/android/ui/SwipeView;->DEFAULT_SWIPE_THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/ObservableHorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 48
    iput-boolean v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mFirstOnLayoutCall:Z

    .line 49
    iput-boolean v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mMostlyScrollingInX:Z

    .line 50
    iput-boolean v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mMostlyScrollingInY:Z

    .line 51
    iput-boolean v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mJustInterceptedAndIgnored:Z

    .line 52
    iput-boolean v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mSendingDummyMotionEvent:Z

    .line 55
    iput v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mCurrentPage:I

    .line 56
    iput v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mPageWidth:I

    .line 57
    iput-boolean v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mFirstMotionEvent:Z

    .line 58
    iput-object v2, p0, Lcom/eventgenie/android/ui/SwipeView;->mOnPageChangedListener:Lcom/eventgenie/android/ui/SwipeView$OnPageChangedListener;

    .line 61
    iput-object v2, p0, Lcom/eventgenie/android/ui/SwipeView;->mPageControl:Lcom/eventgenie/android/ui/PageControl;

    .line 69
    iput-object p1, p0, Lcom/eventgenie/android/ui/SwipeView;->mContext:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Lcom/eventgenie/android/ui/SwipeView;->initSwipeView()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/eventgenie/android/ui/ObservableHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-boolean v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mFirstOnLayoutCall:Z

    .line 49
    iput-boolean v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mMostlyScrollingInX:Z

    .line 50
    iput-boolean v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mMostlyScrollingInY:Z

    .line 51
    iput-boolean v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mJustInterceptedAndIgnored:Z

    .line 52
    iput-boolean v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mSendingDummyMotionEvent:Z

    .line 55
    iput v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mCurrentPage:I

    .line 56
    iput v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mPageWidth:I

    .line 57
    iput-boolean v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mFirstMotionEvent:Z

    .line 58
    iput-object v2, p0, Lcom/eventgenie/android/ui/SwipeView;->mOnPageChangedListener:Lcom/eventgenie/android/ui/SwipeView$OnPageChangedListener;

    .line 61
    iput-object v2, p0, Lcom/eventgenie/android/ui/SwipeView;->mPageControl:Lcom/eventgenie/android/ui/PageControl;

    .line 79
    iput-object p1, p0, Lcom/eventgenie/android/ui/SwipeView;->mContext:Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Lcom/eventgenie/android/ui/SwipeView;->initSwipeView()V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/eventgenie/android/ui/ObservableHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-boolean v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mFirstOnLayoutCall:Z

    .line 49
    iput-boolean v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mMostlyScrollingInX:Z

    .line 50
    iput-boolean v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mMostlyScrollingInY:Z

    .line 51
    iput-boolean v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mJustInterceptedAndIgnored:Z

    .line 52
    iput-boolean v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mSendingDummyMotionEvent:Z

    .line 55
    iput v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mCurrentPage:I

    .line 56
    iput v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mPageWidth:I

    .line 57
    iput-boolean v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mFirstMotionEvent:Z

    .line 58
    iput-object v2, p0, Lcom/eventgenie/android/ui/SwipeView;->mOnPageChangedListener:Lcom/eventgenie/android/ui/SwipeView$OnPageChangedListener;

    .line 61
    iput-object v2, p0, Lcom/eventgenie/android/ui/SwipeView;->mPageControl:Lcom/eventgenie/android/ui/PageControl;

    .line 89
    iput-object p1, p0, Lcom/eventgenie/android/ui/SwipeView;->mContext:Landroid/content/Context;

    .line 90
    invoke-direct {p0}, Lcom/eventgenie/android/ui/SwipeView;->initSwipeView()V

    .line 91
    return-void
.end method

.method static synthetic access$100(Lcom/eventgenie/android/ui/SwipeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/SwipeView;

    .prologue
    .line 39
    iget v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$1000(Lcom/eventgenie/android/ui/SwipeView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/SwipeView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/eventgenie/android/ui/SwipeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/SwipeView;

    .prologue
    .line 39
    iget v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mPageWidth:I

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/eventgenie/android/ui/SwipeView;->DEFAULT_SWIPE_THRESHOLD:I

    return v0
.end method

.method static synthetic access$1302(Lcom/eventgenie/android/ui/SwipeView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/ui/SwipeView;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/eventgenie/android/ui/SwipeView;->mMostlyScrollingInX:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/eventgenie/android/ui/SwipeView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/ui/SwipeView;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/eventgenie/android/ui/SwipeView;->mMostlyScrollingInY:Z

    return p1
.end method

.method static synthetic access$200(Lcom/eventgenie/android/ui/SwipeView;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/SwipeView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/ui/SwipeView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/SwipeView;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mJustInterceptedAndIgnored:Z

    return v0
.end method

.method static synthetic access$302(Lcom/eventgenie/android/ui/SwipeView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/ui/SwipeView;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/eventgenie/android/ui/SwipeView;->mJustInterceptedAndIgnored:Z

    return p1
.end method

.method static synthetic access$400(Lcom/eventgenie/android/ui/SwipeView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/SwipeView;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mSendingDummyMotionEvent:Z

    return v0
.end method

.method static synthetic access$402(Lcom/eventgenie/android/ui/SwipeView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/ui/SwipeView;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/eventgenie/android/ui/SwipeView;->mSendingDummyMotionEvent:Z

    return p1
.end method

.method static synthetic access$500(Lcom/eventgenie/android/ui/SwipeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/SwipeView;

    .prologue
    .line 39
    iget v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mMotionStartX:I

    return v0
.end method

.method static synthetic access$502(Lcom/eventgenie/android/ui/SwipeView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/ui/SwipeView;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/eventgenie/android/ui/SwipeView;->mMotionStartX:I

    return p1
.end method

.method static synthetic access$600(Lcom/eventgenie/android/ui/SwipeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/SwipeView;

    .prologue
    .line 39
    iget v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mMotionStartY:I

    return v0
.end method

.method static synthetic access$602(Lcom/eventgenie/android/ui/SwipeView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/ui/SwipeView;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/eventgenie/android/ui/SwipeView;->mMotionStartY:I

    return p1
.end method

.method static synthetic access$700(Lcom/eventgenie/android/ui/SwipeView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/SwipeView;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mFirstMotionEvent:Z

    return v0
.end method

.method static synthetic access$702(Lcom/eventgenie/android/ui/SwipeView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/ui/SwipeView;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/eventgenie/android/ui/SwipeView;->mFirstMotionEvent:Z

    return p1
.end method

.method static synthetic access$800(Lcom/eventgenie/android/ui/SwipeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/SwipeView;

    .prologue
    .line 39
    iget v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mDistanceX:I

    return v0
.end method

.method static synthetic access$802(Lcom/eventgenie/android/ui/SwipeView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/ui/SwipeView;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/eventgenie/android/ui/SwipeView;->mDistanceX:I

    return p1
.end method

.method static synthetic access$900(Lcom/eventgenie/android/ui/SwipeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/SwipeView;

    .prologue
    .line 39
    iget v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mPreviousDirection:I

    return v0
.end method

.method static synthetic access$902(Lcom/eventgenie/android/ui/SwipeView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/ui/SwipeView;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/eventgenie/android/ui/SwipeView;->mPreviousDirection:I

    return p1
.end method

.method private detectMostlyScrollingDirection(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x40a00000    # 5.0f

    .line 464
    iget-boolean v2, p0, Lcom/eventgenie/android/ui/SwipeView;->mMostlyScrollingInX:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/eventgenie/android/ui/SwipeView;->mMostlyScrollingInY:Z

    if-nez v2, :cond_0

    .line 466
    iget v2, p0, Lcom/eventgenie/android/ui/SwipeView;->mMotionStartX:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 467
    .local v0, "xDistance":F
    iget v2, p0, Lcom/eventgenie/android/ui/SwipeView;->mMotionStartY:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 469
    .local v1, "yDistance":F
    add-float v2, v0, v4

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 471
    iput-boolean v5, p0, Lcom/eventgenie/android/ui/SwipeView;->mMostlyScrollingInY:Z

    .line 478
    .end local v0    # "xDistance":F
    .end local v1    # "yDistance":F
    :cond_0
    :goto_0
    return-void

    .line 473
    .restart local v0    # "xDistance":F
    .restart local v1    # "yDistance":F
    :cond_1
    add-float v2, v1, v4

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 475
    iput-boolean v5, p0, Lcom/eventgenie/android/ui/SwipeView;->mMostlyScrollingInX:Z

    goto :goto_0
.end method

.method private initSwipeView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 96
    const-string v1, "^ Initialising SwipeView"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 97
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/eventgenie/android/ui/SwipeView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 98
    iget-object v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 99
    iget-object v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v1, v4, v2}, Lcom/eventgenie/android/ui/ObservableHorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 101
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/SwipeView;->setSmoothScrollingEnabled(Z)V

    .line 102
    invoke-virtual {p0, v3}, Lcom/eventgenie/android/ui/SwipeView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 103
    invoke-virtual {p0, v3}, Lcom/eventgenie/android/ui/SwipeView;->setHorizontalScrollBarEnabled(Z)V

    .line 105
    iget-object v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 106
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/ui/SwipeView;->SCREEN_WIDTH:I

    .line 107
    iget v1, p0, Lcom/eventgenie/android/ui/SwipeView;->SCREEN_WIDTH:I

    iput v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mPageWidth:I

    .line 108
    iput v3, p0, Lcom/eventgenie/android/ui/SwipeView;->mCurrentPage:I

    .line 110
    new-instance v1, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;-><init>(Lcom/eventgenie/android/ui/SwipeView;Lcom/eventgenie/android/ui/SwipeView$1;)V

    iput-object v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mSwipeOnTouchListener:Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;

    .line 111
    iget-object v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mSwipeOnTouchListener:Lcom/eventgenie/android/ui/SwipeView$SwipeOnTouchListener;

    invoke-super {p0, v1}, Lcom/eventgenie/android/ui/ObservableHorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    return-void
.end method

.method private scrollToPage(IZ)V
    .locals 3
    .param p1, "page"    # I
    .param p2, "smooth"    # Z

    .prologue
    const/4 v2, 0x0

    .line 293
    iget v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mCurrentPage:I

    .line 294
    .local v0, "oldPage":I
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/SwipeView;->getPageCount()I

    move-result v1

    if-lt p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/SwipeView;->getPageCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 296
    add-int/lit8 p1, p1, -0x1

    .line 303
    :cond_0
    :goto_0
    if-eqz p2, :cond_4

    .line 305
    iget v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mPageWidth:I

    mul-int/2addr v1, p1

    invoke-virtual {p0, v1, v2}, Lcom/eventgenie/android/ui/SwipeView;->smoothScrollTo(II)V

    .line 311
    :goto_1
    iput p1, p0, Lcom/eventgenie/android/ui/SwipeView;->mCurrentPage:I

    .line 313
    iget-object v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mOnPageChangedListener:Lcom/eventgenie/android/ui/SwipeView$OnPageChangedListener;

    if-eqz v1, :cond_1

    if-eq v0, p1, :cond_1

    .line 315
    iget-object v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mOnPageChangedListener:Lcom/eventgenie/android/ui/SwipeView$OnPageChangedListener;

    invoke-interface {v1, v0, p1}, Lcom/eventgenie/android/ui/SwipeView$OnPageChangedListener;->onPageChanged(II)V

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mPageControl:Lcom/eventgenie/android/ui/PageControl;

    if-eqz v1, :cond_2

    if-eq v0, p1, :cond_2

    .line 319
    iget-object v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mPageControl:Lcom/eventgenie/android/ui/PageControl;

    invoke-virtual {v1, p1}, Lcom/eventgenie/android/ui/PageControl;->setCurrentPage(I)V

    .line 321
    :cond_2
    return-void

    .line 298
    :cond_3
    if-gez p1, :cond_0

    .line 300
    const/4 p1, 0x0

    goto :goto_0

    .line 309
    :cond_4
    iget v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mPageWidth:I

    mul-int/2addr v1, p1

    invoke-virtual {p0, v1, v2}, Lcom/eventgenie/android/ui/SwipeView;->scrollTo(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 143
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/eventgenie/android/ui/SwipeView;->addView(Landroid/view/View;I)V

    .line 144
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 155
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mPageWidth:I

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 162
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/eventgenie/android/ui/SwipeView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 163
    return-void

    .line 159
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 160
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mPageWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/SwipeView;->requestLayout()V

    .line 182
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/SwipeView;->invalidate()V

    .line 183
    iget-object v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 184
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 171
    iget v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mPageWidth:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 172
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/eventgenie/android/ui/SwipeView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 173
    return-void
.end method

.method public calculatePageSize(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 2
    .param p1, "childLayoutParams"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 348
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/ui/SwipeView;->setPageWidth(I)I

    move-result v0

    return v0
.end method

.method public getChildContainer()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mCurrentPage:I

    return v0
.end method

.method public getOnPageChangedListener()Lcom/eventgenie/android/ui/SwipeView$OnPageChangedListener;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mOnPageChangedListener:Lcom/eventgenie/android/ui/SwipeView$OnPageChangedListener;

    return-object v0
.end method

.method public getPageControl()Lcom/eventgenie/android/ui/PageControl;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mPageControl:Lcom/eventgenie/android/ui/PageControl;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageWidth()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mPageWidth:I

    return v0
.end method

.method public getSwipeThreshold()I
    .locals 1

    .prologue
    .line 238
    sget v0, Lcom/eventgenie/android/ui/SwipeView;->DEFAULT_SWIPE_THRESHOLD:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Lcom/eventgenie/android/ui/ObservableHorizontalScrollView;->onAttachedToWindow()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mFirstOnLayoutCall:Z

    .line 194
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 432
    invoke-super {p0, p1}, Lcom/eventgenie/android/ui/ObservableHorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 434
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 436
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/eventgenie/android/ui/SwipeView;->mMotionStartX:I

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/eventgenie/android/ui/SwipeView;->mMotionStartY:I

    .line 438
    iget-boolean v3, p0, Lcom/eventgenie/android/ui/SwipeView;->mJustInterceptedAndIgnored:Z

    if-nez v3, :cond_0

    .line 440
    iput-boolean v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mMostlyScrollingInX:Z

    .line 441
    iput-boolean v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mMostlyScrollingInY:Z

    .line 449
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/eventgenie/android/ui/SwipeView;->mMostlyScrollingInY:Z

    if-eqz v3, :cond_3

    move v0, v1

    .line 459
    .end local v0    # "result":Z
    :cond_1
    :goto_1
    return v0

    .line 444
    .restart local v0    # "result":Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 446
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/SwipeView;->detectMostlyScrollingDirection(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 453
    :cond_3
    iget-boolean v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mMostlyScrollingInX:Z

    if-eqz v1, :cond_1

    .line 455
    iput-boolean v2, p0, Lcom/eventgenie/android/ui/SwipeView;->mJustInterceptedAndIgnored:Z

    move v0, v2

    .line 456
    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 202
    invoke-super/range {p0 .. p5}, Lcom/eventgenie/android/ui/ObservableHorizontalScrollView;->onLayout(ZIIII)V

    .line 203
    iget-boolean v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mFirstOnLayoutCall:Z

    if-eqz v0, :cond_0

    .line 205
    iget v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/ui/SwipeView;->scrollToPage(I)V

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mFirstOnLayoutCall:Z

    .line 208
    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/SwipeView;->requestFocus()Z

    .line 135
    return-void
.end method

.method public scrollToPage(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/eventgenie/android/ui/SwipeView;->scrollToPage(IZ)V

    .line 279
    return-void
.end method

.method public setOnPageChangedListener(Lcom/eventgenie/android/ui/SwipeView$OnPageChangedListener;)V
    .locals 0
    .param p1, "onPageChangedListener"    # Lcom/eventgenie/android/ui/SwipeView$OnPageChangedListener;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/eventgenie/android/ui/SwipeView;->mOnPageChangedListener:Lcom/eventgenie/android/ui/SwipeView$OnPageChangedListener;

    .line 417
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "onTouchListener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/eventgenie/android/ui/SwipeView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 217
    return-void
.end method

.method public setPageControl(Lcom/eventgenie/android/ui/PageControl;)V
    .locals 1
    .param p1, "pageControl"    # Lcom/eventgenie/android/ui/PageControl;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/eventgenie/android/ui/SwipeView;->mPageControl:Lcom/eventgenie/android/ui/PageControl;

    .line 370
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/SwipeView;->getPageCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/eventgenie/android/ui/PageControl;->setPageCount(I)V

    .line 371
    iget v0, p0, Lcom/eventgenie/android/ui/SwipeView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Lcom/eventgenie/android/ui/PageControl;->setCurrentPage(I)V

    .line 372
    new-instance v0, Lcom/eventgenie/android/ui/SwipeView$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/ui/SwipeView$1;-><init>(Lcom/eventgenie/android/ui/SwipeView;)V

    invoke-virtual {p1, v0}, Lcom/eventgenie/android/ui/PageControl;->setOnPageControlClickListener(Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;)V

    .line 380
    return-void
.end method

.method public setPageWidth(I)I
    .locals 2
    .param p1, "pageWidth"    # I

    .prologue
    .line 333
    iput p1, p0, Lcom/eventgenie/android/ui/SwipeView;->mPageWidth:I

    .line 334
    iget v0, p0, Lcom/eventgenie/android/ui/SwipeView;->SCREEN_WIDTH:I

    iget v1, p0, Lcom/eventgenie/android/ui/SwipeView;->mPageWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public setSwipeThreshold(I)V
    .locals 0
    .param p1, "swipeThreshold"    # I

    .prologue
    .line 248
    sput p1, Lcom/eventgenie/android/ui/SwipeView;->DEFAULT_SWIPE_THRESHOLD:I

    .line 249
    return-void
.end method

.method public smoothScrollToPage(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 288
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/eventgenie/android/ui/SwipeView;->scrollToPage(IZ)V

    .line 289
    return-void
.end method
