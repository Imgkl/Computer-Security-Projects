.class Lcom/julysystems/appx/AppXRenderAttribute;
.super Ljava/lang/Object;
.source "AppXRenderAttribute.java"


# static fields
.field private static final attributeNames:[Ljava/lang/String;


# instance fields
.field final AttributeTypeCoordinate:I

.field final AttributeTypeDimension:I

.field final AttributeTypeFloat:I

.field final AttributeTypeInnerRenderBlock:I

.field final AttributeTypeInt:I

.field final AttributeTypeResource:I

.field final AttributeTypeShort:I

.field final AttributeTypeString:I

.field private final attributeId:I

.field private final attributeType:I

.field private floatVal:F

.field private innerRenderBlock:Lcom/julysystems/appx/AppXRenderRenderBlock;

.field private intVal:I

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "innerBlock"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "x"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "y"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "height"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "color"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "font"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "url"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bgcolor"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "align"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lineThickness"

    aput-object v2, v0, v1

    sput-object v0, Lcom/julysystems/appx/AppXRenderAttribute;->attributeNames:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/julysystems/appx/AppXRenderDataInputStream;I)V
    .locals 5
    .param p1, "is"    # Lcom/julysystems/appx/AppXRenderDataInputStream;
    .param p2, "isTwoByteRep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v3, p0, Lcom/julysystems/appx/AppXRenderAttribute;->AttributeTypeString:I

    .line 11
    const/4 v2, 0x1

    iput v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->AttributeTypeResource:I

    .line 12
    const/4 v2, 0x2

    iput v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->AttributeTypeInnerRenderBlock:I

    .line 13
    const/4 v2, 0x3

    iput v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->AttributeTypeCoordinate:I

    .line 14
    const/4 v2, 0x4

    iput v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->AttributeTypeDimension:I

    .line 15
    const/16 v2, 0x63

    iput v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->AttributeTypeFloat:I

    .line 16
    const/16 v2, 0x64

    iput v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->AttributeTypeInt:I

    .line 17
    const/16 v2, 0x65

    iput v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->AttributeTypeShort:I

    .line 21
    iput-object v4, p0, Lcom/julysystems/appx/AppXRenderAttribute;->text:Ljava/lang/String;

    .line 22
    const/4 v2, 0x0

    iput v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->floatVal:F

    .line 23
    iput v3, p0, Lcom/julysystems/appx/AppXRenderAttribute;->intVal:I

    .line 24
    iput-object v4, p0, Lcom/julysystems/appx/AppXRenderAttribute;->innerRenderBlock:Lcom/julysystems/appx/AppXRenderRenderBlock;

    .line 27
    if-nez p2, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readByte()B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 29
    .local v0, "attributeIdAndType":I
    shr-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->attributeId:I

    .line 30
    and-int/lit8 v2, v0, 0x7

    iput v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->attributeType:I

    .line 35
    .end local v0    # "attributeIdAndType":I
    :goto_0
    iget v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->attributeType:I

    sparse-switch v2, :sswitch_data_0

    .line 62
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readLength()I

    move-result v1

    .line 63
    .local v1, "length":I
    int-to-long v2, v1

    invoke-virtual {p1, v2, v3}, Lcom/julysystems/appx/AppXRenderDataInputStream;->skip(J)J

    .line 66
    .end local v1    # "length":I
    :goto_1
    return-void

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readByte()B

    move-result v2

    iput v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->attributeId:I

    .line 33
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readByte()B

    move-result v2

    iput v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->attributeType:I

    goto :goto_0

    .line 37
    :sswitch_0
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->text:Ljava/lang/String;

    goto :goto_1

    .line 40
    :sswitch_1
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readShort()S

    move-result v2

    iput v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->intVal:I

    goto :goto_1

    .line 43
    :sswitch_2
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readLength()I

    .line 44
    new-instance v2, Lcom/julysystems/appx/AppXRenderRenderBlock;

    invoke-direct {v2, p1}, Lcom/julysystems/appx/AppXRenderRenderBlock;-><init>(Lcom/julysystems/appx/AppXRenderDataInputStream;)V

    iput-object v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->innerRenderBlock:Lcom/julysystems/appx/AppXRenderRenderBlock;

    goto :goto_1

    .line 47
    :sswitch_3
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readShort()S

    move-result v2

    iput v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->intVal:I

    goto :goto_1

    .line 50
    :sswitch_4
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readShort()S

    move-result v2

    iput v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->intVal:I

    goto :goto_1

    .line 53
    :sswitch_5
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->floatVal:F

    goto :goto_1

    .line 56
    :sswitch_6
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->intVal:I

    goto :goto_1

    .line 59
    :sswitch_7
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readShort()S

    move-result v2

    iput v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->intVal:I

    goto :goto_1

    .line 35
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x63 -> :sswitch_5
        0x64 -> :sswitch_6
        0x65 -> :sswitch_7
    .end sparse-switch
