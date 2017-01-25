.class public Lcom/eventgenie/android/ui/other/TextProgressBar;
.super Landroid/widget/ProgressBar;
.source "TextProgressBar.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0xfa

.field private static final MAX_TEXT_HEIGHT_THRESHOLD:F = 0.5f

.field private static final MAX_TEXT_WIDTH_THRESHOLD:F = 0.5f

.field private static final MINIMUM_WIDTH_TO_DIPLAY_TEXT:F = 20.0f


# instance fields
.field private mProgressbarColour:I

.field private mText:Ljava/lang/String;

.field private final mTextBounds:Landroid/graphics/Rect;

.field private mTextBounds2:Landroid/graphics/RectF;

.field private mTextColor:I

.field private final mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 61
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextColor:I

    .line 62
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextSize:F

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mText:Ljava/lang/String;

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextPaint:Landroid/graphics/Paint;

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextBounds:Landroid/graphics/Rect;

    .line 75
    iget-object v0, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextColor:I

    .line 62
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextSize:F

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mText:Ljava/lang/String;

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextPaint:Landroid/graphics/Paint;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextBounds:Landroid/graphics/Rect;

    .line 82
    iget-object v0, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextColor:I

    .line 62
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextSize:F

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mText:Ljava/lang/String;

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextPaint:Landroid/graphics/Paint;

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextBounds:Landroid/graphics/Rect;

    .line 89
    iget-object v0, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    return-void
.end method

.method private adjustTextSize()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v11, 0x42c80000    # 100.0f

    .line 93
    iget-object v5, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mText:Ljava/lang/String;

    .line 94
    .local v5, "text":Ljava/lang/String;
    iget-object v7, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 95
    iget-object v7, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 96
    iget-object v7, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v10, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v5, v8, v9, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 97
    iget-object v7, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 99
    iget-object v7, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int v0, v7, v8

    .line 100
    .local v0, "h":I
    iget v7, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mViewHeight:I

    int-to-float v7, v7

    mul-float v3, v7, v12

    .line 101
    .local v3, "targetH":F
    int-to-float v7, v0

    div-float v7, v3, v7

    mul-float v1, v7, v11

    .line 103
    .local v1, "sizeh":F
    iget-object v7, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int v6, v7, v8

    .line 104
    .local v6, "w":I
    iget v7, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mViewWidth:I

    int-to-float v7, v7

    mul-float v4, v7, v12

    .line 105
    .local v4, "targetW":F
    int-to-float v7, v6

    div-float v7, v4, v7

    mul-float v2, v7, v11

    .line 107
    .local v2, "sizew":F
    iget-object v7, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 112
    return-void
.end method


# virtual methods
.method public declared-synchronized getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextColor()I
    .locals 1

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextSize()F
    .locals 1

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextSize:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 129
    iget-object v2, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v2, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float v0, v2, v3

    .line 132
    .local v0, "textHeight":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    iget-object v3, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    sub-float v1, v2, v3

    .line 134
    .local v1, "textOffset":F
    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/other/TextProgressBar;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/other/TextProgressBar;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextBounds2:Landroid/graphics/RectF;

    .line 135
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/other/TextProgressBar;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextBounds2:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextBounds2:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    add-float/2addr v4, v1

    iget-object v5, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 128
    .end local v0    # "textHeight":F
    .end local v1    # "textOffset":F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 146
    iput p1, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mViewWidth:I

    .line 147
    iput p2, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mViewHeight:I

    .line 149
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 150
    :cond_0
    int-to-float v0, p1

    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/eventgenie/android/ui/other/TextProgressBar;->adjustTextSize()V

    .line 154
    :cond_1
    return-void
.end method

.method public setProgressAnimated(I)V
    .locals 4
    .param p1, "progress"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 158
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isAtLeastApiLevel(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const-string v1, "progress"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 161
    .local v0, "animation":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 162
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 163
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 167
    .end local v0    # "animation":Landroid/animation/ObjectAnimator;
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/ui/other/TextProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public declared-synchronized setProgressbarColour(I)V
    .locals 4
    .param p1, "colorValue"    # I

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mProgressbarColour:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 187
    :goto_0
    monitor-exit p0

    return-void

    .line 174
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mProgressbarColour:I

    .line 177
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/other/TextProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$drawable;->text_progressbar_foreground:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 178
    .local v0, "pgDrawable":Landroid/graphics/drawable/Drawable;
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 180
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/other/TextProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$drawable;->text_progressbar_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/eventgenie/android/ui/help/UIUtils;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 183
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 184
    .local v1, "progress":Landroid/graphics/drawable/ClipDrawable;
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/other/TextProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/other/TextProgressBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 171
    .end local v0    # "pgDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "progress":Landroid/graphics/drawable/ClipDrawable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setProgressbarColour(Ljava/lang/String;)V
    .locals 2
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 191
    .local v0, "newColour":I
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/ui/other/TextProgressBar;->setProgressbarColour(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 190
    .end local v0    # "newColour":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 195
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 196
    :try_start_0
    iput-object p1, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mText:Ljava/lang/String;

    .line 200
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/other/TextProgressBar;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 198
    :cond_0
    :try_start_1
    const-string v0, ""

    iput-object v0, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mText:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextColor:I

    .line 205
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/other/TextProgressBar;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextSize(F)V
    .locals 1
    .param p1, "textSize"    # F

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/eventgenie/android/ui/other/TextProgressBar;->mTextSize:F

    .line 210
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/other/TextProgressBar;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
