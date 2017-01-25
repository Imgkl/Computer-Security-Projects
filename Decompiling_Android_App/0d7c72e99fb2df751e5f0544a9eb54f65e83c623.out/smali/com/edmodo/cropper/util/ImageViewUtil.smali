.class public Lcom/edmodo/cropper/util/ImageViewUtil;
.super Ljava/lang/Object;
.source "ImageViewUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmapRectCenterInside(IIII)Landroid/graphics/Rect;
    .locals 1
    .param p0, "bitmapWidth"    # I
    .param p1, "bitmapHeight"    # I
    .param p2, "viewWidth"    # I
    .param p3, "viewHeight"    # I

    .prologue
    .line 59
    invoke-static {p0, p1, p2, p3}, Lcom/edmodo/cropper/util/ImageViewUtil;->getBitmapRectCenterInsideHelper(IIII)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmapRectCenterInside(Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 37
    .local v1, "bitmapWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 38
    .local v0, "bitmapHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 39
    .local v3, "viewWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 41
    .local v2, "viewHeight":I
    invoke-static {v1, v0, v3, v2}, Lcom/edmodo/cropper/util/ImageViewUtil;->getBitmapRectCenterInsideHelper(IIII)Landroid/graphics/Rect;

    move-result-object v4

    return-object v4
.end method

.method private static getBitmapRectCenterInsideHelper(IIII)Landroid/graphics/Rect;
    .locals 18
    .param p0, "bitmapWidth"    # I
    .param p1, "bitmapHeight"    # I
    .param p2, "viewWidth"    # I
    .param p3, "viewHeight"    # I

    .prologue
    .line 82
    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 83
    .local v12, "viewToBitmapWidthRatio":D
    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 86
    .local v10, "viewToBitmapHeightRatio":D
    move/from16 v0, p2

    move/from16 v1, p0

    if-ge v0, v1, :cond_0

    .line 87
    move/from16 v0, p2

    int-to-double v14, v0

    move/from16 v0, p0

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v12, v14, v16

    .line 89
    :cond_0
    move/from16 v0, p3

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 90
    move/from16 v0, p3

    int-to-double v14, v0

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v10, v14, v16

    .line 95
    :cond_1
    const-wide/high16 v14, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v9, v12, v14

    if-nez v9, :cond_2

    const-wide/high16 v14, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v9, v10, v14

    if-eqz v9, :cond_4

    .line 97
    :cond_2
    cmpg-double v9, v12, v10

    if-gtz v9, :cond_3

    .line 98
    move/from16 v0, p2

    int-to-double v6, v0

    .line 99
    .local v6, "resultWidth":D
    move/from16 v0, p1

    int-to-double v14, v0

    mul-double/2addr v14, v6

    move/from16 v0, p0

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v4, v14, v16

    .line 114
    .local v4, "resultHeight":D
    :goto_0
    move/from16 v0, p2

    int-to-double v14, v0

    cmpl-double v9, v6, v14

    if-nez v9, :cond_5

    .line 115
    const/4 v3, 0x0

    .line 116
    .local v3, "resultX":I
    move/from16 v0, p3

    int-to-double v14, v0

    sub-double/2addr v14, v4

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v8, v14

    .line 126
    .local v8, "resultY":I
    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v9, v14

    add-int/2addr v9, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    add-int/2addr v14, v8

    invoke-direct {v2, v3, v8, v9, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 131
    .local v2, "result":Landroid/graphics/Rect;
    return-object v2

    .line 102
    .end local v2    # "result":Landroid/graphics/Rect;
    .end local v3    # "resultX":I
    .end local v4    # "resultHeight":D
    .end local v6    # "resultWidth":D
    .end local v8    # "resultY":I
    :cond_3
    move/from16 v0, p3

    int-to-double v4, v0

    .line 103
    .restart local v4    # "resultHeight":D
    move/from16 v0, p0

    int-to-double v14, v0

    mul-double/2addr v14, v4

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v6, v14, v16

    .restart local v6    # "resultWidth":D
    goto :goto_0

    .line 109
    .end local v4    # "resultHeight":D
    .end local v6    # "resultWidth":D
    :cond_4
    move/from16 v0, p1

    int-to-double v4, v0

    .line 110
    .restart local v4    # "resultHeight":D
    move/from16 v0, p0

    int-to-double v6, v0

    .restart local v6    # "resultWidth":D
    goto :goto_0

    .line 117
    :cond_5
    move/from16 v0, p3

    int-to-double v14, v0

    cmpl-double v9, v4, v14

    if-nez v9, :cond_6

    .line 118
    move/from16 v0, p2

    int-to-double v14, v0

    sub-double/2addr v14, v6

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v3, v14

    .line 119
    .restart local v3    # "resultX":I
    const/4 v8, 0x0

    .restart local v8    # "resultY":I
    goto :goto_1

    .line 122
    .end local v3    # "resultX":I
    .end local v8    # "resultY":I
    :cond_6
    move/from16 v0, p2

    int-to-double v14, v0

    sub-double/2addr v14, v6

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v3, v14

    .line 123
    .restart local v3    # "resultX":I
    move/from16 v0, p3

    int-to-double v14, v0

    sub-double/2addr v14, v4

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v8, v14

    .restart local v8    # "resultY":I
    goto :goto_1
.end method
