.class Lcom/julysystems/appx/AppXRenderScreenCastView;
.super Lcom/julysystems/appx/AppXRenderBaseScreenCastView;
.source "AppXRenderScreenCastView.java"


# instance fields
.field private actionUrl:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private didCalculate:Z

.field private height:I

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

.field private rb:Lcom/julysystems/appx/AppXRenderScreenCastBlock;

.field private selectedTabIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1}, Lcom/julysystems/appx/AppXRenderBaseScreenCastView;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->rb:Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->didCalculate:Z

    .line 18
    iput-object v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->context:Landroid/content/Context;

    .line 19
    iput-object v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->actionUrl:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->params:Ljava/util/Hashtable;

    .line 21
    const/16 v0, 0xa

    iput v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->height:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "element"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/julysystems/appx/AppXRenderBaseScreenCastView;-><init>(Landroid/content/Context;Lorg/w3c/dom/Element;)V

    .line 16
    iput-object v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->rb:Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    .line 17
    iput-boolean v5, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->didCalculate:Z

    .line 18
    iput-object v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->context:Landroid/content/Context;

    .line 19
    iput-object v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->actionUrl:Ljava/lang/String;

    .line 20
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->params:Ljava/util/Hashtable;

    .line 21
    const/16 v2, 0xa

    iput v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->height:I

    .line 30
    iget-object v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->params:Ljava/util/Hashtable;

    const-string v3, "focusedTab"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->params:Ljava/util/Hashtable;

    const-string v3, "selectedTab"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {p2}, Lcom/julysystems/appx/AppXRenderRenderUtil;->getScreenCastBlock(Lorg/w3c/dom/Element;)Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    move-result-object v2

    iput-object v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->rb:Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    .line 33
    iget-object v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->rb:Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    if-nez v2, :cond_0

    .line 41
    :goto_0
    return-void

    .line 35
    :cond_0
    const-string v2, "bgcolor"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "bgColorStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/julysystems/appx/AppXUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 37
    .local v1, "bgcolor":I
    invoke-virtual {p0, v1}, Lcom/julysystems/appx/AppXRenderScreenCastView;->setBackgroundColor(I)V

    .line 38
    iput-object p1, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->context:Landroid/content/Context;

    .line 39
    invoke-virtual {p0, v5}, Lcom/julysystems/appx/AppXRenderScreenCastView;->setWillNotDraw(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderScreenCastView;->doCalculate()V

    goto :goto_0
.end method


# virtual methods
.method public doCalculate()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderScreenCastView;->isDidCalculate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderScreenCastView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 46
    new-instance v5, Lcom/julysystems/appx/AppXRenderRectC;

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderScreenCastView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {v5, v1, v1, v0, v1}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 47
    .local v5, "ctxRect":Lcom/julysystems/appx/AppXRenderRectC;
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->rb:Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    iget-object v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->params:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderScreenCastView;->isDidCalculate()Z

    move-result v7

    move-object v1, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    .line 48
    invoke-virtual {p0, v8}, Lcom/julysystems/appx/AppXRenderScreenCastView;->setDidCalculate(Z)V

    .line 49
    iget v0, v5, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    float-to-int v0, v0

    iput v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->height:I

    .line 52
    .end local v5    # "ctxRect":Lcom/julysystems/appx/AppXRenderRectC;
    :cond_0
    return-void
.end method

.method public getBlockHeight()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->height:I

    return v0
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
    .line 126
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->params:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getSelectedTabIndex()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->selectedTabIndex:I

    return v0
.end method

.method public isDidCalculate()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->didCalculate:Z

    return v0
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
    const/4 v11, 0x0

    .line 56
    invoke-super {p0, p1}, Lcom/julysystems/appx/AppXRenderBaseScreenCastView;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 58
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v5, Lcom/julysystems/appx/AppXRenderRectC;

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderScreenCastView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->height:I

    int-to-float v1, v1

    invoke-direct {v5, v11, v11, v0, v1}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 59
    .local v5, "ctxRect":Lcom/julysystems/appx/AppXRenderRectC;
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->rb:Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    iget-object v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderScreenCastView;->getParams()Ljava/util/Hashtable;

    move-result-object v6

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderScreenCastView;->isDidCalculate()Z

    move-result v7

    const/4 v8, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v8}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    .line 60
    iget v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->height:I

    iget v1, v5, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    float-to-int v1, v1

    if-ge v0, v1, :cond_0

    .line 61
    iget v0, v5, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    float-to-int v0, v0

    iput v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->height:I

    .line 62
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderScreenCastView;->requestLayout()V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderScreenCastView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->actionUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 65
    const v0, 0x185ab5

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    const/16 v0, 0x80

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 67
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderScreenCastView;->getWidth()I

    move-result v0

    int-to-float v9, v0

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderScreenCastView;->getHeight()I

    move-result v0

    int-to-float v10, v0

    move-object v6, p1

    move v7, v11

    move v8, v11

    move-object v11, v4

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 70
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
    .line 86
    invoke-super/range {p0 .. p5}, Lcom/julysystems/appx/AppXRenderBaseScreenCastView;->onLayout(ZIIII)V

    .line 87
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/julysystems/appx/AppXRenderBaseScreenCastView;->onMeasure(II)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->didCalculate:Z

    .line 78
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderScreenCastView;->doCalculate()V

    .line 79
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderScreenCastView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/julysystems/appx/AppXRenderScreenCastView;->setMeasuredDimension(II)V

    .line 80
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 92
    iget v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->height:I

    invoke-super {p0, p1, v0, p3, p4}, Lcom/julysystems/appx/AppXRenderBaseScreenCastView;->onSizeChanged(IIII)V

    .line 93
    return-void
.end method

.method public setDidCalculate(Z)V
    .locals 0
    .param p1, "didCalculate"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->didCalculate:Z

    .line 110
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
    .line 130
    .local p1, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->params:Ljava/util/Hashtable;

    .line 131
    return-void
.end method

.method public setSelectedTabIndex(I)V
    .locals 0
    .param p1, "selectedTabIndex"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/julysystems/appx/AppXRenderScreenCastView;->selectedTabIndex:I

    .line 119
    return-void
.end method
