.class Lcom/julysystems/appx/AppXRenderRectC;
.super Landroid/graphics/RectF;
.source "AppXRenderRectC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    .line 12
    iput p1, p0, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    .line 13
    iput p2, p0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    .line 14
    add-float v0, p1, p3

    iput v0, p0, Lcom/julysystems/appx/AppXRenderRectC;->right:F

    .line 15
    add-float v0, p2, p4

    iput v0, p0, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/julysystems/appx/AppXRenderRectC;)V
    .locals 2
    .param p1, "rect"    # Lcom/julysystems/appx/AppXRenderRectC;

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    .line 19
    iget v0, p1, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    iput v0, p0, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    .line 20
    iget v0, p1, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    iput v0, p0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    .line 21
    iget v0, p1, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/julysystems/appx/AppXRenderRectC;->right:F

    .line 22
    iget v0, p1, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 23
    return-void
.end method


# virtual methods
.method public isEqualTo(Lcom/julysystems/appx/AppXRenderRectC;)Z
    .locals 2
    .param p1, "rect"    # Lcom/julysystems/appx/AppXRenderRectC;

    .prologue
    .line 34
    iget v0, p0, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    iget v1, p1, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 35
    iget v0, p0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    iget v1, p1, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v0

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v0

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(FFFF)V
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 26
    add-float v0, p1, p3

    add-float v1, p2, p4

    invoke-super {p0, p1, p2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 27
    return-void
.end method

.method public set(Lcom/julysystems/appx/AppXRenderRectC;)V
    .locals 5
    .param p1, "rect"    # Lcom/julysystems/appx/AppXRenderRectC;

    .prologue
    .line 30
    iget v0, p1, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    iget v1, p1, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    iget v2, p1, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p1, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v4

    add-float/2addr v3, v4

    invoke-super {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 31
    return-void
.end method

.method public setHeight(F)V
    .locals 1
    .param p1, "height"    # F

    .prologue
    .line 41
    iget v0, p0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 42
    return-void
.end method
