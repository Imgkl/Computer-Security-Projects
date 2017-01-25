.class public Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;
.super Landroid/widget/ProgressBar;
.source "SmoothProgressBar.java"


# static fields
.field private static final INTERPOLATOR_ACCELERATE:I = 0x0

.field private static final INTERPOLATOR_ACCELERATEDECELERATE:I = 0x2

.field private static final INTERPOLATOR_DECELERATE:I = 0x3

.field private static final INTERPOLATOR_LINEAR:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    sget v0, Lfr/castorflex/android/smoothprogressbar/R$attr;->spbStyle:I

    invoke-direct {p0, p1, p2, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct/range {p0 .. p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->isInEditMode()Z

    move-result v26

    if-eqz v26, :cond_0

    .line 38
    new-instance v26, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;-><init>(Landroid/content/Context;Z)V

    invoke-virtual/range {v26 .. v26}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->build()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 43
    .local v18, "res":Landroid/content/res/Resources;
    sget-object v26, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar:[I

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v26

    move/from16 v3, p3

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 46
    .local v5, "a":Landroid/content/res/TypedArray;
    sget v26, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_color:I

    sget v27, Lfr/castorflex/android/smoothprogressbar/R$color;->spb_default_color:I

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    .line 47
    .local v8, "color":I
    sget v26, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_sections_count:I

    sget v27, Lfr/castorflex/android/smoothprogressbar/R$integer;->spb_default_sections_count:I

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v20

    .line 48
    .local v20, "sectionsCount":I
    sget v26, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_stroke_separator_length:I

    sget v27, Lfr/castorflex/android/smoothprogressbar/R$dimen;->spb_default_stroke_separator_length:I

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    .line 49
    .local v21, "separatorLength":I
    sget v26, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_stroke_width:I

    sget v27, Lfr/castorflex/android/smoothprogressbar/R$dimen;->spb_default_stroke_width:I

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    .line 50
    .local v25, "strokeWidth":F
    sget v26, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_speed:I

    sget v27, Lfr/castorflex/android/smoothprogressbar/R$string;->spb_default_speed:I

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v22

    .line 51
    .local v22, "speed":F
    sget v26, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_progressiveStart_speed:I

    move/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v23

    .line 52
    .local v23, "speedProgressiveStart":F
    sget v26, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_progressiveStop_speed:I

    move/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v24

    .line 53
    .local v24, "speedProgressiveStop":F
    sget v26, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_interpolator:I

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v14

    .line 54
    .local v14, "iInterpolator":I
    sget v26, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_reversed:I

    sget v27, Lfr/castorflex/android/smoothprogressbar/R$bool;->spb_default_reversed:I

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    .line 55
    .local v19, "reversed":Z
    sget v26, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_mirror_mode:I

    sget v27, Lfr/castorflex/android/smoothprogressbar/R$bool;->spb_default_mirror_mode:I

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 56
    .local v16, "mirrorMode":Z
    sget v26, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_colors:I

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 57
    .local v10, "colorsId":I
    sget v26, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_progressiveStart_activated:I

    sget v27, Lfr/castorflex/android/smoothprogressbar/R$bool;->spb_default_progressiveStart_activated:I

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    .line 58
    .local v17, "progressiveStartActivated":Z
    sget v26, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_background:I

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 59
    .local v6, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    sget v26, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_generate_background_with_colors:I

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 60
    .local v12, "generateBackgroundWithColors":Z
    sget v26, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_gradients:I

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 61
    .local v13, "gradients":Z
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    const/4 v15, 0x0

    .line 65
    .local v15, "interpolator":Landroid/view/animation/Interpolator;
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v14, v0, :cond_1

    .line 66
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v15

    .line 68
    :cond_1
    if-nez v15, :cond_2

    .line 69
    packed-switch v14, :pswitch_data_0

    .line 81
    new-instance v15, Landroid/view/animation/AccelerateInterpolator;

    .end local v15    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v15}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 85
    .restart local v15    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_2
    :goto_1
    const/4 v9, 0x0

    .line 87
    .local v9, "colors":[I
    if-eqz v10, :cond_3

    .line 88
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    .line 91
    :cond_3
    new-instance v26, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->speed(F)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v26

    .line 93
    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->progressiveStartSpeed(F)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v26

    .line 94
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->progressiveStopSpeed(F)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v26

    .line 95
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->interpolator(Landroid/view/animation/Interpolator;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v26

    .line 96
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->sectionsCount(I)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v26

    .line 97
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->separatorLength(I)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v26

    .line 98
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->strokeWidth(F)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v26

    .line 99
    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->reversed(Z)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v26

    .line 100
    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mirrorMode(Z)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v26

    .line 101
    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->progressiveStart(Z)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v26

    .line 102
    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->gradients(Z)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v7

    .line 104
    .local v7, "builder":Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    if-eqz v6, :cond_4

    .line 105
    invoke-virtual {v7, v6}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->backgroundDrawable(Landroid/graphics/drawable/Drawable;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    .line 108
    :cond_4
    if-eqz v12, :cond_5

    .line 109
    invoke-virtual {v7}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->generateBackgroundUsingColors()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    .line 112
    :cond_5
    if-eqz v9, :cond_6

    array-length v0, v9

    move/from16 v26, v0

    if-lez v26, :cond_6

    .line 113
    invoke-virtual {v7, v9}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->colors([I)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    .line 117
    :goto_2
    invoke-virtual {v7}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->build()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v11

    .line 118
    .local v11, "d":Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 71
    .end local v7    # "builder":Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .end local v9    # "colors":[I
    .end local v11    # "d":Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;
    :pswitch_0
    new-instance v15, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .end local v15    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v15}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 72
    .restart local v15    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_1

    .line 74
    :pswitch_1
    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    .end local v15    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v15}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 75
    .restart local v15    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_1

    .line 77
    :pswitch_2
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    .end local v15    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 78
    .restart local v15    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_1

    .line 115
    .restart local v7    # "builder":Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .restart local v9    # "colors":[I
    :cond_6
    invoke-virtual {v7, v8}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->color(I)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    goto :goto_2

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;
    .locals 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 211
    .local v0, "ret":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    if-nez v1, :cond_1

    .line 212
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The drawable is not a SmoothProgressDrawable"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_1
    check-cast v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    .end local v0    # "ret":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method


# virtual methods
.method public applyStyle(I)V
    .locals 10
    .param p1, "styleResId"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 122
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar:[I

    invoke-virtual {v5, v6, v7, v8, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 124
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_color:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 125
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_color:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableColor(I)V

    .line 127
    :cond_0
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_colors:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 128
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_colors:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 129
    .local v2, "colorsId":I
    if-eqz v2, :cond_1

    .line 130
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 131
    .local v1, "colors":[I
    if-eqz v1, :cond_1

    array-length v5, v1

    if-lez v5, :cond_1

    .line 132
    invoke-virtual {p0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableColors([I)V

    .line 135
    .end local v1    # "colors":[I
    .end local v2    # "colorsId":I
    :cond_1
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_sections_count:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 136
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_sections_count:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableSectionsCount(I)V

    .line 138
    :cond_2
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_stroke_separator_length:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 139
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_stroke_separator_length:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableSeparatorLength(I)V

    .line 141
    :cond_3
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_stroke_width:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 142
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_stroke_width:I

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableStrokeWidth(F)V

    .line 144
    :cond_4
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_speed:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 145
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_speed:I

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableSpeed(F)V

    .line 147
    :cond_5
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_progressiveStart_speed:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 148
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_progressiveStart_speed:I

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableProgressiveStartSpeed(F)V

    .line 150
    :cond_6
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_progressiveStop_speed:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 151
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_progressiveStop_speed:I

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableProgressiveStopSpeed(F)V

    .line 153
    :cond_7
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_reversed:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 154
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_reversed:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableReversed(Z)V

    .line 156
    :cond_8
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_mirror_mode:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 157
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_mirror_mode:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableMirrorMode(Z)V

    .line 159
    :cond_9
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_progressiveStart_activated:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 160
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_progressiveStart_activated:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setProgressiveStartActivated(Z)V

    .line 162
    :cond_a
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_progressiveStart_activated:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 163
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_progressiveStart_activated:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setProgressiveStartActivated(Z)V

    .line 165
    :cond_b
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_gradients:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 166
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_gradients:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableUseGradients(Z)V

    .line 168
    :cond_c
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_generate_background_with_colors:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 169
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_generate_background_with_colors:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 171
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v5

    invoke-virtual {v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->getColors()[I

    move-result-object v5

    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v6

    invoke-virtual {v6}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->getStrokeWidth()F

    move-result v6

    invoke-static {v5, v6}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBarUtils;->generateDrawableWithColors([IF)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 170
    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :cond_d
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_interpolator:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 175
    sget v5, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_interpolator:I

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 177
    .local v3, "iInterpolator":I
    packed-switch v3, :pswitch_data_0

    .line 191
    const/4 v4, 0x0

    .line 193
    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    :goto_0
    if-eqz v4, :cond_e

    .line 194
    invoke-virtual {p0, v4}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 197
    .end local v3    # "iInterpolator":I
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 198
    return-void

    .line 179
    .restart local v3    # "iInterpolator":I
    :pswitch_0
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 180
    .restart local v4    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 182
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_1
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 183
    .restart local v4    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 185
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_2
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 186
    .restart local v4    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 188
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_3
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 189
    .restart local v4    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 203
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    invoke-virtual {v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :cond_0
    monitor-exit p0

    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public progressiveStart()V
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->progressiveStart()V

    .line 286
    return-void
.end method

.method public progressiveStop()V
    .locals 1

    .prologue
    .line 289
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->progressiveStop()V

    .line 290
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 219
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 220
    .local v0, "ret":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    if-eqz v1, :cond_0

    .line 221
    check-cast v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    .end local v0    # "ret":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 222
    :cond_0
    return-void
.end method

.method public setProgressiveStartActivated(Z)V
    .locals 1
    .param p1, "progressiveStartActivated"    # Z

    .prologue
    .line 269
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setProgressiveStartActivated(Z)V

    .line 270
    return-void
.end method

.method public setSmoothProgressDrawableBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 277
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    return-void
.end method

.method public setSmoothProgressDrawableCallbacks(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;)V
    .locals 1
    .param p1, "listener"    # Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .prologue
    .line 273
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setCallbacks(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;)V

    .line 274
    return-void
.end method

.method public setSmoothProgressDrawableColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 233
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setColor(I)V

    .line 234
    return-void
.end method

.method public setSmoothProgressDrawableColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 229
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setColors([I)V

    .line 230
    return-void
.end method

.method public setSmoothProgressDrawableInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 225
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 226
    return-void
.end method

.method public setSmoothProgressDrawableMirrorMode(Z)V
    .locals 1
    .param p1, "mirrorMode"    # Z

    .prologue
    .line 265
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setMirrorMode(Z)V

    .line 266
    return-void
.end method

.method public setSmoothProgressDrawableProgressiveStartSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 241
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setProgressiveStartSpeed(F)V

    .line 242
    return-void
.end method

.method public setSmoothProgressDrawableProgressiveStopSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 245
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setProgressiveStopSpeed(F)V

    .line 246
    return-void
.end method

.method public setSmoothProgressDrawableReversed(Z)V
    .locals 1
    .param p1, "reversed"    # Z

    .prologue
    .line 261
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setReversed(Z)V

    .line 262
    return-void
.end method

.method public setSmoothProgressDrawableSectionsCount(I)V
    .locals 1
    .param p1, "sectionsCount"    # I

    .prologue
    .line 249
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setSectionsCount(I)V

    .line 250
    return-void
.end method

.method public setSmoothProgressDrawableSeparatorLength(I)V
    .locals 1
    .param p1, "separatorLength"    # I

    .prologue
    .line 253
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setSeparatorLength(I)V

    .line 254
    return-void
.end method

.method public setSmoothProgressDrawableSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 237
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setSpeed(F)V

    .line 238
    return-void
.end method

.method public setSmoothProgressDrawableStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .prologue
    .line 257
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setStrokeWidth(F)V

    .line 258
    return-void
.end method

.method public setSmoothProgressDrawableUseGradients(Z)V
    .locals 1
    .param p1, "useGradients"    # Z

    .prologue
    .line 281
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setUseGradients(Z)V

    .line 282
    return-void
.end method
