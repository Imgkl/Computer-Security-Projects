.class Lcom/julysystems/appx/AppXRenderOldAttribute;
.super Ljava/lang/Object;
.source "AppXRenderOldAttribute.java"


# instance fields
.field private final attributeId:I

.field private final attributeType:I

.field private floatVal:F

.field private innerRenderBlock:Lcom/julysystems/appx/AppXRenderOldRenderBlock;

.field private intVal:I

.field private text:Ljava/lang/String;


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
    const/4 v3, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v3, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->text:Ljava/lang/String;

    .line 10
    const/4 v2, 0x0

    iput v2, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->floatVal:F

    .line 11
    const/4 v2, 0x0

    iput v2, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->intVal:I

    .line 12
    iput-object v3, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->innerRenderBlock:Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    .line 15
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readByte()B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 16
    .local v0, "attributeIdAndType":I
    shr-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->attributeId:I

    .line 17
    and-int/lit8 v2, v0, 0x7

    iput v2, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->attributeType:I

    .line 18
    iget v2, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->attributeType:I

    packed-switch v2, :pswitch_data_0

    .line 46
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readLength()I

    move-result v1

    .line 47
    .local v1, "length":I
    int-to-long v2, v1

    invoke-virtual {p1, v2, v3}, Lcom/julysystems/appx/AppXRenderDataInputStream;->skip(J)J

    .line 50
    .end local v1    # "length":I
    :goto_0
    return-void

    .line 20
    :pswitch_0
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->text:Ljava/lang/String;

    goto :goto_0

    .line 23
    :pswitch_1
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readShort()S

    move-result v2

    iput v2, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->intVal:I

    goto :goto_0

    .line 26
    :pswitch_2
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->floatVal:F

    goto :goto_0

    .line 29
    :pswitch_3
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->intVal:I

    goto :goto_0

    .line 32
    :pswitch_4
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readShort()S

    move-result v2

    iput v2, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->intVal:I

    goto :goto_0

    .line 36
    :pswitch_5
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readLength()I

    .line 38
    new-instance v2, Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    invoke-direct {v2, p1}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;-><init>(Lcom/julysystems/appx/AppXRenderDataInputStream;)V

    iput-object v2, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->innerRenderBlock:Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    goto :goto_0

    .line 43
    :pswitch_6
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->floatVal:F

    goto :goto_0

    .line 18
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public getAttributeId()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->attributeId:I

    return v0
.end method

.method public getCoordinate(FF)F
    .locals 2
    .param p1, "baseVal"    # F
    .param p2, "defaultVal"    # F

    .prologue
    .line 112
    iget v0, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->attributeType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 113
    invoke-virtual {p0, p2}, Lcom/julysystems/appx/AppXRenderOldAttribute;->getFloatVal(F)F

    move-result v0

    add-float/2addr v0, p1

    .line 114
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/julysystems/appx/AppXRenderOldAttribute;->getFloatVal(F)F

    move-result v0

    goto :goto_0
.end method

.method public getFloatVal(F)F
    .locals 2
    .param p1, "defaultVal"    # F

    .prologue
    .line 80
    :try_start_0
    iget v1, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->attributeType:I

    packed-switch v1, :pswitch_data_0

    .line 93
    .end local p1    # "defaultVal":F
    :goto_0
    :pswitch_0
    return p1

    .line 82
    .restart local p1    # "defaultVal":F
    :pswitch_1
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->text:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    goto :goto_0

    .line 85
    :pswitch_2
    iget p1, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->floatVal:F

    goto :goto_0

    .line 88
    :pswitch_3
    iget v1, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->intVal:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float p1, v1

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getInnerRenderBlock()Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->innerRenderBlock:Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    return-object v0
.end method

.method public getIntVal(I)I
    .locals 2
    .param p1, "defaultVal"    # I

    .prologue
    .line 62
    :try_start_0
    iget v1, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->attributeType:I

    packed-switch v1, :pswitch_data_0

    .line 75
    .end local p1    # "defaultVal":I
    :goto_0
    :pswitch_0
    return p1

    .line 64
    .restart local p1    # "defaultVal":I
    :pswitch_1
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->text:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int p1, v1

    goto :goto_0

    .line 67
    :pswitch_2
    iget v1, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->floatVal:F

    float-to-int p1, v1

    goto :goto_0

    .line 70
    :pswitch_3
    iget p1, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->intVal:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getResourceID()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->intVal:I

    return v0
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    .end local p1    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultVal":Ljava/lang/String;
    :cond_0
    iget-object p1, p0, Lcom/julysystems/appx/AppXRenderOldAttribute;->text:Ljava/lang/String;

    goto :goto_0
.end method
