.class Lcom/julysystems/appx/AppXRenderOldRenderField;
.super Landroid/widget/AbsoluteLayout;
.source "AppXRenderOldRenderField.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DrawAllocation",
        "DrawAllocation",
        "DrawAllocation"
    }
.end annotation


# instance fields
.field public ctx:Landroid/content/Context;

.field private final pageData:Lcom/julysystems/appx/AppXPageData;

.field renderBlock:Lcom/julysystems/appx/AppXRenderOldRenderBlock;

.field public renderfocusFlag:Z

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderOldRenderBlock;Lcom/julysystems/appx/AppXPageData;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderBlock"    # Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    .param p3, "pageData"    # Lcom/julysystems/appx/AppXPageData;

    .prologue
    const/high16 v1, -0x1000000

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/julysystems/appx/AppXRenderOldRenderField;->renderfocusFlag:Z

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/julysystems/appx/AppXRenderOldRenderField;->url:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/julysystems/appx/AppXRenderOldRenderField;->ctx:Landroid/content/Context;

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXRenderOldRenderField;->setDrawingCacheEnabled(Z)V

    .line 28
    iput-object p3, p0, Lcom/julysystems/appx/AppXRenderOldRenderField;->pageData:Lcom/julysystems/appx/AppXPageData;

    .line 29
    const/high16 v0, 0x100000

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXRenderOldRenderField;->setDrawingCacheQuality(I)V

    .line 30
    invoke-virtual {p0, v1}, Lcom/julysystems/appx/AppXRenderOldRenderField;->setDrawingCacheBackgroundColor(I)V

    .line 31
    iput-object p2, p0, Lcom/julysystems/appx/AppXRenderOldRenderField;->renderBlock:Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    .line 32
    invoke-virtual {p0, v1}, Lcom/julysystems/appx/AppXRenderOldRenderField;->setBackgroundColor(I)V

    .line 33
    if-eqz p2, :cond_0

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p2, p1, v0, p0}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->initializeFields(Landroid/content/Context;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V

    .line 35
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderOldRenderBlock;Ljava/lang/String;ILcom/julysystems/appx/AppXPageData;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "block"    # Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "height"    # I
    .param p5, "pageData"    # Lcom/julysystems/appx/AppXPageData;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/julysystems/appx/AppXRenderOldRenderField;->renderfocusFlag:Z

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/julysystems/appx/AppXRenderOldRenderField;->url:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/julysystems/appx/AppXRenderOldRenderField;->renderBlock:Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    .line 40
    iput-object p5, p0, Lcom/julysystems/appx/AppXRenderOldRenderField;->pageData:Lcom/julysystems/appx/AppXPageData;

    .line 41
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXRenderOldRenderField;->setBackgroundColor(I)V

    .line 43
    iput-object p3, p0, Lcom/julysystems/appx/AppXRenderOldRenderField;->url:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderOldRenderField;->renderBlock:Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    int-to-float v1, p4

    iput v1, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->height:F

    .line 45
    return-void
.end method


# virtual methods
.method public getBlockHeight()F
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderOldRenderField;->renderBlock:Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderOldRenderField;->renderBlock:Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    iget v0, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->height:F

    .line 81
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    goto :goto_0
.end method

.method public getPageData()Lcom/julysystems/appx/AppXPageData;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderOldRenderField;->pageData:Lcom/julysystems/appx/AppXPageData;

    return-object v0
.end method

.method public getRenderUtil()Lcom/julysystems/appx/AppXRenderRenderUtil;
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/julysystems/appx/AppXRenderRenderUtil;->getRenderUtil()Lcom/julysystems/appx/AppXRenderRenderUtil;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 51
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderOldRenderField;->renderBlock:Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    if-eqz v0, :cond_0

    .line 52
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 53
    .local v5, "paint":Landroid/graphics/Paint;
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderOldRenderField;->renderBlock:Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p1, v5, v2, p0}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->executeDrawing(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V

    .line 55
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderOldRenderField;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderOldRenderField;->url:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 56
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 57
    .restart local v5    # "paint":Landroid/graphics/Paint;
    const v0, 0x185ab5

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    const/16 v0, 0x80

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 59
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderOldRenderField;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderOldRenderField;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 62
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 66
    sget-object v0, Lcom/julysystems/appx/AppXConstants;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderOldRenderField;->getBlockHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-super {p0, v0, v1}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    .line 67
    sget-object v0, Lcom/julysystems/appx/AppXConstants;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderOldRenderField;->getBlockHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/julysystems/appx/AppXRenderOldRenderField;->setMeasuredDimension(II)V

    .line 68
    return-void
.end method

.method public resetHeight()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public setHeight(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderOldRenderField;->renderBlock:Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    int-to-float v1, p1

    iput v1, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->height:F

    .line 72
    return-void
.end method
