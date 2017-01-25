.class public Lcom/edmodo/cropper/util/PaintUtil;
.super Ljava/lang/Object;
.source "PaintUtil.java"


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR_ID:Ljava/lang/String; = "#B0000000"

.field private static final DEFAULT_CORNER_COLOR:I = -0x1

.field private static final DEFAULT_CORNER_THICKNESS_DP:F = 5.0f

.field private static final DEFAULT_GUIDELINE_THICKNESS_PX:F = 1.0f

.field private static final DEFAULT_LINE_THICKNESS_DP:F = 3.0f

.field private static final SEMI_TRANSPARENT:Ljava/lang/String; = "#AAFFFFFF"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCornerThickness()F
    .locals 1

    .prologue
    .line 114
    const/high16 v0, 0x40a00000    # 5.0f

    return v0
.end method

.method public static getLineThickness()F
    .locals 1

    .prologue
    .line 123
    const/high16 v0, 0x40400000    # 3.0f

    return v0
.end method

.method public static newBackgroundPaint(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 82
    .local v0, "paint":Landroid/graphics/Paint;
    const-string v1, "#B0000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    return-object v0
.end method

.method public static newBorderPaint(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v2, 0x1

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 50
    .local v1, "lineThicknessPx":F
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 51
    .local v0, "borderPaint":Landroid/graphics/Paint;
    const-string v2, "#AAFFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    return-object v0
.end method

.method public static newCornerPaint(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const/4 v2, 0x1

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 100
    .local v1, "lineThicknessPx":F
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 101
    .local v0, "cornerPaint":Landroid/graphics/Paint;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 103
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    return-object v0
.end method

.method public static newGuidelinePaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 66
    .local v0, "paint":Landroid/graphics/Paint;
    const-string v1, "#AAFFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    return-object v0
.end method
