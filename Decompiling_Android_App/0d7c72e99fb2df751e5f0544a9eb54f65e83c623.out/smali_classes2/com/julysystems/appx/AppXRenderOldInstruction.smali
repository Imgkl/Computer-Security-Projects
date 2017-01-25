.class Lcom/julysystems/appx/AppXRenderOldInstruction;
.super Ljava/lang/Object;
.source "AppXRenderOldInstruction.java"


# instance fields
.field private final attributes:[Lcom/julysystems/appx/AppXRenderOldAttribute;

.field private final instructionId:I


# direct methods
.method public constructor <init>(Lcom/julysystems/appx/AppXRenderDataInputStream;)V
    .locals 4
    .param p1, "is"    # Lcom/julysystems/appx/AppXRenderDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/julysystems/appx/AppXRenderOldInstruction;->instructionId:I

    .line 15
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readByte()B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 16
    .local v0, "attributeCount":I
    new-array v2, v0, [Lcom/julysystems/appx/AppXRenderOldAttribute;

    iput-object v2, p0, Lcom/julysystems/appx/AppXRenderOldInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderOldAttribute;

    .line 17
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 20
    return-void

    .line 18
    :cond_0
    iget-object v2, p0, Lcom/julysystems/appx/AppXRenderOldInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderOldAttribute;

    new-instance v3, Lcom/julysystems/appx/AppXRenderOldAttribute;

    invoke-direct {v3, p1}, Lcom/julysystems/appx/AppXRenderOldAttribute;-><init>(Lcom/julysystems/appx/AppXRenderDataInputStream;)V

    aput-object v3, v2, v1

    .line 17
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAttribute(I)Lcom/julysystems/appx/AppXRenderOldAttribute;
    .locals 2
    .param p1, "attributeId"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderOldInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderOldAttribute;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 30
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderOldInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderOldAttribute;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderOldAttribute;->getAttributeId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 29
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderOldInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderOldAttribute;

    aget-object v1, v1, v0

    goto :goto_1

    .line 27
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getColor(III)I
    .locals 3
    .param p1, "attrR"    # I
    .param p2, "attrG"    # I
    .param p3, "attrB"    # I

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-virtual {p0, p1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getIntVal(II)I

    move-result v0

    invoke-virtual {p0, p2, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getIntVal(II)I

    move-result v1

    invoke-virtual {p0, p3, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getIntVal(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public getCoordinate(IFF)F
    .locals 1
    .param p1, "attributeId"    # I
    .param p2, "baseVal"    # F
    .param p3, "defaultVal"    # F

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getAttribute(I)Lcom/julysystems/appx/AppXRenderOldAttribute;

    move-result-object v0

    .line 56
    .local v0, "attribute":Lcom/julysystems/appx/AppXRenderOldAttribute;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p2, p3}, Lcom/julysystems/appx/AppXRenderOldAttribute;->getCoordinate(FF)F

    move-result p3

    .line 58
    .end local p3    # "defaultVal":F
    :cond_0
    return p3
.end method

.method public getInnerRenderBlock(I)Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    .locals 2
    .param p1, "attributeId"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getAttribute(I)Lcom/julysystems/appx/AppXRenderOldAttribute;

    move-result-object v0

    .line 35
    .local v0, "attribute":Lcom/julysystems/appx/AppXRenderOldAttribute;
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/julysystems/appx/AppXRenderOldAttribute;->getInnerRenderBlock()Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    move-result-object v1

    .line 37
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstructionId()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/julysystems/appx/AppXRenderOldInstruction;->instructionId:I

    return v0
.end method

.method public getIntVal(II)I
    .locals 1
    .param p1, "attributeId"    # I
    .param p2, "defaultVal"    # I

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getAttribute(I)Lcom/julysystems/appx/AppXRenderOldAttribute;

    move-result-object v0

    .line 42
    .local v0, "attribute":Lcom/julysystems/appx/AppXRenderOldAttribute;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p2}, Lcom/julysystems/appx/AppXRenderOldAttribute;->getIntVal(I)I

    move-result p2

    .line 44
    .end local p2    # "defaultVal":I
    :cond_0
    return p2
.end method

.method public getRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5
    .param p1, "ctxRect"    # Landroid/graphics/RectF;
    .param p2, "defaultRect"    # Landroid/graphics/RectF;

    .prologue
    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 63
    .local v0, "rect":Landroid/graphics/RectF;
    const/4 v1, 0x1

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getCoordinate(IFF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 64
    const/4 v1, 0x2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getCoordinate(IFF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 65
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 66
    const/4 v2, 0x3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getCoordinate(IFF)F

    move-result v2

    add-float/2addr v1, v2

    .line 65
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 67
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 68
    const/4 v2, 0x4

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getCoordinate(IFF)F

    move-result v2

    add-float/2addr v1, v2

    .line 67
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 69
    return-object v0
.end method

.method public getText(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "attributeId"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getAttribute(I)Lcom/julysystems/appx/AppXRenderOldAttribute;

    move-result-object v0

    .line 49
    .local v0, "attribute":Lcom/julysystems/appx/AppXRenderOldAttribute;
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, p2}, Lcom/julysystems/appx/AppXRenderOldAttribute;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 51
    .end local p2    # "defaultVal":Ljava/lang/String;
    :cond_0
    return-object p2
.end method
