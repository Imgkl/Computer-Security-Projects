.class Lcom/julysystems/appx/AppXRenderInstruction;
.super Ljava/lang/Object;
.source "AppXRenderInstruction.java"


# static fields
.field public static final InstructionButton:I = 0x12

.field public static final InstructionDrawText:I = 0x11

.field public static final InstructionFillColor:I = 0x9

.field public static final InstructionFont:I = 0x1

.field public static final InstructionGradient:I = 0x4

.field public static final InstructionImage:I = 0x2

.field public static final InstructionLabel:I = 0x0

.field public static final InstructionLineToPoint:I = 0x7

.field public static final InstructionLink:I = 0x10

.field public static final InstructionMoveToPoint:I = 0x6

.field public static final InstructionOption:I = 0x17

.field public static final InstructionPadding:I = 0x13

.field public static final InstructionRoundedRect:I = 0x5

.field public static final InstructionSegmentedControl:I = 0x1a

.field public static final InstructionSegmentedSection:I = 0x1b

.field public static final InstructionSelectBox:I = 0x16

.field public static final InstructionSetClip:I = 0x3

.field public static final InstructionStrokeColor:I = 0x8

.field public static final InstructionSubmitButton:I = 0x19

.field public static final InstructionSwitchField:I = 0x18

.field public static final InstructionTab:I = 0xe

.field public static final InstructionTabContainer:I = 0xd

.field public static final InstructionTabData:I = 0xf

.field public static final InstructionTabHeader:I = 0x1d

.field public static final InstructionTable:I = 0xa

.field public static final InstructionTabs:I = 0x1c

.field public static final InstructionTd:I = 0xc

.field public static final InstructionTextArea:I = 0x15

.field public static final InstructionTextBox:I = 0x14

.field public static final InstructionTr:I = 0xb


# instance fields
.field private attrCount:I

.field public final attributes:[Lcom/julysystems/appx/AppXRenderAttribute;

.field private final instructionId:I

.field private sl:Landroid/text/StaticLayout;

.field private txtLayout:Landroid/text/Layout;


# direct methods
.method public constructor <init>(Lcom/julysystems/appx/AppXRenderDataInputStream;)V
    .locals 5
    .param p1, "is"    # Lcom/julysystems/appx/AppXRenderDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/julysystems/appx/AppXRenderInstruction;->instructionId:I

    .line 53
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readByte()B

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 54
    .local v0, "attributeCount":I
    shr-int/lit8 v1, v0, 0x7

    .line 55
    .local v1, "isTwoByteRep":I
    and-int/lit8 v3, v0, 0x7f

    iput v3, p0, Lcom/julysystems/appx/AppXRenderInstruction;->attrCount:I

    .line 56
    iget v3, p0, Lcom/julysystems/appx/AppXRenderInstruction;->attrCount:I

    new-array v3, v3, [Lcom/julysystems/appx/AppXRenderAttribute;

    iput-object v3, p0, Lcom/julysystems/appx/AppXRenderInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderAttribute;

    .line 58
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget v3, p0, Lcom/julysystems/appx/AppXRenderInstruction;->attrCount:I

    if-lt v2, v3, :cond_0

    .line 61
    return-void

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/julysystems/appx/AppXRenderInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderAttribute;

    new-instance v4, Lcom/julysystems/appx/AppXRenderAttribute;

    invoke-direct {v4, p1, v1}, Lcom/julysystems/appx/AppXRenderAttribute;-><init>(Lcom/julysystems/appx/AppXRenderDataInputStream;I)V

    aput-object v4, v3, v2

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAttribute(I)Lcom/julysystems/appx/AppXRenderAttribute;
    .locals 2
    .param p1, "attributeId"    # I

    .prologue
    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderAttribute;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 75
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderAttribute;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderAttribute;->getAttributeId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderAttribute;

    aget-object v1, v1, v0

    goto :goto_1

    .line 72
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/julysystems/appx/AppXRenderInstruction;->attrCount:I

    return v0
.end method

.method public getColor(III)I
    .locals 5
    .param p1, "attrR"    # I
    .param p2, "attrG"    # I
    .param p3, "attrB"    # I

    .prologue
    const/4 v4, 0x0

    .line 159
    invoke-virtual {p0, p1, v4}, Lcom/julysystems/appx/AppXRenderInstruction;->getIntVal(II)I

    move-result v3

    and-int/lit16 v2, v3, 0xff

    .line 160
    .local v2, "r":I
    invoke-virtual {p0, p2, v4}, Lcom/julysystems/appx/AppXRenderInstruction;->getIntVal(II)I

    move-result v3

    and-int/lit16 v1, v3, 0xff

    .line 161
    .local v1, "g":I
    invoke-virtual {p0, p3, v4}, Lcom/julysystems/appx/AppXRenderInstruction;->getIntVal(II)I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 162
    .local v0, "b":I
    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    return v3
.end method

.method public getCoordinate(IFFF)F
    .locals 1
    .param p1, "attributeId"    # I
    .param p2, "defaultVal"    # F
    .param p3, "baseVal"    # F
    .param p4, "contextValue"    # F

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXRenderInstruction;->getAttribute(I)Lcom/julysystems/appx/AppXRenderAttribute;

    move-result-object v0

    .line 101
    .local v0, "attribute":Lcom/julysystems/appx/AppXRenderAttribute;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p3, p2, p4}, Lcom/julysystems/appx/AppXRenderAttribute;->getCoordinate(FFF)F

    move-result p2

    .line 103
    .end local p2    # "defaultVal":F
    :cond_0
    return p2
.end method

.method public getDimension(IFF)F
    .locals 1
    .param p1, "attributeId"    # I
    .param p2, "defaultVal"    # F
    .param p3, "baseVal"    # F

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXRenderInstruction;->getAttribute(I)Lcom/julysystems/appx/AppXRenderAttribute;

    move-result-object v0

    .line 124
    .local v0, "attribute":Lcom/julysystems/appx/AppXRenderAttribute;
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p2, p3}, Lcom/julysystems/appx/AppXRenderAttribute;->getDimension(FF)F

    move-result p2

    .line 127
    .end local p2    # "defaultVal":F
    :cond_0
    return p2
