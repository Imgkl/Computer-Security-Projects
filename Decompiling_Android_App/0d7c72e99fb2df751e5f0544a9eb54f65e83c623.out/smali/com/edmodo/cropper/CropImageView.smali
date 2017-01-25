.class public Lcom/edmodo/cropper/CropImageView;
.super Landroid/widget/FrameLayout;
.source "CropImageView.java"


# static fields
.field public static final DEFAULT_ASPECT_RATIO_X:I = 0x1

.field public static final DEFAULT_ASPECT_RATIO_Y:I = 0x1

.field public static final DEFAULT_FIXED_ASPECT_RATIO:Z = false

.field public static final DEFAULT_GUIDELINES:I = 0x1

.field private static final DEFAULT_IMAGE_RESOURCE:I = 0x0

.field private static final DEGREES_ROTATED:Ljava/lang/String; = "DEGREES_ROTATED"

.field private static final EMPTY_RECT:Landroid/graphics/Rect;


# instance fields
.field private mAspectRatioX:I

.field private mAspectRatioY:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

.field private mDegreesRotated:I

.field private mFixAspectRatio:Z

.field private mGuidelines:I

.field private mImageResource:I

.field private mImageView:Landroid/widget/ImageView;

.field private mLayoutHeight:I

.field private mLayoutWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/edmodo/cropper/CropImageView;->EMPTY_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 68
    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mGuidelines:I

    .line 69
    iput-boolean v0, p0, Lcom/edmodo/cropper/CropImageView;->mFixAspectRatio:Z

    .line 70
    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioX:I

    .line 71
    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioY:I

    .line 72
    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->mImageResource:I

    .line 78
    invoke-direct {p0, p1}, Lcom/edmodo/cropper/CropImageView;->init(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput v2, p0, Lcom/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 68
    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mGuidelines:I

    .line 69
    iput-boolean v2, p0, Lcom/edmodo/cropper/CropImageView;->mFixAspectRatio:Z

    .line 70
    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioX:I

    .line 71
    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioY:I

    .line 72
    iput v2, p0, Lcom/edmodo/cropper/CropImageView;->mImageResource:I

    .line 84
    sget-object v1, Lcom/edmodo/cropper/R$styleable;->CropImageView:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mGuidelines:I

    .line 88
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/edmodo/cropper/CropImageView;->mFixAspectRatio:Z

    .line 90
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioX:I

    .line 91
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioY:I

    .line 92
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mImageResource:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    invoke-direct {p0, p1}, Lcom/edmodo/cropper/CropImageView;->init(Landroid/content/Context;)V

    .line 98
    return-void

    .line 94
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static getOnMeasureSpec(III)I
    .locals 2
    .param p0, "measureSpecMode"    # I
    .param p1, "measureSpecSize"    # I
    .param p2, "desiredSize"    # I

    .prologue
    .line 495
    const/high16 v1, 0x40000000    # 2.0f

    if-ne p0, v1, :cond_0

    .line 497
    move v0, p1

    .line 506
    .local v0, "spec":I
    :goto_0
    return v0

    .line 498
    .end local v0    # "spec":I
    :cond_0
    const/high16 v1, -0x80000000

    if-ne p0, v1, :cond_1

    .line 500
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .restart local v0    # "spec":I
    goto :goto_0

    .line 503
    .end local v0    # "spec":I
    :cond_1
    move v0, p2

    .restart local v0    # "spec":I
    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 472
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 473
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/edmodo/cropper/R$layout;->crop_image_view:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 475
    .local v1, "v":Landroid/view/View;
    sget v2, Lcom/edmodo/cropper/R$id;->ImageView_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    .line 477
    iget v2, p0, Lcom/edmodo/cropper/CropImageView;->mImageResource:I

    invoke-virtual {p0, v2}, Lcom/edmodo/cropper/CropImageView;->setImageResource(I)V

    .line 478
    sget v2, Lcom/edmodo/cropper/R$id;->CropOverlayView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    iput-object v2, p0, Lcom/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    .line 479
    iget-object v2, p0, Lcom/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    iget v3, p0, Lcom/edmodo/cropper/CropImageView;->mGuidelines:I

    iget-boolean v4, p0, Lcom/edmodo/cropper/CropImageView;->mFixAspectRatio:Z

    iget v5, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioX:I

    iget v6, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioY:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setInitialAttributeValues(IZII)V

    .line 480
    return-void
.end method


# virtual methods
.method public getActualCropRect()Landroid/graphics/RectF;
    .locals 19

    .prologue
    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/edmodo/cropper/util/ImageViewUtil;->getBitmapRectCenterInside(Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v13

    .line 378
    .local v13, "displayedImageRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v7, v0

    .line 379
    .local v7, "actualImageWidth":F
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-float v14, v0

    .line 380
    .local v14, "displayedImageWidth":F
    div-float v16, v7, v14

    .line 384
    .local v16, "scaleFactorWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v6, v0

    .line 385
    .local v6, "actualImageHeight":F
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    int-to-float v12, v0

    .line 386
    .local v12, "displayedImageHeight":F
    div-float v15, v6, v12

    .line 389
    .local v15, "scaleFactorHeight":F
    sget-object v17, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual/range {v17 .. v17}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v17

    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v9, v17, v18

    .line 390
    .local v9, "displayedCropLeft":F
    sget-object v17, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual/range {v17 .. v17}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v17

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v10, v17, v18

    .line 391
    .local v10, "displayedCropTop":F
    invoke-static {}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getWidth()F

    move-result v11

    .line 392
    .local v11, "displayedCropWidth":F
    invoke-static {}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getHeight()F

    move-result v8

    .line 395
    .local v8, "displayedCropHeight":F
    mul-float v2, v9, v16

    .line 396
    .local v2, "actualCropLeft":F
    mul-float v5, v10, v15

    .line 397
    .local v5, "actualCropTop":F
    mul-float v17, v11, v16

    add-float v4, v2, v17

    .line 398
    .local v4, "actualCropRight":F
    mul-float v17, v8, v15

    add-float v1, v5, v17

    .line 402
    .local v1, "actualCropBottom":F
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 403
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 407
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2, v5, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 412
    .local v3, "actualCropRect":Landroid/graphics/RectF;
    return-object v3
.end method

.method public getCroppedImage()Landroid/graphics/Bitmap;
    .locals 22

    .prologue
    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/edmodo/cropper/util/ImageViewUtil;->getBitmapRectCenterInside(Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v13

    .line 334
    .local v13, "displayedImageRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v6, v0

    .line 335
    .local v6, "actualImageWidth":F
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-float v14, v0

    .line 336
    .local v14, "displayedImageWidth":F
    div-float v16, v6, v14

    .line 340
    .local v16, "scaleFactorWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v5, v0

    .line 341
    .local v5, "actualImageHeight":F
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    int-to-float v12, v0

    .line 342
    .local v12, "displayedImageHeight":F
    div-float v15, v5, v12

    .line 345
    .local v15, "scaleFactorHeight":F
    sget-object v17, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual/range {v17 .. v17}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v17

    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v9, v17, v18

    .line 346
    .local v9, "cropWindowX":F
    sget-object v17, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual/range {v17 .. v17}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v17

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v10, v17, v18

    .line 347
    .local v10, "cropWindowY":F
    invoke-static {}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getWidth()F

    move-result v8

    .line 348
    .local v8, "cropWindowWidth":F
    invoke-static {}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getHeight()F

    move-result v7

    .line 351
    .local v7, "cropWindowHeight":F
    mul-float v3, v9, v16

    .line 352
    .local v3, "actualCropX":F
    mul-float v4, v10, v15

    .line 353
    .local v4, "actualCropY":F
    mul-float v2, v8, v16

    .line 354
    .local v2, "actualCropWidth":F
    mul-float v1, v7, v15

    .line 357
    .local v1, "actualCropHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    float-to-int v0, v3

    move/from16 v18, v0

    float-to-int v0, v4

    move/from16 v19, v0

    float-to-int v0, v2

    move/from16 v20, v0

    float-to-int v0, v1

    move/from16 v21, v0

    invoke-static/range {v17 .. v21}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 363
    .local v11, "croppedBitmap":Landroid/graphics/Bitmap;
    return-object v11
.end method

.method public getImageResource()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->mImageResource:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 222
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 224
    iget v1, p0, Lcom/edmodo/cropper/CropImageView;->mLayoutWidth:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/edmodo/cropper/CropImageView;->mLayoutHeight:I

    if-lez v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/edmodo/cropper/CropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 227
    .local v0, "origparams":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/edmodo/cropper/CropImageView;->mLayoutWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 228
    iget v1, p0, Lcom/edmodo/cropper/CropImageView;->mLayoutHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 229
    invoke-virtual {p0, v0}, Lcom/edmodo/cropper/CropImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    .end local v0    # "origparams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 150
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 151
    .local v13, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 152
    .local v14, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 153
    .local v6, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 155
    .local v7, "heightSize":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v15, :cond_6

    .line 157
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 161
    if-nez v7, :cond_0

    .line 162
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 167
    :cond_0
    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 168
    .local v10, "viewToBitmapWidthRatio":D
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 171
    .local v8, "viewToBitmapHeightRatio":D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    if-ge v14, v15, :cond_1

    .line 172
    int-to-double v0, v14

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v10, v16, v18

    .line 174
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    if-ge v7, v15, :cond_2

    .line 175
    int-to-double v0, v7

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v8, v16, v18

    .line 180
    :cond_2
    const-wide/high16 v16, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v15, v10, v16

    if-nez v15, :cond_3

    const-wide/high16 v16, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v15, v8, v16

    if-eqz v15, :cond_5

    .line 181
    :cond_3
    cmpg-double v15, v10, v8

    if-gtz v15, :cond_4

    .line 182
    move v4, v14

    .line 183
    .local v4, "desiredWidth":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    mul-double v16, v16, v10

    move-wide/from16 v0, v16

    double-to-int v3, v0

    .line 198
    .local v3, "desiredHeight":I
    :goto_0
    invoke-static {v13, v14, v4}, Lcom/edmodo/cropper/CropImageView;->getOnMeasureSpec(III)I

    move-result v12

    .line 199
    .local v12, "width":I
    invoke-static {v6, v7, v3}, Lcom/edmodo/cropper/CropImageView;->getOnMeasureSpec(III)I

    move-result v5

    .line 201
    .local v5, "height":I
    move-object/from16 v0, p0

    iput v12, v0, Lcom/edmodo/cropper/CropImageView;->mLayoutWidth:I

    .line 202
    move-object/from16 v0, p0

    iput v5, v0, Lcom/edmodo/cropper/CropImageView;->mLayoutHeight:I

    .line 204
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/edmodo/cropper/CropImageView;->mLayoutWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/edmodo/cropper/CropImageView;->mLayoutHeight:I

    move/from16 v18, v0

    invoke-static/range {v15 .. v18}, Lcom/edmodo/cropper/util/ImageViewUtil;->getBitmapRectCenterInside(IIII)Landroid/graphics/Rect;

    move-result-object v2

    .line 208
    .local v2, "bitmapRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    invoke-virtual {v15, v2}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setBitmapRect(Landroid/graphics/Rect;)V

    .line 211
    move-object/from16 v0, p0

    iget v15, v0, Lcom/edmodo/cropper/CropImageView;->mLayoutWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/edmodo/cropper/CropImageView;->mLayoutHeight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/edmodo/cropper/CropImageView;->setMeasuredDimension(II)V

    .line 218
    .end local v2    # "bitmapRect":Landroid/graphics/Rect;
    .end local v3    # "desiredHeight":I
    .end local v4    # "desiredWidth":I
    .end local v5    # "height":I
    .end local v8    # "viewToBitmapHeightRatio":D
    .end local v10    # "viewToBitmapWidthRatio":D
    .end local v12    # "width":I
    :goto_1
    return-void

    .line 185
    .restart local v8    # "viewToBitmapHeightRatio":D
    .restart local v10    # "viewToBitmapWidthRatio":D
    :cond_4
    move v3, v7

    .line 186
    .restart local v3    # "desiredHeight":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    mul-double v16, v16, v8

    move-wide/from16 v0, v16

    double-to-int v4, v0

    .restart local v4    # "desiredWidth":I
    goto :goto_0

    .line 194
    .end local v3    # "desiredHeight":I
    .end local v4    # "desiredWidth":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 195
    .restart local v4    # "desiredWidth":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .restart local v3    # "desiredHeight":I
    goto :goto_0

    .line 215
    .end local v3    # "desiredHeight":I
    .end local v4    # "desiredWidth":I
    .end local v8    # "viewToBitmapHeightRatio":D
    .end local v10    # "viewToBitmapWidthRatio":D
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    sget-object v16, Lcom/edmodo/cropper/CropImageView;->EMPTY_RECT:Landroid/graphics/Rect;

    invoke-virtual/range {v15 .. v16}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setBitmapRect(Landroid/graphics/Rect;)V

    .line 216
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7}, Lcom/edmodo/cropper/CropImageView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 117
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 119
    check-cast v0, Landroid/os/Bundle;

    .line 121
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 123
    const-string v2, "DEGREES_ROTATED"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 124
    iget v1, p0, Lcom/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 125
    .local v1, "tempDegrees":I
    iget v2, p0, Lcom/edmodo/cropper/CropImageView;->mDegreesRotated:I

    invoke-virtual {p0, v2}, Lcom/edmodo/cropper/CropImageView;->rotateImage(I)V

    .line 126
    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 129
    .end local v1    # "tempDegrees":I
    :cond_0
    const-string v2, "instanceState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 134
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "instanceState"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 108
    const-string v1, "DEGREES_ROTATED"

    iget v2, p0, Lcom/edmodo/cropper/CropImageView;->mDegreesRotated:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 139
    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, p0}, Lcom/edmodo/cropper/util/ImageViewUtil;->getBitmapRectCenterInside(Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 141
    .local v0, "bitmapRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    invoke-virtual {v1, v0}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setBitmapRect(Landroid/graphics/Rect;)V

    .line 145
    .end local v0    # "bitmapRect":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    sget-object v2, Lcom/edmodo/cropper/CropImageView;->EMPTY_RECT:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setBitmapRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public rotateImage(I)V
    .locals 7
    .param p1, "degrees"    # I

    .prologue
    const/4 v1, 0x0

    .line 459
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 460
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 461
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 462
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 464
    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->mDegreesRotated:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 465
    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->mDegreesRotated:I

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 466
    return-void
.end method

.method public setAspectRatio(II)V
    .locals 2
    .param p1, "aspectRatioX"    # I
    .param p2, "aspectRatioY"    # I

    .prologue
    .line 444
    iput p1, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioX:I

    .line 445
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    iget v1, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioX:I

    invoke-virtual {v0, v1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setAspectRatioX(I)V

    .line 447
    iput p2, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioY:I

    .line 448
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    iget v1, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioY:I

    invoke-virtual {v0, v1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setAspectRatioY(I)V

    .line 449
    return-void
.end method

.method public setFixedAspectRatio(Z)V
    .locals 1
    .param p1, "fixAspectRatio"    # Z

    .prologue
    .line 423
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setFixedAspectRatio(Z)V

    .line 424
    return-void
.end method

.method public setGuidelines(I)V
    .locals 1
    .param p1, "guidelines"    # I

    .prologue
    .line 434
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setGuidelines(I)V

    .line 435
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 252
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 254
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->resetCropOverlayView()V

    .line 257
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;)V
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "exif"    # Landroid/media/ExifInterface;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 270
    if-nez p1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 274
    :cond_0
    if-nez p2, :cond_1

    .line 275
    invoke-virtual {p0, p1}, Lcom/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 279
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 280
    .local v5, "matrix":Landroid/graphics/Matrix;
    const-string v0, "Orientation"

    invoke-virtual {p2, v0, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7

    .line 281
    .local v7, "orientation":I
    const/4 v8, -0x1

    .line 283
    .local v8, "rotate":I
    packed-switch v7, :pswitch_data_0

    .line 295
    :goto_1
    :pswitch_0
    const/4 v0, -0x1

    if-ne v8, v0, :cond_2

    .line 296
    invoke-virtual {p0, p1}, Lcom/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 285
    :pswitch_1
    const/16 v8, 0x10e

    .line 286
    goto :goto_1

    .line 288
    :pswitch_2
    const/16 v8, 0xb4

    .line 289
    goto :goto_1

    .line 291
    :pswitch_3
    const/16 v8, 0x5a

    goto :goto_1

    .line 298
    :cond_2
    int-to-float v0, v8

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 299
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 306
    .local v9, "rotatedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v9}, Lcom/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 307
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setImageResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 317
    if-eqz p1, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/edmodo/cropper/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 319
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lcom/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 321
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method
