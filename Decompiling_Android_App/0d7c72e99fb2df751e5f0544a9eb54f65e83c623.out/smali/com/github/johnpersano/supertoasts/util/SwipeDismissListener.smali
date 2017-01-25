.class public Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;
.super Ljava/lang/Object;
.source "SwipeDismissListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener$OnDismissCallback;
    }
.end annotation


# instance fields
.field private isSwiping:Z

.field private mActionDownXCoordinate:F

.field private final mAnimationTime:J

.field private final mCallback:Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener$OnDismissCallback;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mScaledTouchSlop:I

.field private mTranslationX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener$OnDismissCallback;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener$OnDismissCallback;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 61
    .local v0, "mViewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mScaledTouchSlop:I

    .line 62
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mMinFlingVelocity:I

    .line 63
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mMaxFlingVelocity:I

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mAnimationTime:J

    .line 67
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mView:Landroid/view/View;

    .line 68
    iput-object p2, p0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mCallback:Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener$OnDismissCallback;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->performDismiss()V

    return-void
.end method

.method static synthetic access$100(Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;)Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener$OnDismissCallback;
    .locals 1
    .param p0, "x0"    # Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mCallback:Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener$OnDismissCallback;

    return-object v0
.end method

.method private performDismiss()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 207
    iget-object v3, p0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 208
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 210
    .local v2, "originalHeight":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v5, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-wide v4, p0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mAnimationTime:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 213
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener$2;

    invoke-direct {v3, p0}, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener$2;-><init>(Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 224
    new-instance v3, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener$3;

    invoke-direct {v3, p0, v1}, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener$3;-><init>(Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 236
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 238
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 75
    move-object/from16 v0, p0

    iget v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mTranslationX:F

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 77
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 79
    .local v7, "mViewWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 202
    :cond_0
    :goto_0
    const/4 v10, 0x0

    :goto_1
    return v10

    .line 84
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mActionDownXCoordinate:F

    .line 85
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 86
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 87
    invoke-virtual/range {p1 .. p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 89
    const/4 v10, 0x1

    goto :goto_1

    .line 94
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_0

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mActionDownXCoordinate:F

    sub-float v4, v10, v11

    .line 101
    .local v4, "deltaXActionUp":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v11, 0x3e8

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 106
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 107
    .local v8, "velocityX":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 109
    .local v9, "velocityY":F
    const/4 v5, 0x0

    .line 110
    .local v5, "dismiss":Z
    const/4 v6, 0x0

    .line 113
    .local v6, "dismissRight":Z
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    div-int/lit8 v11, v7, 0x2

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    .line 115
    const/4 v5, 0x1

    .line 116
    const/4 v10, 0x0

    cmpl-float v10, v4, v10

    if-lez v10, :cond_2

    const/4 v6, 0x1

    .line 126
    :cond_1
    :goto_2
    if-eqz v5, :cond_6

    .line 128
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    if-eqz v6, :cond_5

    int-to-float v10, v7

    :goto_3
    invoke-virtual {v11, v10}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mAnimationTime:J

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    new-instance v11, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener$1;-><init>(Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;)V

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 152
    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 153
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mTranslationX:F

    .line 154
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mActionDownXCoordinate:F

    .line 155
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->isSwiping:Z

    goto/16 :goto_0

    .line 116
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 118
    :cond_3
    move-object/from16 v0, p0

    iget v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mMinFlingVelocity:I

    int-to-float v10, v10

    cmpg-float v10, v10, v8

    if-gtz v10, :cond_1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mMaxFlingVelocity:I

    int-to-float v10, v10

    cmpg-float v10, v8, v10

    if-gtz v10, :cond_1

    cmpg-float v10, v9, v8

    if-gez v10, :cond_1

    .line 120
    const/4 v5, 0x1

    .line 121
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_4

    const/4 v6, 0x1

    :goto_5
    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_5

    .line 128
    :cond_5
    neg-int v10, v7

    int-to-float v10, v10

    goto :goto_3

    .line 144
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mAnimationTime:J

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_4

    .line 162
    .end local v4    # "deltaXActionUp":F
    .end local v5    # "dismiss":Z
    .end local v6    # "dismissRight":Z
    .end local v8    # "velocityX":F
    .end local v9    # "velocityY":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_0

    .line 168
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mActionDownXCoordinate:F

    sub-float v3, v10, v11

    .line 172
    .local v3, "deltaXActionMove":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mScaledTouchSlop:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_7

    .line 174
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->isSwiping:Z

    .line 175
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 178
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 179
    .local v2, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    shl-int/lit8 v10, v10, 0x8

    or-int/lit8 v10, v10, 0x3

    invoke-virtual {v2, v10}, Landroid/view/MotionEvent;->setAction(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mView:Landroid/view/View;

    invoke-virtual {v10, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 183
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 187
    .end local v2    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->isSwiping:Z

    if-eqz v10, :cond_0

    .line 189
    move-object/from16 v0, p0

    iput v3, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mTranslationX:F

    .line 190
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mView:Landroid/view/View;

    invoke-virtual {v10, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 191
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mView:Landroid/view/View;

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v15

    mul-float/2addr v14, v15

    int-to-float v15, v7

    div-float/2addr v14, v15

    sub-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V

    .line 194
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
