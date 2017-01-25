.class public Lcom/edmodo/cropper/util/HandleUtil;
.super Ljava/lang/Object;
.source "HandleUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/edmodo/cropper/util/HandleUtil$1;
    }
.end annotation


# static fields
.field private static final TARGET_RADIUS_DP:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    return-void
.end method

.method private static focusCenter()Z
    .locals 1

    .prologue
    .line 287
    invoke-static {}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->showGuidelines()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getOffset(Lcom/edmodo/cropper/cropwindow/handle/Handle;FFFFFF)Landroid/util/Pair;
    .locals 8
    .param p0, "handle"    # Lcom/edmodo/cropper/cropwindow/handle/Handle;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "right"    # F
    .param p6, "bottom"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/edmodo/cropper/cropwindow/handle/Handle;",
            "FFFFFF)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 118
    if-nez p0, :cond_0

    .line 119
    const/4 v2, 0x0

    .line 169
    :goto_0
    return-object v2

    .line 122
    :cond_0
    const/4 v3, 0x0

    .line 123
    .local v3, "touchOffsetX":F
    const/4 v4, 0x0

    .line 126
    .local v4, "touchOffsetY":F
    sget-object v5, Lcom/edmodo/cropper/util/HandleUtil$1;->$SwitchMap$com$edmodo$cropper$cropwindow$handle$Handle:[I

    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/handle/Handle;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 168
    :goto_1
    new-instance v2, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    .local v2, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    goto :goto_0

    .line 129
    .end local v2    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :pswitch_0
    sub-float v3, p3, p1

    .line 130
    sub-float v4, p4, p2

    .line 131
    goto :goto_1

    .line 133
    :pswitch_1
    sub-float v3, p5, p1

    .line 134
    sub-float v4, p4, p2

    .line 135
    goto :goto_1

    .line 137
    :pswitch_2
    sub-float v3, p3, p1

    .line 138
    sub-float v4, p6, p2

    .line 139
    goto :goto_1

    .line 141
    :pswitch_3
    sub-float v3, p5, p1

    .line 142
    sub-float v4, p6, p2

    .line 143
    goto :goto_1

    .line 145
    :pswitch_4
    sub-float v3, p3, p1

    .line 146
    const/4 v4, 0x0

    .line 147
    goto :goto_1

    .line 149
    :pswitch_5
    const/4 v3, 0x0

    .line 150
    sub-float v4, p4, p2

    .line 151
    goto :goto_1

    .line 153
    :pswitch_6
    sub-float v3, p5, p1

    .line 154
    const/4 v4, 0x0

    .line 155
    goto :goto_1

    .line 157
    :pswitch_7
    const/4 v3, 0x0

    .line 158
    sub-float v4, p6, p2

    .line 159
    goto :goto_1

    .line 161
    :pswitch_8
    add-float v5, p5, p3

    div-float v0, v5, v7

    .line 162
    .local v0, "centerX":F
    add-float v5, p4, p6

    div-float v1, v5, v7

    .line 163
    .local v1, "centerY":F
    sub-float v3, v0, p1

    .line 164
    sub-float v4, v1, p2

    goto :goto_1

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getPressedHandle(FFFFFFF)Lcom/edmodo/cropper/cropwindow/handle/Handle;
    .locals 7
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F
    .param p6, "targetRadius"    # F

    .prologue
    .line 73
    const/4 v6, 0x0

    .line 77
    .local v6, "pressedHandle":Lcom/edmodo/cropper/cropwindow/handle/Handle;
    invoke-static {p0, p1, p2, p3, p6}, Lcom/edmodo/cropper/util/HandleUtil;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    sget-object v6, Lcom/edmodo/cropper/cropwindow/handle/Handle;->TOP_LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 100
    :cond_0
    :goto_0
    return-object v6

    .line 79
    :cond_1
    invoke-static {p0, p1, p4, p3, p6}, Lcom/edmodo/cropper/util/HandleUtil;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    sget-object v6, Lcom/edmodo/cropper/cropwindow/handle/Handle;->TOP_RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    .line 81
    :cond_2
    invoke-static {p0, p1, p2, p5, p6}, Lcom/edmodo/cropper/util/HandleUtil;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    sget-object v6, Lcom/edmodo/cropper/cropwindow/handle/Handle;->BOTTOM_LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    .line 83
    :cond_3
    invoke-static {p0, p1, p4, p5, p6}, Lcom/edmodo/cropper/util/HandleUtil;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    sget-object v6, Lcom/edmodo/cropper/cropwindow/handle/Handle;->BOTTOM_RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    .line 85
    :cond_4
    invoke-static/range {p0 .. p5}, Lcom/edmodo/cropper/util/HandleUtil;->isInCenterTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/edmodo/cropper/util/HandleUtil;->focusCenter()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 86
    sget-object v6, Lcom/edmodo/cropper/cropwindow/handle/Handle;->CENTER:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    :cond_5
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, p3

    move v5, p6

    .line 87
    invoke-static/range {v0 .. v5}, Lcom/edmodo/cropper/util/HandleUtil;->isInHorizontalTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 88
    sget-object v6, Lcom/edmodo/cropper/cropwindow/handle/Handle;->TOP:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    :cond_6
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    .line 89
    invoke-static/range {v0 .. v5}, Lcom/edmodo/cropper/util/HandleUtil;->isInHorizontalTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 90
    sget-object v6, Lcom/edmodo/cropper/cropwindow/handle/Handle;->BOTTOM:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    :cond_7
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p5

    move v5, p6

    .line 91
    invoke-static/range {v0 .. v5}, Lcom/edmodo/cropper/util/HandleUtil;->isInVerticalTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 92
    sget-object v6, Lcom/edmodo/cropper/cropwindow/handle/Handle;->LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    :cond_8
    move v0, p0

    move v1, p1

    move v2, p4

    move v3, p3

    move v4, p5

    move v5, p6

    .line 93
    invoke-static/range {v0 .. v5}, Lcom/edmodo/cropper/util/HandleUtil;->isInVerticalTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 94
    sget-object v6, Lcom/edmodo/cropper/cropwindow/handle/Handle;->RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    .line 95
    :cond_9
    invoke-static/range {p0 .. p5}, Lcom/edmodo/cropper/util/HandleUtil;->isInCenterTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/edmodo/cropper/util/HandleUtil;->focusCenter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    sget-object v6, Lcom/edmodo/cropper/cropwindow/handle/Handle;->CENTER:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0
.end method

.method public static getTargetRadius(Landroid/content/Context;)F
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v1, 0x1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 49
    .local v0, "targetRadius":F
    return v0
.end method

.method private static isInCenterTargetZone(FFFFFF)Z
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F

    .prologue
    .line 270
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    cmpg-float v0, p0, p4

    if-gez v0, :cond_0

    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    cmpg-float v0, p1, p5

    if-gez v0, :cond_0

    .line 271
    const/4 v0, 0x1

    .line 273
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInCornerTargetZone(FFFFF)Z
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "handleX"    # F
    .param p3, "handleY"    # F
    .param p4, "targetRadius"    # F

    .prologue
    .line 192
    sub-float v0, p0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p4

    if-gtz v0, :cond_0

    sub-float v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p4

    if-gtz v0, :cond_0

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInHorizontalTargetZone(FFFFFF)Z
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "handleXStart"    # F
    .param p3, "handleXEnd"    # F
    .param p4, "handleY"    # F
    .param p5, "targetRadius"    # F

    .prologue
    .line 218
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    cmpg-float v0, p0, p3

    if-gez v0, :cond_0

    sub-float v0, p1, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p5

    if-gtz v0, :cond_0

    .line 219
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInVerticalTargetZone(FFFFFF)Z
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "handleX"    # F
    .param p3, "handleYStart"    # F
    .param p4, "handleYEnd"    # F
    .param p5, "targetRadius"    # F

    .prologue
    .line 244
    sub-float v0, p0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p5

    if-gtz v0, :cond_0

    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    cmpg-float v0, p1, p4

    if-gez v0, :cond_0

    .line 245
    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
