.class public Landroid/support/v4/app/FragmentBreadCrumbs;
.super Landroid/view/ViewGroup;
.source "FragmentBreadCrumbs.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    }
.end annotation


# static fields
.field private static final MAX_CRUMB_WIDTH:I = 0x96

.field private static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10

.field private static final MEASURED_STATE_MASK:I = -0x1000000

.field private static final MEASURED_STATE_TOO_SMALL:I = 0x1000000


# instance fields
.field private mActivity:Landroid/support/v4/app/FragmentActivity;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mCrumbBackgroundResource:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsScrollable:Z

.field private mMaxCrumbWidth:I

.field private mMaxVisible:I

.field private mOnBreadCrumbClickListener:Landroid/support/v4/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPaddingBottom:I

.field private mPaddingEnd:I

.field private mPaddingStart:I

.field private mPaddingTop:I

.field private mParentClickListener:Landroid/view/View$OnClickListener;

.field private mParentEntry:Landroid/support/v4/app/BackStackEntryWithIcon;

.field private mScrollview:Landroid/widget/HorizontalScrollView;

.field private mTopEntry:Landroid/support/v4/app/BackStackEntryWithIcon;

.field private mTopEntryClearsStack:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 119
    sget v0, Lcom/jakewharton/hanselandgretel/R$style;->Widget_HanselAndGretel_FragmentBreadCrumb:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    iput v2, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mMaxVisible:I

    .line 60
    const/16 v0, 0x96

    iput v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mMaxCrumbWidth:I

    .line 61
    iput v2, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mCrumbBackgroundResource:I

    .line 63
    iput v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mPaddingStart:I

    .line 64
    iput v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mPaddingTop:I

    .line 65
    iput v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mPaddingEnd:I

    .line 66
    iput v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mPaddingBottom:I

    .line 72
    new-instance v0, Landroid/support/v4/app/FragmentBreadCrumbs$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentBreadCrumbs$1;-><init>(Landroid/support/v4/app/FragmentBreadCrumbs;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 124
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/support/v4/app/BackStackEntryWithIcon;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/FragmentBreadCrumbs;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mParentEntry:Landroid/support/v4/app/BackStackEntryWithIcon;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/FragmentBreadCrumbs;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/support/v4/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/FragmentBreadCrumbs;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/support/v4/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/support/v4/app/BackStackEntryWithIcon;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/FragmentBreadCrumbs;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mTopEntry:Landroid/support/v4/app/BackStackEntryWithIcon;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/app/FragmentBreadCrumbs;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/FragmentBreadCrumbs;

    .prologue
    .line 49
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mTopEntryClearsStack:Z

    return v0
.end method

.method static synthetic access$500(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/FragmentBreadCrumbs;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mActivity:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/FragmentBreadCrumbs;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mScrollview:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method public static combineMeasuredStates(II)I
    .locals 1
    .param p0, "curState"    # I
    .param p1, "newState"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .prologue
    .line 458
    or-int v0, p0, p1

    return v0
.end method

.method private createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/support/v4/app/BackStackRecordWrapper;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 127
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 133
    :goto_0
    return-object v1

    .line 129
    :cond_0
    new-instance v0, Landroid/support/v4/app/BackStackRecord;

    iget-object v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 130
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {v0, v1}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    .line 131
    .local v0, "entry":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {v0, p1}, Landroid/support/v4/app/BackStackRecord;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;

    .line 132
    invoke-virtual {v0, p2}, Landroid/support/v4/app/BackStackRecord;->setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;

    .line 133
    new-instance v1, Landroid/support/v4/app/BackStackRecordWrapper;

    invoke-direct {v1, v0}, Landroid/support/v4/app/BackStackRecordWrapper;-><init>(Landroid/support/v4/app/BackStackRecord;)V

    goto :goto_0
.end method

.method private static final getMeasuredState(Landroid/view/View;)I
    .locals 2
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 463
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    .line 464
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, -0x100

    or-int/2addr v0, v1

    return v0
.end method

.method private getPreEntry(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mParentEntry:Landroid/support/v4/app/BackStackEntryWithIcon;

    if-eqz v0, :cond_1

    .line 145
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mParentEntry:Landroid/support/v4/app/BackStackEntryWithIcon;

    .line 147
    :goto_0
    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mTopEntry:Landroid/support/v4/app/BackStackEntryWithIcon;

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mTopEntry:Landroid/support/v4/app/BackStackEntryWithIcon;

    goto :goto_0
.end method

.method private getPreEntryCount()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mTopEntry:Landroid/support/v4/app/BackStackEntryWithIcon;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mParentEntry:Landroid/support/v4/app/BackStackEntryWithIcon;

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static resolveSizeAndState(III)I
    .locals 4
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I
    .param p2, "childMeasuredState"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .prologue
    .line 471
    move v0, p0

    .line 472
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 473
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 474
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 489
    :goto_0
    const/high16 v3, -0x1000000

    and-int/2addr v3, p2

    or-int/2addr v3, v0

    return v3

    .line 476
    :sswitch_0
    move v0, p0

    .line 477
    goto :goto_0

    .line 479
    :sswitch_1
    if-ge v2, p0, :cond_0

    .line 480
    const/high16 v3, 0x1000000

    or-int v0, v2, v3

    goto :goto_0

    .line 482
    :cond_0
    move v0, p0

    .line 484
    goto :goto_0

    .line 486
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 474
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 162
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getPaddingLeft()I

    move-result v6

    .line 169
    .local v6, "mPaddingLeft":I
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getPaddingRight()I

    move-result v7

    .line 170
    .local v7, "mPaddingRight":I
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getPaddingTop()I

    move-result v8

    .line 171
    .local v8, "mPaddingTop":I
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getPaddingBottom()I

    move-result v5

    .line 172
    .local v5, "mPaddingBottom":I
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getChildCount()I

    move-result v2

    .line 173
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 174
    invoke-virtual {p0, v4}, Landroid/support/v4/app/FragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 176
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v6

    sub-int v3, v9, v7

    .line 177
    .local v3, "childRight":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v8

    sub-int v1, v9, v5

    .line 178
    .local v1, "childBottom":I
    invoke-virtual {v0, v6, v8, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBottom":I
    .end local v3    # "childRight":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getChildCount()I

    move-result v1

    .line 187
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getPaddingLeft()I

    move-result v4

    .line 188
    .local v4, "mPaddingLeft":I
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getPaddingRight()I

    move-result v5

    .line 189
    .local v5, "mPaddingRight":I
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getPaddingTop()I

    move-result v6

    .line 190
    .local v6, "mPaddingTop":I
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getPaddingBottom()I

    move-result v3

    .line 192
    .local v3, "mPaddingBottom":I
    const/4 v7, 0x0

    .line 193
    .local v7, "maxHeight":I
    const/4 v8, 0x0

    .line 194
    .local v8, "maxWidth":I
    const/4 v9, 0x0

    .line 197
    .local v9, "measuredChildState":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 198
    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 199
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    .line 200
    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v4/app/FragmentBreadCrumbs;->measureChild(Landroid/view/View;II)V

    .line 201
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 202
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 204
    invoke-static {v0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getMeasuredState(Landroid/view/View;)I

    move-result v10

    .line 203
    invoke-static {v9, v10}, Landroid/support/v4/app/FragmentBreadCrumbs;->combineMeasuredStates(II)I

    move-result v9

    .line 197
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    add-int v10, v4, v5

    add-int/2addr v8, v10

    .line 210
    add-int v10, v6, v3

    add-int/2addr v7, v10

    .line 213
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getSuggestedMinimumHeight()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 214
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getSuggestedMinimumWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 217
    invoke-static {v8, p1, v9}, Landroid/support/v4/app/FragmentBreadCrumbs;->resolveSizeAndState(III)I

    move-result v10

    shl-int/lit8 v11, v9, 0x10

    .line 218
    invoke-static {v7, p2, v11}, Landroid/support/v4/app/FragmentBreadCrumbs;->resolveSizeAndState(III)I

    move-result v11

    .line 216
    invoke-virtual {p0, v10, v11}, Landroid/support/v4/app/FragmentBreadCrumbs;->setMeasuredDimension(II)V

    .line 219
    return-void
.end method

.method public setActivity(Landroid/support/v4/app/FragmentActivity;)V
    .locals 4
    .param p1, "a"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    const/4 v3, 0x0

    .line 226
    iput-object p1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 227
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    .line 230
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mIsScrollable:Z

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/jakewharton/hanselandgretel/R$layout;->hag__fragment_bread_crumbs_scrolling:I

    .line 232
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/jakewharton/hanselandgretel/R$id;->layout:I

    .line 234
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    .line 236
    iget-object v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "parent":Landroid/view/View;
    move-object v1, v0

    .line 238
    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mScrollview:Landroid/widget/HorizontalScrollView;

    .line 246
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentBreadCrumbs;->addView(Landroid/view/View;I)V

    .line 247
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 248
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 249
    return-void

    .line 240
    .end local v0    # "parent":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/jakewharton/hanselandgretel/R$layout;->hag__fragment_bread_crumbs:I

    .line 241
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/jakewharton/hanselandgretel/R$id;->layout:I

    .line 243
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    .line 244
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    .restart local v0    # "parent":Landroid/view/View;
    goto :goto_0
.end method

.method public setCrumbBackgroundResource(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 252
    iput p1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mCrumbBackgroundResource:I

    .line 253
    return-void
.end method

.method public setCrumbMaximumWidth(I)V
    .locals 2
    .param p1, "maxWidth"    # I

    .prologue
    .line 256
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxWidthInPixels must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    iput p1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mMaxCrumbWidth:I

    .line 260
    return-void
.end method

.method public setCrumbPadding(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 263
    iput p1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mPaddingStart:I

    .line 264
    iput p2, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mPaddingTop:I

    .line 265
    iput p3, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mPaddingEnd:I

    .line 266
    iput p4, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mPaddingBottom:I

    .line 267
    return-void
.end method

.method public setCrumbTransition(Landroid/animation/LayoutTransition;)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 272
    return-void
.end method

.method public setMaxVisible(I)V
    .locals 2
    .param p1, "visibleCrumbs"    # I

    .prologue
    .line 279
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "visibleCrumbs must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iput p1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mMaxVisible:I

    .line 283
    return-void
.end method

.method public setOnBreadCrumbClickListener(Landroid/support/v4/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    .prologue
    .line 292
    iput-object p1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/support/v4/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    .line 293
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 307
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/support/v4/app/BackStackRecordWrapper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mParentEntry:Landroid/support/v4/app/BackStackEntryWithIcon;

    .line 308
    iput-object p3, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    .line 309
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 310
    return-void
.end method

.method public setScrollable(Z)V
    .locals 0
    .param p1, "scrollable"    # Z

    .prologue
    .line 316
    iput-boolean p1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mIsScrollable:Z

    .line 317
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 325
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/support/v4/app/BackStackRecordWrapper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mTopEntry:Landroid/support/v4/app/BackStackEntryWithIcon;

    .line 326
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 327
    return-void
.end method

.method public setTitleIcon(I)V
    .locals 3
    .param p1, "drawableRes"    # I

    .prologue
    .line 335
    const-string v1, ""

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/support/v4/app/BackStackRecordWrapper;

    move-result-object v0

    .line 336
    .local v0, "wrapper":Landroid/support/v4/app/BackStackRecordWrapper;
    invoke-virtual {v0, p1}, Landroid/support/v4/app/BackStackRecordWrapper;->setIconRes(I)V

    .line 337
    iput-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mTopEntry:Landroid/support/v4/app/BackStackEntryWithIcon;

    .line 338
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 339
    return-void
.end method

.method public setTopEntryClearsStack(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 342
    iput-boolean p1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mTopEntryClearsStack:Z

    .line 343
    return-void
.end method

.method updateCrumbs()V
    .locals 25

    .prologue
    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mActivity:Landroid/support/v4/app/FragmentActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    .line 347
    .local v6, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v14

    .line 348
    .local v14, "numEntries":I
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getPreEntryCount()I

    move-result v15

    .line 349
    .local v15, "numPreEntries":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v16

    .line 351
    .local v16, "numViews":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    add-int v21, v14, v15

    move/from16 v0, v21

    if-ge v8, v0, :cond_8

    .line 352
    if-ge v8, v15, :cond_0

    .line 353
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/support/v4/app/FragmentBreadCrumbs;->getPreEntry(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v4

    .line 356
    .local v4, "bse":Landroid/support/v4/app/FragmentManager$BackStackEntry;
    :goto_1
    move/from16 v0, v16

    if-ge v8, v0, :cond_2

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 358
    .local v19, "v":Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 359
    .local v17, "tag":Ljava/lang/Object;
    move-object/from16 v0, v17

    if-eq v0, v4, :cond_2

    .line 360
    move v12, v8

    .local v12, "j":I
    :goto_2
    move/from16 v0, v16

    if-ge v12, v0, :cond_1

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 360
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 353
    .end local v4    # "bse":Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .end local v12    # "j":I
    .end local v17    # "tag":Ljava/lang/Object;
    .end local v19    # "v":Landroid/view/View;
    :cond_0
    sub-int v21, v8, v15

    .line 354
    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v4

    goto :goto_1

    .line 363
    .restart local v4    # "bse":Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .restart local v12    # "j":I
    .restart local v17    # "tag":Ljava/lang/Object;
    .restart local v19    # "v":Landroid/view/View;
    :cond_1
    move/from16 v16, v8

    .line 366
    .end local v12    # "j":I
    .end local v17    # "tag":Ljava/lang/Object;
    .end local v19    # "v":Landroid/view/View;
    :cond_2
    move/from16 v0, v16

    if-lt v8, v0, :cond_6

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v21, v0

    sget v22, Lcom/jakewharton/hanselandgretel/R$layout;->hag__fragment_bread_crumb_item:I

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, p0

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 371
    .local v11, "item":Landroid/view/View;
    const v21, 0x1020016

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 372
    .local v18, "text":Landroid/widget/TextView;
    const v21, 0x1020007

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 373
    .local v10, "icon":Landroid/widget/ImageView;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 375
    const/4 v7, 0x0

    .line 377
    .local v7, "hasSetIcon":Z
    instance-of v0, v4, Landroid/support/v4/app/BackStackEntryWithIcon;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object v9, v4

    .line 378
    check-cast v9, Landroid/support/v4/app/BackStackEntryWithIcon;

    .line 379
    .local v9, "ibse":Landroid/support/v4/app/BackStackEntryWithIcon;
    invoke-interface {v9}, Landroid/support/v4/app/BackStackEntryWithIcon;->getIconResId()I

    move-result v21

    if-lez v21, :cond_3

    .line 380
    invoke-interface {v9}, Landroid/support/v4/app/BackStackEntryWithIcon;->getIconResId()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 381
    const/4 v7, 0x1

    .line 385
    .end local v9    # "ibse":Landroid/support/v4/app/BackStackEntryWithIcon;
    :cond_3
    if-eqz v7, :cond_7

    .line 386
    const/16 v21, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 391
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mCrumbBackgroundResource:I

    move/from16 v21, v0

    if-lez v21, :cond_4

    .line 392
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mCrumbBackgroundResource:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 410
    :cond_4
    :goto_3
    if-nez v8, :cond_5

    .line 411
    const v21, 0x1020006

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 414
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mPaddingStart:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mPaddingTop:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mPaddingEnd:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mPaddingBottom:I

    move/from16 v24, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 423
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mIsScrollable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mScrollview:Landroid/widget/HorizontalScrollView;

    move-object/from16 v21, v0

    new-instance v22, Landroid/support/v4/app/FragmentBreadCrumbs$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v4/app/FragmentBreadCrumbs$2;-><init>(Landroid/support/v4/app/FragmentBreadCrumbs;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 351
    .end local v7    # "hasSetIcon":Z
    .end local v10    # "icon":Landroid/widget/ImageView;
    .end local v11    # "item":Landroid/view/View;
    .end local v18    # "text":Landroid/widget/TextView;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 395
    .restart local v7    # "hasSetIcon":Z
    .restart local v10    # "icon":Landroid/widget/ImageView;
    .restart local v11    # "item":Landroid/view/View;
    .restart local v18    # "text":Landroid/widget/TextView;
    :cond_7
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 396
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    invoke-interface {v4}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 400
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mMaxCrumbWidth:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 402
    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 403
    sget-object v21, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 405
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mCrumbBackgroundResource:I

    move/from16 v21, v0

    if-lez v21, :cond_4

    .line 406
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mCrumbBackgroundResource:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 433
    .end local v4    # "bse":Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .end local v7    # "hasSetIcon":Z
    .end local v10    # "icon":Landroid/widget/ImageView;
    .end local v11    # "item":Landroid/view/View;
    .end local v18    # "text":Landroid/widget/TextView;
    :cond_8
    add-int v20, v14, v15

    .line 434
    .local v20, "viewI":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v16

    .line 435
    :goto_4
    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    add-int/lit8 v22, v16, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 437
    add-int/lit8 v16, v16, -0x1

    goto :goto_4

    .line 440
    :cond_9
    const/4 v8, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v8, v0, :cond_e

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 443
    .local v5, "child":Landroid/view/View;
    const v21, 0x1020016

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    add-int/lit8 v21, v16, -0x1

    move/from16 v0, v21

    if-ge v8, v0, :cond_b

    const/16 v21, 0x1

    :goto_6
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 444
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mMaxVisible:I

    move/from16 v21, v0

    if-lez v21, :cond_a

    .line 446
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mMaxVisible:I

    move/from16 v21, v0

    sub-int v21, v16, v21

    move/from16 v0, v21

    if-ge v8, v0, :cond_c

    const/16 v21, 0x8

    :goto_7
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 447
    const v21, 0x1020006

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 449
    .local v13, "leftIcon":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mMaxVisible:I

    move/from16 v21, v0

    sub-int v21, v16, v21

    move/from16 v0, v21

    if-le v8, v0, :cond_d

    if-eqz v8, :cond_d

    const/16 v21, 0x0

    :goto_8
    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 440
    .end local v13    # "leftIcon":Landroid/view/View;
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 443
    :cond_b
    const/16 v21, 0x0

    goto :goto_6

    .line 446
    :cond_c
    const/16 v21, 0x0

    goto :goto_7

    .line 449
    .restart local v13    # "leftIcon":Landroid/view/View;
    :cond_d
    const/16 v21, 0x8

    goto :goto_8

    .line 453
    .end local v5    # "child":Landroid/view/View;
    .end local v13    # "leftIcon":Landroid/view/View;
    :cond_e
    return-void
.end method