.end method


# virtual methods
.method public getAttributeId()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/julysystems/appx/AppXRenderAttribute;->attributeId:I

    return v0
.end method

.method public getCoordinate(FFF)F
    .locals 8
    .param p1, "defaultVal"    # F
    .param p2, "baseVal"    # F
    .param p3, "contextValue"    # F

    .prologue
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 110
    iget v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->attributeType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 111
    iget v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->intVal:I

    and-int/lit8 v0, v2, 0x3

    .line 112
    .local v0, "mask":I
    iget v2, p0, Lcom/julysystems/appx/AppXRenderAttribute;->intVal:I

    shr-int/lit8 v1, v2, 0x2

    .line 113
    .local v1, "value":I
    packed-switch v0, :pswitch_data_0

    .line 124
    .end local v0    # "mask":I
    .end local v1    # "value":I
    .end local p1    # "defaultVal":F
    :cond_0
    :goto_0
    return p1

    .line 115
    .restart local v0    # "mask":I
    .restart local v1    # "value":I
    .restart local p1    # "defaultVal":F
    :pswitch_0
    float-to-double v2, p2

    int-to-float v4, v1

    mul-float/2addr v4, p3

    float-to-double v4, v4

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float p1, v2

    goto :goto_0

    .line 117
    :pswitch_1
    int-to-float v2, v1

    add-float p1, p2, v2

    goto :goto_0

    .line 119
    :pswitch_2
    int-to-float v2, v1

    mul-float/2addr v2, p3

    float-to-double v2, v2

    div-double/2addr v2, v6

    double-to-float p1, v2

    goto :goto_0

    .line 121
    :pswitch_3
    int-to-float p1, v1

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDimension(FF)F
    .locals 8
    .param p1, "defaultVal"    # F
    .param p2, "baseVal"    # F

    .prologue
    .line 128
    iget v3, p0, Lcom/julysystems/appx/AppXRenderAttribute;->attributeType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 129
    iget v3, p0, Lcom/julysystems/appx/AppXRenderAttribute;->intVal:I

    and-int/lit8 v0, v3, 0x3

    .line 130
    .local v0, "mask":I
    iget v3, p0, Lcom/julysystems/appx/AppXRenderAttribute;->intVal:I

    shr-int/lit8 v2, v3, 0x2

    .line 131
    .local v2, "value":I
    packed-switch v0, :pswitch_data_0

    .end local v0    # "mask":I
    .end local v2    # "value":I
    :cond_0
    move v1, p1

    .line 144
    :cond_1
    :goto_0
    return v1

    .line 133
    .restart local v0    # "mask":I
    .restart local v2    # "value":I
    :pswitch_0
    int-to-float v3, v2

    mul-float/2addr v3, p2

    float-to-double v4, v3

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 134
    .local v1, "val":F
    if-gez v2, :cond_1

    .line 135
    add-float/2addr v1, p2

    goto :goto_0

    .line 139
    .end local v1    # "val":F
    :pswitch_1
    if-gez v2, :cond_2

    .line 140
    int-to-float v3, v2

    add-float v1, p2, v3

    goto :goto_0

    .line 141
    :cond_2
    int-to-float v1, v2

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getInnerRenderBlock()Lcom/julysystems/appx/AppXRenderRenderBlock;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderAttribute;->innerRenderBlock:Lcom/julysystems/appx/AppXRenderRenderBlock;

    return-object v0
