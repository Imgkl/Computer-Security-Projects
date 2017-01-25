.class Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
.super Ljava/lang/Object;
.source "AppXRenderScreenCastInstruction.java"


# static fields
.field public static final ScreenCastInstructionButton:I = 0x12

.field public static final ScreenCastInstructionDrawText:I = 0x11

.field public static final ScreenCastInstructionFillColor:I = 0x9

.field public static final ScreenCastInstructionFont:I = 0x1

.field public static final ScreenCastInstructionGradient:I = 0x4

.field public static final ScreenCastInstructionImage:I = 0x2

.field public static final ScreenCastInstructionLabel:I = 0x0

.field public static final ScreenCastInstructionLineToPoint:I = 0x7

.field public static final ScreenCastInstructionLink:I = 0x10

.field public static final ScreenCastInstructionMoveToPoint:I = 0x6

.field public static final ScreenCastInstructionOption:I = 0x17

.field public static final ScreenCastInstructionPadding:I = 0x13

.field public static final ScreenCastInstructionRoundedRect:I = 0x5

.field public static final ScreenCastInstructionSegmentedControl:I = 0x1a

.field public static final ScreenCastInstructionSegmentedSection:I = 0x1b

.field public static final ScreenCastInstructionSelectBox:I = 0x16

.field public static final ScreenCastInstructionSetClip:I = 0x3

.field public static final ScreenCastInstructionStrokeColor:I = 0x8

.field public static final ScreenCastInstructionSubmitButton:I = 0x19

.field public static final ScreenCastInstructionSwitchField:I = 0x18

.field public static final ScreenCastInstructionTab:I = 0xe

.field public static final ScreenCastInstructionTabContainer:I = 0xd

.field public static final ScreenCastInstructionTabData:I = 0xf

.field public static final ScreenCastInstructionTabHeader:I = 0x1d

.field public static final ScreenCastInstructionTable:I = 0xa

.field public static final ScreenCastInstructionTabs:I = 0x1c

.field public static final ScreenCastInstructionTd:I = 0xc

.field public static final ScreenCastInstructionTextArea:I = 0x15

.field public static final ScreenCastInstructionTextBox:I = 0x14

.field public static final ScreenCastInstructionTr:I = 0xb


# instance fields
.field private attrCount:I

