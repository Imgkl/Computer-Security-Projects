.class public Lcom/eventgenie/android/utils/FractionalTouchDelegate;
.super Landroid/view/TouchDelegate;
.source "FractionalTouchDelegate.java"


# instance fields
.field private mDelegateTargeted:Z

.field private final mScrap:Landroid/graphics/Rect;

.field private final mSource:Landroid/view/View;

.field private final mSourceFraction:Landroid/graphics/RectF;

.field private final mSourceFull:Landroid/graphics/Rect;

.field private final mSourcePartial:Landroid/graphics/Rect;

.field private final mTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "source"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "sourceFraction"    # Landroid/graphics/RectF;

    .prologue
    const/4 v1, 0x0

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v0, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mScrap:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mSourceFull:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mSourcePartial:Landroid/graphics/Rect;

    .line 57
    iput-object p1, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mSource:Landroid/view/View;

    .line 58
    iput-object p2, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mTarget:Landroid/view/View;

    .line 59
    iput-object p3, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mSourceFraction:Landroid/graphics/RectF;

    .line 60
    return-void
.end method

.method public static setupDelegate(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 1
    .param p0, "source"    # Landroid/view/View;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "sourceFraction"    # Landroid/graphics/RectF;

    .prologue
    .line 75
    new-instance v0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;

    invoke-direct {v0, p0, p1, p2}, Lcom/eventgenie/android/utils/FractionalTouchDelegate;-><init>(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 76
    return-void
.end method

.method private updateSourcePartial()V
    .locals 5

    .prologue
    .line 83
    iget-object v2, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mSource:Landroid/view/View;

    iget-object v3, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mScrap:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 84
    iget-object v2, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mScrap:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mSourceFull:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mSourceFull:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mScrap:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 88
    iget-object v2, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mSourceFull:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 89
    .local v1, "width":I
    iget-object v2, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mSourceFull:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 91
    .local v0, "height":I
    iget-object v2, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mSourcePartial:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mSourceFraction:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    int-to-float v4, v1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 92
    iget-object v2, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mSourcePartial:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mSourceFraction:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    int-to-float v4, v0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 93
    iget-object v2, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mSourcePartial:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mSourceFraction:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    int-to-float v4, v1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 94
    iget-object v2, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mSourcePartial:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mSourceFraction:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 96
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v8, -0x40800000    # -1.0f

    .line 100
    invoke-direct {p0}, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->updateSourcePartial()V

    .line 108
    iget-object v3, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mSourcePartial:Landroid/graphics/Rect;

    .line 109
    .local v3, "sourcePartial":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mTarget:Landroid/view/View;

    .line 111
    .local v4, "target":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 112
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 114
    .local v6, "y":I
    const/4 v2, 0x0

    .line 115
    .local v2, "sendToDelegate":Z
    const/4 v1, 0x1

    .line 116
    .local v1, "hit":Z
    const/4 v0, 0x0

    .line 118
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 140
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 141
    if-eqz v1, :cond_2

    .line 142
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 146
    :goto_1
    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 148
    :cond_1
    return v0

    .line 120
    :pswitch_0
    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 121
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mDelegateTargeted:Z

    .line 122
    const/4 v2, 0x1

    goto :goto_0

    .line 127
    :pswitch_1
    iget-boolean v2, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mDelegateTargeted:Z

    .line 128
    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_0

    .line 130
    const/4 v1, 0x0

    goto :goto_0

    .line 135
    :pswitch_2
    iget-boolean v2, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mDelegateTargeted:Z

    .line 136
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->mDelegateTargeted:Z

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p1, v8, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