.end method

.method public getInnerRenderBlock()Lcom/julysystems/appx/AppXRenderRenderBlock;
    .locals 2

    .prologue
    .line 79
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/julysystems/appx/AppXRenderInstruction;->getAttribute(I)Lcom/julysystems/appx/AppXRenderAttribute;

    move-result-object v0

    .line 80
    .local v0, "attribute":Lcom/julysystems/appx/AppXRenderAttribute;
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/julysystems/appx/AppXRenderAttribute;->getInnerRenderBlock()Lcom/julysystems/appx/AppXRenderRenderBlock;

    move-result-object v1

    .line 82
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstructionId()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/julysystems/appx/AppXRenderInstruction;->instructionId:I

    return v0
.end method

.method public getIntAttr(II)I
    .locals 2
    .param p1, "attrId"    # I
    .param p2, "defaultVal"    # I

    .prologue
    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderInstruction;->getAttributeCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 172
    return p2

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderAttribute;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderAttribute;->getAttributeId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderAttribute;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderAttribute;->getIntAttr()I

    move-result p2

    .line 167
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIntVal(II)I
    .locals 1
    .param p1, "attributeId"    # I
    .param p2, "defaultVal"    # I

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXRenderInstruction;->getAttribute(I)Lcom/julysystems/appx/AppXRenderAttribute;

    move-result-object v0

    .line 87
    .local v0, "attribute":Lcom/julysystems/appx/AppXRenderAttribute;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p2}, Lcom/julysystems/appx/AppXRenderAttribute;->getIntVal(I)I

    move-result p2

    .line 89
    .end local p2    # "defaultVal":I
    :cond_0
    return p2
.end method