.field public final attributes:[Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

.field private drawingArea:Lcom/julysystems/appx/AppXRenderRectC;

.field private image:Landroid/graphics/Bitmap;

.field private final instrId:I

.field private txtLayout:Landroid/text/StaticLayout;


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
    const/4 v3, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->drawingArea:Lcom/julysystems/appx/AppXRenderRectC;

    .line 54
    iput-object v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->image:Landroid/graphics/Bitmap;

    .line 56
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->instrId:I

    .line 57
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readByte()B

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 58
    .local v0, "attributeCount":I
    shr-int/lit8 v1, v0, 0x7

    .line 59
    .local v1, "isTwoByteRep":I
    and-int/lit8 v3, v0, 0x7f

    iput v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->attrCount:I

    .line 60
    iget v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->attrCount:I

    new-array v3, v3, [Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

    iput-object v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

    .line 62
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->attrCount:I

    if-lt v2, v3, :cond_0

    .line 65
    return-void

    .line 63
    :cond_0
    iget-object v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

    new-instance v4, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

    invoke-direct {v4, p1, v1}, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;-><init>(Lcom/julysystems/appx/AppXRenderDataInputStream;I)V

    aput-object v4, v3, v2

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createTextLayout(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderScreenCastBlock;ZF)Landroid/text/StaticLayout;
    .locals 19
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "renderBlock"    # Lcom/julysystems/appx/AppXRenderScreenCastBlock;
    .param p3, "wrap"    # Z
    .param p4, "width"    # F

    .prologue
    .line 168
    const/16 v2, 0xa

    const-string v5, "left"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 169
    .local v10, "alignment":Ljava/lang/String;
    const/4 v2, 0x5

    const-string v5, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 170
    .local v18, "text":Ljava/lang/String;
    const/4 v2, 0x6

    const-string v5, "#000000"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 171
    .local v12, "color":Ljava/lang/String;
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    .line 172
    .local v13, "colorVal":I
    const/4 v2, 0x7

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->getFontResource(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;I)Lcom/julysystems/appx/AppXRenderFont;

    move-result-object v14

    .line 174
    .local v14, "font":Lcom/julysystems/appx/AppXRenderFont;
    const/16 v2, 0x11

    const-string v5, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 175
    .local v15, "shadowColor":Ljava/lang/String;
    const/16 v16, 0x3e7

    .line 176
    .local v16, "shadowOffsetX":I
    const/16 v17, 0x3e7

    .line 177
    .local v17, "shadowOffsetY":I
    const/16 v11, 0x3e7

    .line 178
    .local v11, "blur":I
    if-eqz v15, :cond_0

    const-string v2, ""

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    const/16 v2, 0x12

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getIntAttr(II)I

    move-result v16

    .line 180
    const/16 v2, 0x13

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getIntAttr(II)I

    move-result v17

    .line 181
    const/16 v2, 0x14

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getIntAttr(II)I

    move-result v11

    .line 183
    :cond_0
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 184
    .local v4, "textPaint":Landroid/text/TextPaint;
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v14}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->setFont(Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderFont;)V

    .line 185
    const/16 v2, 0x3e7

    if-eq v11, v2, :cond_3

    .line 186
    invoke-virtual {v4, v11}, Landroid/text/TextPaint;->setColor(I)V

    .line 189
    :goto_0
    const/16 v2, 0x3e7

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3e7

    move/from16 v0, v17

    if-eq v0, v2, :cond_1

    .line 190
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v16

    int-to-float v5, v0

    move/from16 v0, v17

    int-to-float v7, v0

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v2, v5, v7, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 192
    :cond_1
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 193
    .local v6, "align":Landroid/text/Layout$Alignment;
    const-string v2, "right"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 194
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 197
    :cond_2
    :goto_1
    const/4 v2, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 201
    .local v3, "seq":Ljava/lang/CharSequence;
    new-instance v2, Landroid/text/StaticLayout;

    move/from16 v0, p4

    float-to-int v5, v0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->txtLayout:Landroid/text/StaticLayout;

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->txtLayout:Landroid/text/StaticLayout;

    return-object v2

    .line 188
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v6    # "align":Landroid/text/Layout$Alignment;
    :cond_3
    invoke-virtual {v4, v13}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 195
    .restart local v6    # "align":Landroid/text/Layout$Alignment;
    :cond_4
    const-string v2, "center"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_1
.end method

.method public getColor(III)I
    .locals 5
    .param p1, "attrR"    # I
    .param p2, "attrG"    # I
    .param p3, "attrB"    # I

    .prologue
    const/4 v4, 0x0

    .line 152
    invoke-virtual {p0, p1, v4}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getIntVal(II)I

    move-result v3

    and-int/lit16 v2, v3, 0xff

    .line 153
    .local v2, "r":I
    invoke-virtual {p0, p2, v4}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getIntVal(II)I

    move-result v3

    and-int/lit16 v1, v3, 0xff

    .line 154
    .local v1, "g":I
    invoke-virtual {p0, p3, v4}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getIntVal(II)I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 155
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
    .line 104
    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getScreenCastAttribute(I)Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

    move-result-object v0

    .line 105
    .local v0, "attribute":Lcom/julysystems/appx/AppXRenderScreenCastAttribute;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p2, p3, p4}, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->getCoordinate(FFF)F

    move-result p2

    .line 107
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
    .line 119
    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getScreenCastAttribute(I)Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

    move-result-object v0

    .line 120
    .local v0, "attribute":Lcom/julysystems/appx/AppXRenderScreenCastAttribute;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p2, p3}, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->getDimension(FF)F

    move-result p2

    .line 122
    .end local p2    # "defaultVal":F
    :cond_0
    return p2
.end method

.method public getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->drawingArea:Lcom/julysystems/appx/AppXRenderRectC;

    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getInnerScreenCastBlock()Lcom/julysystems/appx/AppXRenderScreenCastBlock;
    .locals 2

    .prologue
    .line 83
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getScreenCastAttribute(I)Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

    move-result-object v0

    .line 84
    .local v0, "attribute":Lcom/julysystems/appx/AppXRenderScreenCastAttribute;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->getInnerScreenCastBlock()Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    move-result-object v1

    .line 86
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstructionId()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->instrId:I

    return v0
