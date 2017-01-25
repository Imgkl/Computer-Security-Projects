.class Lcom/julysystems/appx/AppXRenderRenderField;
.super Landroid/widget/AbsoluteLayout;
.source "AppXRenderRenderField.java"


# instance fields
.field public ctx:Landroid/content/Context;

.field private final pageData:Lcom/julysystems/appx/AppXPageData;

.field private params:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field renderBlock:Lcom/julysystems/appx/AppXRenderRenderBlock;

.field public renderfocusFlag:Z

.field private selectedTabIndex:I

.field public tabsManager:Landroid/widget/LinearLayout;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderRenderBlock;Lcom/julysystems/appx/AppXPageData;Ljava/util/Hashtable;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "block"    # Lcom/julysystems/appx/AppXRenderRenderBlock;
    .param p3, "pageData"    # Lcom/julysystems/appx/AppXPageData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/julysystems/appx/AppXRenderRenderBlock;",
            "Lcom/julysystems/appx/AppXPageData;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/high16 v3, -0x1000000

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-boolean v2, p0, Lcom/julysystems/appx/AppXRenderRenderField;->renderfocusFlag:Z

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/julysystems/appx/AppXRenderRenderField;->url:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/julysystems/appx/AppXRenderRenderField;->ctx:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lcom/julysystems/appx/AppXRenderRenderField;->pageData:Lcom/julysystems/appx/AppXPageData;

    .line 39
    const-string v0, "focusedTab"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v0, "selectedTab"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p0, p4}, Lcom/julysystems/appx/AppXRenderRenderField;->setParams(Ljava/util/Hashtable;)V

    .line 42
    invoke-virtual {p0, v2}, Lcom/julysystems/appx/AppXRenderRenderField;->setSelectedTabIndex(I)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXRenderRenderField;->setDrawingCacheEnabled(Z)V

    .line 44
    const/high16 v0, 0x100000

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXRenderRenderField;->setDrawingCacheQuality(I)V

    .line 45
    invoke-virtual {p0, v3}, Lcom/julysystems/appx/AppXRenderRenderField;->setDrawingCacheBackgroundColor(I)V

    .line 46
    iput-object p2, p0, Lcom/julysystems/appx/AppXRenderRenderField;->renderBlock:Lcom/julysystems/appx/AppXRenderRenderBlock;

    .line 47
    invoke-virtual {p0, v3}, Lcom/julysystems/appx/AppXRenderRenderField;->setBackgroundColor(I)V

    .line 48
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderRenderField;->init()V

    .line 49
    return-void
.end method


# virtual methods
.method public getBlockHeight()I
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderRenderField;->renderBlock:Lcom/julysystems/appx/AppXRenderRenderBlock;

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/Float;

    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderRenderField;->renderBlock:Lcom/julysystems/appx/AppXRenderRenderBlock;

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderRenderBlock;->getHeight()F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    .line 112
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public getPageData()Lcom/julysystems/appx/AppXPageData;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderRenderField;->pageData:Lcom/julysystems/appx/AppXPageData;

    return-object v0
.end method

.method public getParams()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderRenderField;->params:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getRenderUtil()Lcom/julysystems/appx/AppXRenderRenderUtil;
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/julysystems/appx/AppXRenderRenderUtil;->getRenderUtil()Lcom/julysystems/appx/AppXRenderRenderUtil;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTabIndex()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/julysystems/appx/AppXRenderRenderField;->selectedTabIndex:I

    return v0
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderRenderField;->renderBlock:Lcom/julysystems/appx/AppXRenderRenderBlock;

    if-eqz v0, :cond_0

    .line 53
    new-instance v5, Lcom/julysystems/appx/AppXRenderRectC;

    sget-object v0, Lcom/julysystems/appx/AppXConstants;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    invoke-direct {v5, v1, v1, v0, v1}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 54
    .local v5, "ctxRect":Lcom/julysystems/appx/AppXRenderRectC;
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderRenderField;->renderBlock:Lcom/julysystems/appx/AppXRenderRenderBlock;

    iget-object v2, p0, Lcom/julysystems/appx/AppXRenderRenderField;->ctx:Landroid/content/Context;

    iget-object v6, p0, Lcom/julysystems/appx/AppXRenderRenderField;->params:Ljava/util/Hashtable;

    move-object v1, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    .line 55
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderRenderField;->getBlockHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, v5, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {v5}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/Float;

    iget v1, v5, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {v5}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v2

    add-float/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXRenderRenderField;->setHeight(I)V

    .line 58
    .end local v5    # "ctxRect":Lcom/julysystems/appx/AppXRenderRectC;
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation",
            "DrawAllocation"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 65
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v5, Lcom/julysystems/appx/AppXRenderRectC;

    sget-object v0, Lcom/julysystems/appx/AppXConstants;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    invoke-direct {v5, v7, v7, v0, v7}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 66
    .local v5, "ctxRect":Lcom/julysystems/appx/AppXRenderRectC;
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderRenderField;->renderBlock:Lcom/julysystems/appx/AppXRenderRenderBlock;

    iget-object v2, p0, Lcom/julysystems/appx/AppXRenderRenderField;->ctx:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderRenderField;->getParams()Ljava/util/Hashtable;

    move-result-object v6

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    .line 68
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderRenderField;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderRenderField;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 69
    const v0, 0x185ab5

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    const/16 v0, 0x80

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 71
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderRenderField;->getWidth()I

    move-result v0

    int-to-float v9, v0

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderRenderField;->getHeight()I

    move-result v0

    int-to-float v10, v0

    move-object v6, p1

    move v8, v7

    move-object v11, v4

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderRenderField;->getBlockHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, v5, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {v5}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderRenderField;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    new-instance v1, Ljava/lang/Float;

    iget v2, v5, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {v5}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v3

    add-float/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 79
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderRenderField;->requestLayout()V

    .line 80
    new-instance v0, Ljava/lang/Float;

    iget v1, v5, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {v5}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v2

    add-float/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXRenderRenderField;->setHeight(I)V

    .line 82
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 92
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsoluteLayout;->onLayout(ZIIII)V

    .line 93
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 86
    sget-object v0, Lcom/julysystems/appx/AppXConstants;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderRenderField;->getBlockHeight()I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    .line 87
    sget-object v0, Lcom/julysystems/appx/AppXConstants;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderRenderField;->getBlockHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/julysystems/appx/AppXRenderRenderField;->setMeasuredDimension(II)V

    .line 88
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    .line 103
    return-void
.end method

.method public resetHeight()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public setHeight(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderRenderField;->renderBlock:Lcom/julysystems/appx/AppXRenderRenderBlock;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderRenderBlock;->setHeight(F)V

    .line 98
    return-void
.end method

.method public setParams(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/julysystems/appx/AppXRenderRenderField;->params:Ljava/util/Hashtable;

    .line 133
    return-void
.end method

.method public setSelectedTabIndex(I)V
    .locals 0
    .param p1, "selectedTabIndex"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/julysystems/appx/AppXRenderRenderField;->selectedTabIndex:I

    .line 125
    return-void
.end method
