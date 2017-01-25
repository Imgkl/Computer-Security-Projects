.class Lcom/julysystems/appx/AppXRenderScreenCastAttribute;
.super Ljava/lang/Object;
.source "AppXRenderScreenCastAttribute.java"


# static fields
.field private static final attributeNames:[Ljava/lang/String;


# instance fields
.field final ScreenCastAttributeTypeCoordinate:I

.field final ScreenCastAttributeTypeDimension:I

.field final ScreenCastAttributeTypeFloat:I

.field final ScreenCastAttributeTypeInnerScreenCastBlock:I

.field final ScreenCastAttributeTypeInt:I

.field final ScreenCastAttributeTypeResource:I

.field final ScreenCastAttributeTypeShort:I

.field final ScreenCastAttributeTypeString:I

.field private final attributeId:I

.field private final attributeType:I

.field private floatVal:F

.field private innerScreenCastBlock:Lcom/julysystems/appx/AppXRenderScreenCastBlock;

.field private intVal:I

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
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

    sput-object v0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->attributeNames:[Ljava/lang/String;

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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->ScreenCastAttributeTypeString:I

    .line 12
    const/4 v2, 0x1

    iput v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->ScreenCastAttributeTypeResource:I

    .line 13
    const/4 v2, 0x2

    iput v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->ScreenCastAttributeTypeInnerScreenCastBlock:I

    .line 14
    const/4 v2, 0x3

    iput v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->ScreenCastAttributeTypeCoordinate:I

    .line 15
    const/4 v2, 0x4

    iput v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->ScreenCastAttributeTypeDimension:I

    .line 16
    const/16 v2, 0x63

    iput v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->ScreenCastAttributeTypeFloat:I

    .line 17
    const/16 v2, 0x64

    iput v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->ScreenCastAttributeTypeInt:I

    .line 18
    const/16 v2, 0x65

    iput v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->ScreenCastAttributeTypeShort:I

    .line 22
    iput-object v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->text:Ljava/lang/String;

    .line 23
    const/4 v2, 0x0

    iput v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->floatVal:F

    .line 24
    iput v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->intVal:I

    .line 25
    iput-object v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->innerScreenCastBlock:Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    .line 28
    if-nez p2, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readByte()B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 30
    .local v0, "attributeIdAndType":I
    shr-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->attributeId:I

    .line 31
    and-int/lit8 v2, v0, 0x7

    iput v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->attributeType:I

    .line 36
    .end local v0    # "attributeIdAndType":I
    :goto_0
    iget v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->attributeType:I

    sparse-switch v2, :sswitch_data_0

    .line 63
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readLength()I

    move-result v1

    .line 64
    .local v1, "length":I
    int-to-long v2, v1

    invoke-virtual {p1, v2, v3}, Lcom/julysystems/appx/AppXRenderDataInputStream;->skip(J)J

    .line 67
    .end local v1    # "length":I
    :goto_1
    return-void

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readByte()B

    move-result v2

    iput v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->attributeId:I

    .line 34
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readByte()B

    move-result v2

    iput v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->attributeType:I

    goto :goto_0

    .line 38
    :sswitch_0
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->text:Ljava/lang/String;

    goto :goto_1

    .line 41
    :sswitch_1
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readShort()S

    move-result v2

    iput v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->intVal:I

    goto :goto_1

    .line 44
    :sswitch_2
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readLength()I

    .line 45
    new-instance v2, Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    invoke-direct {v2, p1}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;-><init>(Lcom/julysystems/appx/AppXRenderDataInputStream;)V

    iput-object v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->innerScreenCastBlock:Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    goto :goto_1

    .line 48
    :sswitch_3
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readShort()S

    move-result v2

    iput v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->intVal:I

    goto :goto_1

    .line 51
    :sswitch_4
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readShort()S

    move-result v2

    iput v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->intVal:I

    goto :goto_1

    .line 54
    :sswitch_5
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->floatVal:F

    goto :goto_1

    .line 57
    :sswitch_6
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->intVal:I

    goto :goto_1

    .line 60
    :sswitch_7
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readShort()S

    move-result v2

    iput v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->intVal:I

    goto :goto_1

    .line 36
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
.method public getCoordinate(FFF)F
    .locals 10
    .param p1, "defaultVal"    # F
    .param p2, "baseVal"    # F
    .param p3, "contextValue"    # F

    .prologue
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 111
    iget v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->attributeType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 112
    iget v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->intVal:I

    and-int/lit8 v1, v3, 0x3

    .line 113
    .local v1, "mask":I
    iget v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->intVal:I

    shr-int/lit8 v2, v3, 0x2

    .line 114
    .local v2, "value":I
    packed-switch v1, :pswitch_data_0

    .end local v1    # "mask":I
    .end local v2    # "value":I
    :cond_0
    move v0, p1

    .line 134
    :cond_1
    :goto_0
    return v0

    .line 117
    .restart local v1    # "mask":I
    .restart local v2    # "value":I
    :pswitch_0
    float-to-double v4, p2

    int-to-float v3, v2

    mul-float/2addr v3, p3

    float-to-double v6, v3

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v0, v4

    goto :goto_0

    .line 120
    :pswitch_1
    int-to-float v3, v2

    add-float v0, p2, v3

    goto :goto_0

    .line 123
    :pswitch_2
    int-to-float v3, v2

    mul-float/2addr v3, p3

    float-to-double v4, v3

    div-double/2addr v4, v8

    double-to-float v0, v4

    .line 124
    .local v0, "absPer":F
    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 125
    add-float/2addr v0, p3

    goto :goto_0

    .line 129
    .end local v0    # "absPer":F
    :pswitch_3
    if-gez v2, :cond_2

    .line 130
    int-to-float v3, v2

    add-float v0, p3, v3

    goto :goto_0

    .line 131
    :cond_2
    int-to-float v0, v2

    goto :goto_0

    .line 114
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
    .line 138
    iget v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->attributeType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 139
    iget v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->intVal:I

    and-int/lit8 v0, v3, 0x3

    .line 140
    .local v0, "mask":I
    iget v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->intVal:I

    shr-int/lit8 v2, v3, 0x2

    .line 141
    .local v2, "value":I
    packed-switch v0, :pswitch_data_0

    .end local v0    # "mask":I
    .end local v2    # "value":I
    :cond_0
    move v1, p1

    .line 154
    :cond_1
    :goto_0
    return v1

    .line 143
    .restart local v0    # "mask":I
    .restart local v2    # "value":I
    :pswitch_0
    int-to-float v3, v2

    mul-float/2addr v3, p2

    float-to-double v4, v3

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 144
    .local v1, "val":F
    if-gez v2, :cond_1

    .line 145
    add-float/2addr v1, p2

    goto :goto_0

    .line 149
    .end local v1    # "val":F
    :pswitch_1
    if-gez v2, :cond_2

    .line 150
    int-to-float v3, v2

    add-float v1, p2, v3

    goto :goto_0

    .line 151
    :cond_2
    int-to-float v1, v2

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getInnerScreenCastBlock()Lcom/julysystems/appx/AppXRenderScreenCastBlock;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->innerScreenCastBlock:Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    return-object v0
.end method

.method public getIntAttr()I
    .locals 2

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "value":I
    iget v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->attributeType:I

    sparse-switch v1, :sswitch_data_0

    .line 210
    const/4 v0, 0x0

    .line 213
    :goto_0
    return v0

    .line 198
    :sswitch_0
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->text:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 199
    goto :goto_0

    .line 201
    :sswitch_1
    iget v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->floatVal:F

    float-to-int v0, v1

    .line 202
    goto :goto_0

    .line 204
    :sswitch_2
    iget v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->intVal:I

    .line 205
    goto :goto_0

    .line 207
    :sswitch_3
    iget v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->intVal:I

    .line 208
    goto :goto_0

    .line 196
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
    .line 79
    :try_start_0
    iget v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->attributeType:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    sparse-switch v1, :sswitch_data_0

    .line 95
    .end local p1    # "defaultVal":I
    :goto_0
    return p1

    .line 82
    .restart local p1    # "defaultVal":I
    :sswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->text:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result p1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Inside getIntVal"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->text:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int p1, v1

    goto :goto_0

    .line 88
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :sswitch_1
    iget v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->floatVal:F

    float-to-int p1, v1

    goto :goto_0

    .line 90
    :sswitch_2
    iget p1, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->intVal:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    .line 93
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ScreenCastAttribute get int val : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x63 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method public getMultiValuedScreenCastAttribute(FFLjava/util/List;)Ljava/util/List;
    .locals 8
    .param p1, "defaultVal"    # F
    .param p2, "baseVal"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
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
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/high16 v5, 0x42c80000    # 100.0f

    .line 217
    iget v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->attributeType:I

    sparse-switch v4, :sswitch_data_0

    .line 269
    :goto_0
    return-object p3

    .line 219
    :sswitch_0
    iget-object v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->text:Ljava/lang/String;

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    :sswitch_1
    iget v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->floatVal:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    :sswitch_2
    iget v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->intVal:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    :sswitch_3
    iget v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->intVal:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :sswitch_4
    iget v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->intVal:I

    and-int/lit8 v2, v4, 0x3

    .line 232
    .local v2, "mask":I
    iget v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->intVal:I

    shr-int/lit8 v3, v4, 0x2

    .line 233
    .local v3, "value":I
    const/4 v0, 0x0

    .line 234
    .local v0, "coordinate":F
    packed-switch v2, :pswitch_data_0

    .line 248
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    :pswitch_0
    int-to-float v4, v3

    mul-float/2addr v4, p1

    div-float/2addr v4, v5

    add-float v0, p2, v4

    .line 237
    goto :goto_1

    .line 239
    :pswitch_1
    int-to-float v4, v3

    add-float v0, p2, v4

    .line 240
    goto :goto_1

    .line 242
    :pswitch_2
    int-to-float v4, v3

    mul-float/2addr v4, p1

    div-float v0, v4, v5

    .line 243
    goto :goto_1

    .line 245
    :pswitch_3
    int-to-float v0, v3

    goto :goto_1

    .line 252
    .end local v0    # "coordinate":F
    .end local v2    # "mask":I
    .end local v3    # "value":I
    :sswitch_5
    iget v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->intVal:I

    and-int/lit8 v2, v4, 0x3

    .line 253
    .restart local v2    # "mask":I
    iget v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->intVal:I

    shr-int/lit8 v3, v4, 0x2

    .line 254
    .restart local v3    # "value":I
    const/4 v1, 0x0

    .line 255
    .local v1, "dimension":F
    packed-switch v2, :pswitch_data_1

    .line 263
    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    :pswitch_4
    int-to-float v4, v3

    mul-float/2addr v4, p1

    float-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 258
    goto :goto_2

    .line 260
    :pswitch_5
    int-to-float v1, v3

    goto :goto_2

    .line 217
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

    .line 234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 255
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getResourceID()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->intVal:I

    return v0
.end method

.method public getScreenCastAttributeId()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->attributeId:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    .end local p1    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultVal":Ljava/lang/String;
    :cond_0
    iget-object p1, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 159
    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 160
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->attributeId:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->attributeId:I

    sget-object v4, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->attributeNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    sget-object v3, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->attributeNames:[Ljava/lang/String;

    iget v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->attributeId:I

    aget-object v0, v3, v4

    .line 161
    .local v0, "attributeName":Ljava/lang/String;
    :goto_0
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 162
    iget v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->attributeType:I

    packed-switch v3, :pswitch_data_0

    .line 184
    const-string v3, "unknownType_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->attributeType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 187
    :goto_1
    :pswitch_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    .end local v0    # "attributeName":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :goto_2
    return-object v3

    .line 160
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "attribute_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->attributeId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 164
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

    iget-object v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 188
    .end local v0    # "attributeName":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 189
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

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " invalidScreenCastAttribute_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->attributeId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->attributeType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 167
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

    iget v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->intVal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 170
    :pswitch_3
    const-string v3, "float:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->floatVal:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 173
    :pswitch_4
    const-string v3, "int:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->intVal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 176
    :pswitch_5
    const-string v3, "short:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->intVal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 181
    :pswitch_6
    const-string v3, "relativeFloat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->floatVal:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 162
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