.end method

.method public getIntAttr(II)I
    .locals 2
    .param p1, "attrId"    # I
    .param p2, "defaultVal"    # I

    .prologue
    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getScreenCastAttributeCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 164
    return p2

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->getScreenCastAttributeId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->getIntAttr()I

    move-result p2

    .line 159
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIntVal(II)I
    .locals 1
    .param p1, "attributeId"    # I
    .param p2, "defaultVal"    # I

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getScreenCastAttribute(I)Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

    move-result-object v0

    .line 91
    .local v0, "attribute":Lcom/julysystems/appx/AppXRenderScreenCastAttribute;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p2}, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->getIntVal(I)I

    move-result p2

    .line 93
    .end local p2    # "defaultVal":I
    :cond_0
    return p2
.end method

.method public getMultiValuedAttribute(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;IFFLjava/util/List;)Ljava/util/List;
    .locals 4
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .param p2, "attrId"    # I
    .param p3, "defaultVal"    # F
    .param p4, "baseVal"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderScreenCastInstruction;",
            "IFF",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    .local p5, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getScreenCastAttributeCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    move-object v1, p5

    .line 133
    .end local p5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v1

    .line 127
    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p1, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->getScreenCastAttributeId()I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 128
    iget-object v2, p1, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

    aget-object v2, v2, v0

    invoke-virtual {v2, p3, p4, p5}, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->getMultiValuedScreenCastAttribute(FFLjava/util/List;)Ljava/util/List;

    move-result-object p5

    .line 129
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getScreenCastAttributeCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v2, p1, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->getScreenCastAttributeId()I

    move-result v2

    if-eq v2, p2, :cond_1

    move-object v1, p5

    .line 130
    .end local p5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 126
    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5
    .param p1, "ctxRect"    # Landroid/graphics/RectF;
    .param p2, "defaultRect"    # Landroid/graphics/RectF;

    .prologue
    .line 143
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 144
    .local v0, "rect":Landroid/graphics/RectF;
    const/4 v1, 0x1

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getCoordinate(IFFF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 145
    const/4 v1, 0x2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getCoordinate(IFFF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 146
    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getCoordinate(IFFF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 147
    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getCoordinate(IFFF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 148
    return-object v0
.end method

.method public getScreenCastAttribute(I)Lcom/julysystems/appx/AppXRenderScreenCastAttribute;
    .locals 2
    .param p1, "attributeId"    # I

    .prologue
    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 79
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->getScreenCastAttributeId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

    aget-object v1, v1, v0

    goto :goto_1

    .line 76
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getScreenCastAttributeCount()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->attrCount:I

    return v0
.end method

.method public getText(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "attributeId"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getScreenCastAttribute(I)Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

    move-result-object v0

    .line 98
    .local v0, "attribute":Lcom/julysystems/appx/AppXRenderScreenCastAttribute;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p2}, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 100
    .end local p2    # "defaultVal":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public getTextLayout()Landroid/text/StaticLayout;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->txtLayout:Landroid/text/StaticLayout;

    return-object v0
.end method

.method public getXCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F
    .locals 4
    .param p1, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;

    .prologue
    .line 111
    const/4 v0, 0x1

    iget v1, p1, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    iget v2, p1, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getCoordinate(IFFF)F

    move-result v0

    return v0
.end method

.method public getYCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F
    .locals 4
    .param p1, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;

    .prologue
    .line 115
    const/4 v0, 0x2

    iget v1, p1, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    iget v2, p1, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getCoordinate(IFFF)F

    move-result v0

    return v0
.end method

.method public setDrawingArea(Lcom/julysystems/appx/AppXRenderRectC;)V
    .locals 0
    .param p1, "rect"    # Lcom/julysystems/appx/AppXRenderRectC;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->drawingArea:Lcom/julysystems/appx/AppXRenderRectC;

    .line 275
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->image:Landroid/graphics/Bitmap;

    .line 282
    return-void
.end method
