.class public Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;
.super Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;
.source "DefaultHeaderTransformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer$HideAnimationCallback;
    }
.end annotation


# static fields
.field public static final PROGRESS_BAR_STYLE_INSIDE:I = 0x0

.field public static final PROGRESS_BAR_STYLE_OUTSIDE:I = 0x1


# instance fields
.field private mAnimationDuration:J

.field private mContentLayout:Landroid/view/ViewGroup;

.field private mHeaderProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderView:Landroid/view/View;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mProgressBarHeight:I

.field private mProgressBarStyle:I

.field private mProgressDrawableColor:I

.field private mPullRefreshLabel:Ljava/lang/CharSequence;

.field private mRefreshingLabel:Ljava/lang/CharSequence;

.field private mReleaseLabel:Ljava/lang/CharSequence;


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 68
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;-><init>()V

    .line 64
    const/4 v1, -0x2

    iput v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mProgressBarHeight:I

    .line 66
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 69
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->getMinimumApiLevel()I

    move-result v0

    .line 70
    .local v0, "min":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v0, :cond_0

    .line 71
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This HeaderTransformer is designed to run on SDK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+. If using ActionBarSherlock or ActionBarCompat you should use the appropriate provided extra."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_0
    return-void
.end method

.method private applyProgressBarSettings()V
    .locals 4

    .prologue
    .line 376
    iget-object v2, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    if-eqz v2, :cond_0

    .line 377
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 378
    .local v1, "shape":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 379
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget v3, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mProgressDrawableColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 380
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    const/16 v2, 0x11

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 382
    .local v0, "clipDrawable":Landroid/graphics/drawable/ClipDrawable;
    iget-object v2, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    invoke-virtual {v2, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    .end local v0    # "clipDrawable":Landroid/graphics/drawable/ClipDrawable;
    .end local v1    # "shape":Landroid/graphics/drawable/ShapeDrawable;
    :cond_0
    return-void
.end method

.method private applyProgressBarStyle()V
    .locals 3

    .prologue
    .line 360
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mProgressBarHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 363
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mProgressBarStyle:I

    packed-switch v1, :pswitch_data_0

    .line 372
    :goto_0
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    invoke-virtual {v1, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    return-void

    .line 365
    :pswitch_0
    const/16 v1, 0x8

    sget v2, Luk/co/senab/actionbarpulltorefresh/library/R$id;->ptr_content:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 368
    :pswitch_1
    const/4 v1, 0x3

    sget v2, Luk/co/senab/actionbarpulltorefresh/library/R$id;->ptr_content:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static obtainStyledAttrsFromThemeAttr(Landroid/content/Context;I[I)Landroid/content/res/TypedArray;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeAttr"    # I
    .param p2, "styleAttrs"    # [I

    .prologue
    .line 442
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 443
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 444
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 447
    .local v1, "styleResId":I
    invoke-virtual {p0, v1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    return-object v2
.end method

.method private setupViewsFromStyles(Landroid/app/Activity;Landroid/view/View;)V
    .locals 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "headerView"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 289
    sget v6, Luk/co/senab/actionbarpulltorefresh/library/R$attr;->ptrHeaderStyle:I

    sget-object v7, Luk/co/senab/actionbarpulltorefresh/library/R$styleable;->PullToRefreshHeader:[I

    invoke-static {p1, v6, v7}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->obtainStyledAttrsFromThemeAttr(Landroid/content/Context;I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 293
    .local v4, "styleAttrs":Landroid/content/res/TypedArray;
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 294
    invoke-virtual {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->getActionBarSize(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v4, v9, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 296
    .local v2, "height":I
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v2, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 297
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->requestLayout()V

    .line 301
    .end local v2    # "height":I
    :cond_0
    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 304
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v1, :cond_1

    .line 305
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 309
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 314
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 315
    .local v0, "abContext":Landroid/content/Context;
    const/4 v6, 0x2

    invoke-virtual {p0, v0}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->getActionBarTitleStyle(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 318
    .local v5, "titleTextStyle":I
    if-eqz v5, :cond_2

    .line 319
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v0, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 323
    :cond_2
    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 324
    iget v6, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mProgressDrawableColor:I

    invoke-virtual {v4, v10, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mProgressDrawableColor:I

    .line 328
    :cond_3
    const/4 v6, 0x4

    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mProgressBarStyle:I

    .line 331
    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 332
    iget v6, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mProgressBarHeight:I

    invoke-virtual {v4, v11, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mProgressBarHeight:I

    .line 337
    :cond_4
    invoke-virtual {v4, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 338
    invoke-virtual {v4, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mPullRefreshLabel:Ljava/lang/CharSequence;

    .line 340
    :cond_5
    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 341
    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 344
    :cond_6
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 345
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 349
    :cond_7
    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 350
    const/16 v6, 0x9

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 351
    .local v3, "spbStyleRes":I
    if-eqz v3, :cond_8

    .line 352
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    invoke-virtual {v6, v3}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->applyStyle(I)V

    .line 356
    .end local v3    # "spbStyleRes":I
    :cond_8
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 357
    return-void

    .line 301
    .end local v0    # "abContext":Landroid/content/Context;
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v5    # "titleTextStyle":I
    :cond_9
    invoke-virtual {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->getActionBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0
.end method


# virtual methods
.method protected getActionBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 387
    const/4 v2, 0x1

    new-array v1, v2, [I

    const v2, 0x10100d4

    aput v2, v1, v3

    .line 390
    .local v1, "android_styleable_ActionBar":[I
    const v2, 0x10102ce

    invoke-static {p1, v2, v1}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->obtainStyledAttrsFromThemeAttr(Landroid/content/Context;I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 394
    .local v0, "abStyle":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 396
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method protected getActionBarSize(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 401
    const/4 v2, 0x1

    new-array v0, v2, [I

    const v2, 0x10102eb

    aput v2, v0, v3

    .line 402
    .local v0, "attrs":[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 404
    .local v1, "values":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 406
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method protected getActionBarTitleStyle(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 411
    const/4 v2, 0x1

    new-array v1, v2, [I

    const v2, 0x10102f8

    aput v2, v1, v3

    .line 414
    .local v1, "android_styleable_ActionBar":[I
    const v2, 0x10102ce

    invoke-static {p1, v2, v1}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->obtainStyledAttrsFromThemeAttr(Landroid/content/Context;I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 418
    .local v0, "abStyle":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 420
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method protected getMinimumApiLevel()I
    .locals 1

    .prologue
    .line 425
    const/16 v0, 0xe

    return v0
.end method

.method public hideHeaderView()Z
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x2

    .line 198
    iget-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v7, 0x8

    if-eq v4, v7, :cond_1

    move v2, v5

    .line 200
    .local v2, "changeVis":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 202
    iget-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v4

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_2

    .line 204
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 205
    .local v1, "animator":Landroid/animation/Animator;
    iget-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    const-string v7, "translationY"

    new-array v8, v10, [F

    const/4 v9, 0x0

    aput v9, v8, v6

    iget-object v9, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v8, v5

    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 207
    .local v3, "transAnim":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderView:Landroid/view/View;

    const-string v7, "alpha"

    new-array v8, v10, [F

    fill-array-data v8, :array_0

    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "alphaAnim":Landroid/animation/ObjectAnimator;
    move-object v4, v1

    .line 208
    check-cast v4, Landroid/animation/AnimatorSet;

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v3, v7, v6

    aput-object v0, v7, v5

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 213
    .end local v0    # "alphaAnim":Landroid/animation/ObjectAnimator;
    .end local v3    # "transAnim":Landroid/animation/ObjectAnimator;
    :goto_1
    iget-wide v4, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mAnimationDuration:J

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 214
    new-instance v4, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer$HideAnimationCallback;

    invoke-direct {v4, p0}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer$HideAnimationCallback;-><init>(Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;)V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 215
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 218
    .end local v1    # "animator":Landroid/animation/Animator;
    :cond_0
    return v2

    .end local v2    # "changeVis":Z
    :cond_1
    move v2, v6

    .line 198
    goto :goto_0

    .line 211
    .restart local v2    # "changeVis":Z
    :cond_2
    iget-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderView:Landroid/view/View;

    const-string v5, "alpha"

    new-array v6, v10, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .restart local v1    # "animator":Landroid/animation/Animator;
    goto :goto_1

    .line 207
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 211
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 111
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->getHeaderView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->setupViewsFromStyles(Landroid/app/Activity;Landroid/view/View;)V

    .line 112
    return-void
.end method

.method public onPulled(F)V
    .locals 3
    .param p1, "percentagePulled"    # F

    .prologue
    .line 138
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 140
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 141
    .local v0, "progress":F
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    iget-object v2, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    invoke-virtual {v2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setProgress(I)V

    .line 143
    .end local v0    # "progress":F
    :cond_0
    return-void
.end method

.method public onRefreshMinimized()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 172
    :cond_0
    return-void

    .line 170
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onRefreshStarted()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mRefreshingLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_0
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setIndeterminate(Z)V

    .line 154
    :cond_1
    return-void
.end method

.method public onReleaseToRefresh()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mReleaseLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_0
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    invoke-virtual {v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setProgress(I)V

    .line 164
    :cond_1
    return-void
.end method

.method public onReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    invoke-virtual {v0, v2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    invoke-virtual {v0, v2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setProgress(I)V

    .line 120
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    invoke-virtual {v0, v2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setIndeterminate(Z)V

    .line 124
    :cond_0
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mPullRefreshLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_1
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Luk/co/senab/actionbarpulltorefresh/library/sdk/Compat;->setAlpha(Landroid/view/View;F)V

    .line 134
    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "headerView"    # Landroid/view/View;

    .prologue
    .line 79
    iput-object p2, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderView:Landroid/view/View;

    .line 82
    sget v0, Luk/co/senab/actionbarpulltorefresh/library/R$id;->ptr_progress:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    iput-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    .line 83
    sget v0, Luk/co/senab/actionbarpulltorefresh/library/R$id;->ptr_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    .line 84
    sget v0, Luk/co/senab/actionbarpulltorefresh/library/R$id;->ptr_content:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    .line 87
    sget v0, Luk/co/senab/actionbarpulltorefresh/library/R$string;->pull_to_refresh_pull_label:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mPullRefreshLabel:Ljava/lang/CharSequence;

    .line 88
    sget v0, Luk/co/senab/actionbarpulltorefresh/library/R$string;->pull_to_refresh_refreshing_label:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 89
    sget v0, Luk/co/senab/actionbarpulltorefresh/library/R$string;->pull_to_refresh_release_label:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 91
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mAnimationDuration:J

    .line 94
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Luk/co/senab/actionbarpulltorefresh/library/R$color;->default_progress_bar_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mProgressDrawableColor:I

    .line 98
    invoke-direct {p0, p1, p2}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->setupViewsFromStyles(Landroid/app/Activity;Landroid/view/View;)V

    .line 100
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->applyProgressBarStyle()V

    .line 103
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->applyProgressBarSettings()V

    .line 106
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->onReset()V

    .line 107
    return-void
.end method

.method public setProgressBarColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 230
    iget v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mProgressDrawableColor:I

    if-eq p1, v0, :cond_0

    .line 231
    iput p1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mProgressDrawableColor:I

    .line 232
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableColor(I)V

    .line 233
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->applyProgressBarSettings()V

    .line 235
    :cond_0
    return-void
.end method

.method public setProgressBarHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 252
    iget v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mProgressBarHeight:I

    if-eq v0, p1, :cond_0

    .line 253
    iput p1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mProgressBarHeight:I

    .line 254
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->applyProgressBarStyle()V

    .line 256
    :cond_0
    return-void
.end method

.method public setProgressBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 242
    iget v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mProgressBarStyle:I

    if-eq v0, p1, :cond_0

    .line 243
    iput p1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mProgressBarStyle:I

    .line 244
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->applyProgressBarStyle()V

    .line 246
    :cond_0
    return-void
.end method

.method public setPullText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "pullText"    # Ljava/lang/CharSequence;

    .prologue
    .line 264
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mPullRefreshLabel:Ljava/lang/CharSequence;

    .line 265
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mPullRefreshLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :cond_0
    return-void
.end method

.method public setRefreshingText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "refreshingText"    # Ljava/lang/CharSequence;

    .prologue
    .line 276
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 277
    return-void
.end method

.method public setReleaseText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "releaseText"    # Ljava/lang/CharSequence;

    .prologue
    .line 285
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 286
    return-void
.end method

.method public showHeaderView()Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 180
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    move v2, v4

    .line 182
    .local v2, "changeVis":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 183
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 184
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 185
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    const-string v7, "translationY"

    new-array v8, v10, [F

    iget-object v9, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v8, v5

    const/4 v9, 0x0

    aput v9, v8, v4

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 187
    .local v3, "transAnim":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderView:Landroid/view/View;

    const-string v7, "alpha"

    new-array v8, v10, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 188
    .local v0, "alphaAnim":Landroid/animation/ObjectAnimator;
    new-array v6, v10, [Landroid/animation/Animator;

    aput-object v3, v6, v5

    aput-object v0, v6, v4

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 189
    iget-wide v4, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mAnimationDuration:J

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 190
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 193
    .end local v0    # "alphaAnim":Landroid/animation/ObjectAnimator;
    .end local v1    # "animSet":Landroid/animation/AnimatorSet;
    .end local v3    # "transAnim":Landroid/animation/ObjectAnimator;
    :cond_0
    return v2

    .end local v2    # "changeVis":Z
    :cond_1
    move v2, v5

    .line 180
    goto :goto_0

    .line 187
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