.method public getMultiValuedAttribute(Lcom/julysystems/appx/AppXRenderInstruction;IFFLjava/util/Vector;)Ljava/util/Vector;
    .locals 4
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "attrId"    # I
    .param p3, "defaultVal"    # F
    .param p4, "baseVal"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "IFF",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    .local p5, "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderInstruction;->getAttributeCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    move-object v1, p5

    .line 138
    .end local p5    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .local v1, "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_1
    return-object v1

    .line 132
    .end local v1    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local p5    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p1, Lcom/julysystems/appx/AppXRenderInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderAttribute;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderAttribute;->getAttributeId()I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 133
    iget-object v2, p1, Lcom/julysystems/appx/AppXRenderInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderAttribute;

    aget-object v2, v2, v0

    invoke-virtual {v2, p3, p4, p5}, Lcom/julysystems/appx/AppXRenderAttribute;->getMultiValuedAttribute(FFLjava/util/Vector;)Ljava/util/Vector;

    move-result-object p5

    .line 134
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderInstruction;->getAttributeCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v2, p1, Lcom/julysystems/appx/AppXRenderInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderAttribute;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderAttribute;->getAttributeId()I

    move-result v2

    if-eq v2, p2, :cond_1

    move-object v1, p5

    .line 135
    .end local p5    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v1    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    goto :goto_1

    .line 131
    .end local v1    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local p5    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRectC(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)Lcom/julysystems/appx/AppXRenderRectC;
    .locals 5
    .param p1, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p2, "defaultRect"    # Lcom/julysystems/appx/AppXRenderRectC;

    .prologue
    .line 142
    new-instance v0, Lcom/julysystems/appx/AppXRenderRectC;

    invoke-direct {v0}, Lcom/julysystems/appx/AppXRenderRectC;-><init>()V

    .line 143
    .local v0, "rect":Lcom/julysystems/appx/AppXRenderRectC;
    const/4 v1, 0x1

    iget v2, p1, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    iget v3, p2, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/julysystems/appx/AppXRenderInstruction;->getCoordinate(IFFF)F

    move-result v1

    iput v1, v0, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    .line 144
    const/4 v1, 0x2

    iget v2, p1, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    iget v3, p2, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/julysystems/appx/AppXRenderInstruction;->getCoordinate(IFFF)F

    move-result v1

    iput v1, v0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    .line 145
    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v2

    invoke-virtual {p2}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v3

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/julysystems/appx/AppXRenderInstruction;->getCoordinate(IFFF)F

    move-result v1

    iput v1, v0, Lcom/julysystems/appx/AppXRenderRectC;->right:F

    .line 146
    const/4 v1, 0x4

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v2

    invoke-virtual {p2}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v3

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/julysystems/appx/AppXRenderInstruction;->getCoordinate(IFFF)F

    move-result v1

    iput v1, v0, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 147
    return-object v0
.end method