.end method

.method public getIntAttr()I
    .locals 2

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "value":I
    iget v1, p0, Lcom/julysystems/appx/AppXRenderAttribute;->attributeType:I

    sparse-switch v1, :sswitch_data_0

    .line 200
    const/4 v0, 0x0

    .line 203
    :goto_0
    return v0

    .line 188
    :sswitch_0
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderAttribute;->text:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 189
    goto :goto_0

    .line 191
    :sswitch_1
    iget v1, p0, Lcom/julysystems/appx/AppXRenderAttribute;->floatVal:F

    float-to-int v0, v1

    .line 192
    goto :goto_0

    .line 194
    :sswitch_2
    iget v0, p0, Lcom/julysystems/appx/AppXRenderAttribute;->intVal:I

    .line 195
    goto :goto_0

    .line 197
    :sswitch_3
    iget v0, p0, Lcom/julysystems/appx/AppXRenderAttribute;->intVal:I

    .line 198
    goto :goto_0

    .line 186
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x63 -> :sswitch_1
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
    .end sparse-switch
.end method

.method public getIntVal(I)I
    .locals 4
    .param p1, "defaultVal"    # I

    .prologue
    .line 78
    :try_start_0
    iget v1, p0, Lcom/julysystems/appx/AppXRenderAttribute;->attributeType:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    sparse-switch v1, :sswitch_data_0

    .line 94
    .end local p1    # "defaultVal":I
    :goto_0
    return p1

    .line 81
    .restart local p1    # "defaultVal":I
    :sswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderAttribute;->text:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result p1

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Inside getIntVal"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderAttribute;->text:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int p1, v1

    goto :goto_0

    .line 87
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :sswitch_1
    iget v1, p0, Lcom/julysystems/appx/AppXRenderAttribute;->floatVal:F

    float-to-int p1, v1

    goto :goto_0

    .line 89
    :sswitch_2
    iget p1, p0, Lcom/julysystems/appx/AppXRenderAttribute;->intVal:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 91
    :catch_1
    move-exception v0

    .line 92
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attribute get int val : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x63 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method public getMultiValuedAttribute(FFLjava/util/Vector;)Ljava/util/Vector;
    .locals 8
    .param p1, "defaultVal"    # F
    .param p2, "baseVal"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
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
    .local p3, "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/high16 v5, 0x42c80000    # 100.0f

    .line 207
    iget v4, p0, Lcom/julysystems/appx/AppXRenderAttribute;->attributeType:I

    sparse-switch v4, :sswitch_data_0

    .line 259
    :goto_0
    return-object p3

    .line 209
    :sswitch_0
    iget-object v4, p0, Lcom/julysystems/appx/AppXRenderAttribute;->text:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    :sswitch_1
    iget v4, p0, Lcom/julysystems/appx/AppXRenderAttribute;->floatVal:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 215
    :sswitch_2
    iget v4, p0, Lcom/julysystems/appx/AppXRenderAttribute;->intVal:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 218
    :sswitch_3
    iget v4, p0, Lcom/julysystems/appx/AppXRenderAttribute;->intVal:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 221
    :sswitch_4
    iget v4, p0, Lcom/julysystems/appx/AppXRenderAttribute;->intVal:I

    and-int/lit8 v2, v4, 0x3

    .line 222
    .local v2, "mask":I
    iget v4, p0, Lcom/julysystems/appx/AppXRenderAttribute;->intVal:I

    shr-int/lit8 v3, v4, 0x2

    .line 223
    .local v3, "value":I
    const/4 v0, 0x0

    .line 224
    .local v0, "coordinate":F
    packed-switch v2, :pswitch_data_0

    .line 238
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 226
    :pswitch_0
    int-to-float v4, v3

    mul-float/2addr v4, p1

    div-float/2addr v4, v5

    add-float v0, p2, v4

    .line 227
    goto :goto_1

    .line 229
    :pswitch_1
    int-to-float v4, v3

    add-float v0, p2, v4

    .line 230
    goto :goto_1

    .line 232
    :pswitch_2
    int-to-float v4, v3

    mul-float/2addr v4, p1

    div-float v0, v4, v5

    .line 233
    goto :goto_1

    .line 235
    :pswitch_3
    int-to-float v0, v3

    goto :goto_1

    .line 242
    .end local v0    # "coordinate":F
    .end local v2    # "mask":I
    .end local v3    # "value":I
    :sswitch_5
    iget v4, p0, Lcom/julysystems/appx/AppXRenderAttribute;->intVal:I

    and-int/lit8 v2, v4, 0x3

    .line 243
    .restart local v2    # "mask":I
    iget v4, p0, Lcom/julysystems/appx/AppXRenderAttribute;->intVal:I

    shr-int/lit8 v3, v4, 0x2

    .line 244
    .restart local v3    # "value":I
    const/4 v1, 0x0

    .line 245
    .local v1, "dimension":F
    packed-switch v2, :pswitch_data_1

    .line 253
    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 247
    :pswitch_4
    int-to-float v4, v3

    mul-float/2addr v4, p1

    float-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 248
    goto :goto_2

    .line 250
    :pswitch_5
    int-to-float v1, v3

    goto :goto_2

    .line 207
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x63 -> :sswitch_1
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
    .end sparse-switch

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 245
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getResourceID()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/julysystems/appx/AppXRenderAttribute;->intVal:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderAttribute;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderAttribute;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    .end local p1    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultVal":Ljava/lang/String;
    :cond_0
    iget-object p1, p0, Lcom/julysystems/appx/AppXRenderAttribute;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 149
    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget v3, p0, Lcom/julysystems/appx/AppXRenderAttribute;->attributeId:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/julysystems/appx/AppXRenderAttribute;->attributeId:I

    sget-object v4, Lcom/julysystems/appx/AppXRenderAttribute;->attributeNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    sget-object v3, Lcom/julysystems/appx/AppXRenderAttribute;->attributeNames:[Ljava/lang/String;

    iget v4, p0, Lcom/julysystems/appx/AppXRenderAttribute;->attributeId:I

    aget-object v0, v3, v4

    .line 151
    .local v0, "attributeName":Ljava/lang/String;
    :goto_0
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 152
    iget v3, p0, Lcom/julysystems/appx/AppXRenderAttribute;->attributeType:I

    packed-switch v3, :pswitch_data_0

    .line 174
    const-string v3, "unknownType_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/julysystems/appx/AppXRenderAttribute;->attributeType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 177
    :goto_1
    :pswitch_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    .end local v0    # "attributeName":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :goto_2
    return-object v3

    .line 150
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "attribute_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/julysystems/appx/AppXRenderAttribute;->attributeId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 154
    .restart local v0    # "attributeName":Ljava/lang/String;
    :pswitch_1
    const-string v3, "text:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/julysystems/appx/AppXRenderAttribute;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 178
    .end local v0    # "attributeName":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception in reading attribute : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " invalidAttribute_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/julysystems/appx/AppXRenderAttribute;->attributeId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/julysystems/appx/AppXRenderAttribute;->attributeType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 157
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "attributeName":Ljava/lang/String;
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    :pswitch_2
    :try_start_1
    const-string v3, "resourceId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/julysystems/appx/AppXRenderAttribute;->intVal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 160
    :pswitch_3
    const-string v3, "float:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/julysystems/appx/AppXRenderAttribute;->floatVal:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 163
    :pswitch_4
    const-string v3, "int:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/julysystems/appx/AppXRenderAttribute;->intVal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 166
    :pswitch_5
    const-string v3, "short:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/julysystems/appx/AppXRenderAttribute;->intVal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 171
    :pswitch_6
    const-string v3, "relativeFloat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/julysystems/appx/AppXRenderAttribute;->floatVal:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