.method public getRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5
    .param p1, "ctxRect"    # Landroid/graphics/RectF;
    .param p2, "defaultRect"    # Landroid/graphics/RectF;

    .prologue
    .line 150
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 151
    .local v0, "rect":Landroid/graphics/RectF;
    const/4 v1, 0x1

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/julysystems/appx/AppXRenderInstruction;->getCoordinate(IFFF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 152
    const/4 v1, 0x2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/julysystems/appx/AppXRenderInstruction;->getCoordinate(IFFF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 153
    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/julysystems/appx/AppXRenderInstruction;->getCoordinate(IFFF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 154
    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/julysystems/appx/AppXRenderInstruction;->getCoordinate(IFFF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 155
    return-object v0
.end method

.method public getStaticlayout(Lcom/julysystems/appx/AppXRenderRenderBlock;F)Landroid/text/StaticLayout;
    .locals 19
    .param p1, "renderBlock"    # Lcom/julysystems/appx/AppXRenderRenderBlock;
    .param p2, "width"    # F

    .prologue
    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/julysystems/appx/AppXRenderInstruction;->sl:Landroid/text/StaticLayout;

    if-nez v2, :cond_3

    .line 213
    const/16 v2, 0xa

    const-string v3, "left"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 214
    .local v10, "alignment":Ljava/lang/String;
    const/4 v2, 0x5

    const-string v3, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 215
    .local v18, "text":Ljava/lang/String;
    const/4 v2, 0x6

    const-string v3, "#000000"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 216
    .local v12, "color":Ljava/lang/String;
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    .line 217
    .local v13, "colorVal":I
    const/4 v2, 0x7

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderRenderBlock;->getFontResource(Lcom/julysystems/appx/AppXRenderInstruction;I)Lcom/julysystems/appx/AppXRenderFont;

    move-result-object v14

    .line 220
    .local v14, "font":Lcom/julysystems/appx/AppXRenderFont;
    const/16 v2, 0x11

    const-string v3, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 223
    .local v15, "shadowColor":Ljava/lang/String;
    const/16 v16, 0x3e7

    .line 224
    .local v16, "shadowOffsetX":I
    const/16 v17, 0x3e7

    .line 225
    .local v17, "shadowOffsetY":I
    const/16 v11, 0x3e7

    .line 226
    .local v11, "blur":I
    if-eqz v15, :cond_0

    const-string v2, ""

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    const/16 v2, 0x12

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getIntAttr(II)I

    move-result v16

    .line 228
    const/16 v2, 0x13

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getIntAttr(II)I

    move-result v17

    .line 229
    const/16 v2, 0x14

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getIntAttr(II)I

    move-result v11

    .line 231
    :cond_0
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 232
    .local v4, "textPaint":Landroid/text/TextPaint;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v14}, Lcom/julysystems/appx/AppXRenderRenderBlock;->setFont(Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderFont;)V

    .line 233
    const/16 v2, 0x3e7

    if-eq v11, v2, :cond_4

    .line 234
    invoke-virtual {v4, v11}, Landroid/text/TextPaint;->setColor(I)V

    .line 237
    :goto_0
    const/16 v2, 0x3e7

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3e7

    move/from16 v0, v17

    if-eq v0, v2, :cond_1

    .line 238
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v16

    int-to-float v3, v0

    move/from16 v0, v17

    int-to-float v5, v0

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v2, v3, v5, v7}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 239
    :cond_1
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 240
    .local v6, "align":Landroid/text/Layout$Alignment;
    const-string v2, "right"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 241
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 245
    :cond_2
    :goto_1
    new-instance v2, Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    move/from16 v0, p2

    float-to-int v5, v0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/julysystems/appx/AppXRenderInstruction;->sl:Landroid/text/StaticLayout;

    .line 247
    .end local v4    # "textPaint":Landroid/text/TextPaint;
    .end local v6    # "align":Landroid/text/Layout$Alignment;
    .end local v10    # "alignment":Ljava/lang/String;
    .end local v11    # "blur":I
    .end local v12    # "color":Ljava/lang/String;
    .end local v13    # "colorVal":I
    .end local v14    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .end local v15    # "shadowColor":Ljava/lang/String;
    .end local v16    # "shadowOffsetX":I
    .end local v17    # "shadowOffsetY":I
    .end local v18    # "text":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/julysystems/appx/AppXRenderInstruction;->sl:Landroid/text/StaticLayout;

    return-object v2

    .line 236
    .restart local v4    # "textPaint":Landroid/text/TextPaint;
    .restart local v10    # "alignment":Ljava/lang/String;
    .restart local v11    # "blur":I
    .restart local v12    # "color":Ljava/lang/String;
    .restart local v13    # "colorVal":I
    .restart local v14    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .restart local v15    # "shadowColor":Ljava/lang/String;
    .restart local v16    # "shadowOffsetX":I
    .restart local v17    # "shadowOffsetY":I
    .restart local v18    # "text":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4, v13}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 242
    .restart local v6    # "align":Landroid/text/Layout$Alignment;
    :cond_5
    const-string v2, "center"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_1
.end method

.method public getText(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "attributeId"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXRenderInstruction;->getAttribute(I)Lcom/julysystems/appx/AppXRenderAttribute;

    move-result-object v0

    .line 94
    .local v0, "attribute":Lcom/julysystems/appx/AppXRenderAttribute;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p2}, Lcom/julysystems/appx/AppXRenderAttribute;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 96
    .end local p2    # "defaultVal":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public getTextLayout(Lcom/julysystems/appx/AppXRenderRenderBlock;ZF)Landroid/text/Layout;
    .locals 19
    .param p1, "renderBlock"    # Lcom/julysystems/appx/AppXRenderRenderBlock;
    .param p2, "wrap"    # Z
    .param p3, "width"    # F

    .prologue
    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/julysystems/appx/AppXRenderInstruction;->txtLayout:Landroid/text/Layout;

    if-nez v2, :cond_3

    .line 176
    const/16 v2, 0xa

    const-string v5, "left"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 177
    .local v10, "alignment":Ljava/lang/String;
    const/4 v2, 0x5

    const-string v5, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 178
    .local v18, "text":Ljava/lang/String;
    const/4 v2, 0x6

    const-string v5, "#000000"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 179
    .local v12, "color":Ljava/lang/String;
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    .line 180
    .local v13, "colorVal":I
    const/4 v2, 0x7

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderRenderBlock;->getFontResource(Lcom/julysystems/appx/AppXRenderInstruction;I)Lcom/julysystems/appx/AppXRenderFont;

    move-result-object v14

    .line 182
    .local v14, "font":Lcom/julysystems/appx/AppXRenderFont;
    const/16 v2, 0x11

    const-string v5, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 183
    .local v15, "shadowColor":Ljava/lang/String;
    const/16 v16, 0x3e7

    .line 184
    .local v16, "shadowOffsetX":I
    const/16 v17, 0x3e7

    .line 185
    .local v17, "shadowOffsetY":I
    const/16 v11, 0x3e7

    .line 186
    .local v11, "blur":I
    if-eqz v15, :cond_0

    const-string v2, ""

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    const/16 v2, 0x12

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/julysystems/appx/AppXRenderInstruction;->getIntAttr(II)I

    move-result v16

    .line 188
    const/16 v2, 0x13

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/julysystems/appx/AppXRenderInstruction;->getIntAttr(II)I

    move-result v17

    .line 189
    const/16 v2, 0x14

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/julysystems/appx/AppXRenderInstruction;->getIntAttr(II)I

    move-result v11

    .line 191
    :cond_0
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 192
    .local v4, "textPaint":Landroid/text/TextPaint;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v14}, Lcom/julysystems/appx/AppXRenderRenderBlock;->setFont(Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderFont;)V

    .line 193
    const/16 v2, 0x3e7

    if-eq v11, v2, :cond_4

    .line 194
    invoke-virtual {v4, v11}, Landroid/text/TextPaint;->setColor(I)V

    .line 197
    :goto_0
    const/16 v2, 0x3e7

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3e7

    move/from16 v0, v17

    if-eq v0, v2, :cond_1

    .line 198
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v16

    int-to-float v5, v0

    move/from16 v0, v17

    int-to-float v7, v0

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v2, v5, v7, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 200
    :cond_1
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 201
    .local v6, "align":Landroid/text/Layout$Alignment;
    const-string v2, "right"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 202
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 205
    :cond_2
    :goto_1
    const/4 v2, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 206
    .local v3, "seq":Ljava/lang/CharSequence;
    new-instance v2, Landroid/text/StaticLayout;

    move/from16 v0, p3

    float-to-int v5, v0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/julysystems/appx/AppXRenderInstruction;->txtLayout:Landroid/text/Layout;

    .line 208
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "textPaint":Landroid/text/TextPaint;
    .end local v6    # "align":Landroid/text/Layout$Alignment;
    .end local v10    # "alignment":Ljava/lang/String;
    .end local v11    # "blur":I
    .end local v12    # "color":Ljava/lang/String;
    .end local v13    # "colorVal":I
    .end local v14    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .end local v15    # "shadowColor":Ljava/lang/String;
    .end local v16    # "shadowOffsetX":I
    .end local v17    # "shadowOffsetY":I
    .end local v18    # "text":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/julysystems/appx/AppXRenderInstruction;->txtLayout:Landroid/text/Layout;

    return-object v2

    .line 196
    .restart local v4    # "textPaint":Landroid/text/TextPaint;
    .restart local v10    # "alignment":Ljava/lang/String;
    .restart local v11    # "blur":I
    .restart local v12    # "color":Ljava/lang/String;
    .restart local v13    # "colorVal":I
    .restart local v14    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .restart local v15    # "shadowColor":Ljava/lang/String;
    .restart local v16    # "shadowOffsetX":I
    .restart local v17    # "shadowOffsetY":I
    .restart local v18    # "text":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4, v13}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 203
    .restart local v6    # "align":Landroid/text/Layout$Alignment;
    :cond_5
    const-string v2, "center"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 204
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_1
.end method

.method public getXCoordinate(Landroid/graphics/RectF;)F
    .locals 4
    .param p1, "ctxRect"    # Landroid/graphics/RectF;

    .prologue
    .line 115
    const/4 v0, 0x1

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getCoordinate(IFFF)F

    move-result v0

    return v0
.end method

.method public getXCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F
    .locals 4
    .param p1, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;

    .prologue
    .line 107
    const/4 v0, 0x1

    iget v1, p1, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    iget v2, p1, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getCoordinate(IFFF)F

    move-result v0

    return v0
.end method

.method public getYCoordinate(Landroid/graphics/RectF;)F
    .locals 4
    .param p1, "ctxRect"    # Landroid/graphics/RectF;

    .prologue
    .line 119
    const/4 v0, 0x2

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getCoordinate(IFFF)F

    move-result v0

    return v0
.end method

.method public getYCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F
    .locals 4
    .param p1, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;

    .prologue
    .line 111
    const/4 v0, 0x2

    iget v1, p1, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    iget v2, p1, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getCoordinate(IFFF)F

    move-result v0

    return v0
.end method
