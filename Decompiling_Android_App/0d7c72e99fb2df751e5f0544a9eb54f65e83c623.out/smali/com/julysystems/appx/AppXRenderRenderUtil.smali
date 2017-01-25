.class public Lcom/julysystems/appx/AppXRenderRenderUtil;
.super Ljava/lang/Object;
.source "AppXRenderRenderUtil.java"


# static fields
.field static TAG:Ljava/lang/String;

.field public static imageResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static imageTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field public static localImageMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static renderBlocks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation
.end field

.field private static renderUtil:Lcom/julysystems/appx/AppXRenderRenderUtil;

.field public static resource:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    const-string v0, "RenderUtil"

    sput-object v0, Lcom/julysystems/appx/AppXRenderRenderUtil;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppXRenderRenderUtil;->resource:Ljava/util/Vector;

    .line 28
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppXRenderRenderUtil;->renderBlocks:Ljava/util/Vector;

    .line 29
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageTable:Ljava/util/Hashtable;

    .line 30
    sput-object v1, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    .line 31
    sput-object v1, Lcom/julysystems/appx/AppXRenderRenderUtil;->renderUtil:Lcom/julysystems/appx/AppXRenderRenderUtil;

    .line 32
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppXRenderRenderUtil;->localImageMap:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private createFont(Lcom/julysystems/appx/AppXRenderDataInputStream;ILjava/util/Vector;)V
    .locals 5
    .param p1, "is"    # Lcom/julysystems/appx/AppXRenderDataInputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderDataInputStream;",
            "I",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p3, "tempRes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readFloat()F

    move-result v3

    float-to-int v2, v3

    .line 183
    .local v2, "fontSize":I
    add-int/lit8 v3, p2, -0x4

    invoke-virtual {p1, v3}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readString(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "fontFamilyName":Ljava/lang/String;
    new-instance v3, Lcom/julysystems/appx/AppXRenderFont;

    int-to-float v4, v2

    invoke-direct {v3, v4, v1}, Lcom/julysystems/appx/AppXRenderFont;-><init>(FLjava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v1    # "fontFamilyName":Ljava/lang/String;
    .end local v2    # "fontSize":I
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/julysystems/appx/AppXRenderRenderUtil;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createImageResource(Lcom/julysystems/appx/AppXRenderDataInputStream;IILjava/util/Vector;)V
    .locals 4
    .param p1, "is"    # Lcom/julysystems/appx/AppXRenderDataInputStream;
    .param p2, "length"    # I
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderDataInputStream;",
            "II",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    .local p4, "tempRes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    invoke-virtual {p1, p2}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readString(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "imgUrl":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "imgRes":Ljava/lang/String;
    invoke-virtual {p4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public static getImageId(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7
    .param p0, "imageName"    # Ljava/lang/String;

    .prologue
    .line 309
    const/4 v1, 0x0

    .line 311
    .local v1, "imageId":Ljava/lang/Integer;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "@"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "imgURL":Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 313
    .local v3, "pos":I
    if-lez v3, :cond_0

    .line 314
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 315
    :cond_0
    sget-object v4, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 316
    sget-object v4, Lcom/julysystems/appx/AppXConstants;->drawablePackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/julysystems/appx/AppXRenderRenderUtil;->loadImageResources(Ljava/lang/String;)V

    .line 317
    :cond_1
    sget-object v4, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v2    # "imgURL":Ljava/lang/String;
    .end local v3    # "pos":I
    :goto_0
    return-object v1

    .line 318
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getOldRenderBlock(Lorg/w3c/dom/Element;)Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    .locals 8
    .param p0, "el"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v7, 0x0

    .line 260
    const-string v6, "render"

    invoke-static {p0, v6}, Lcom/julysystems/appx/AppXXMLUtils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 261
    .local v5, "node":Lorg/w3c/dom/Element;
    const-string v6, "blockId"

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 263
    .local v1, "blockId":I
    :try_start_0
    sget-object v6, Lcom/julysystems/appx/AppXRenderRenderUtil;->renderUtil:Lcom/julysystems/appx/AppXRenderRenderUtil;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/julysystems/appx/AppXRenderRenderUtil;->renderBlocks:Ljava/util/Vector;

    if-nez v6, :cond_1

    :cond_0
    move-object v6, v7

    .line 272
    :goto_0
    return-object v6

    .line 265
    :cond_1
    sget-object v6, Lcom/julysystems/appx/AppXRenderRenderUtil;->renderBlocks:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 266
    .local v3, "data":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 267
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v2, Lcom/julysystems/appx/AppXRenderDataInputStream;

    invoke-direct {v2, v0}, Lcom/julysystems/appx/AppXRenderDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 268
    .local v2, "cdis":Lcom/julysystems/appx/AppXRenderDataInputStream;
    new-instance v6, Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    invoke-direct {v6, v2}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;-><init>(Lcom/julysystems/appx/AppXRenderDataInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "cdis":Lcom/julysystems/appx/AppXRenderDataInputStream;
    .end local v3    # "data":[B
    :catch_0
    move-exception v4

    .line 270
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 272
    goto :goto_0
.end method

.method public static getRenderBlock(ILcom/julysystems/appx/AppXPageData;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .param p0, "blockId"    # I
    .param p1, "pageData"    # Lcom/julysystems/appx/AppXPageData;
    .param p2, "rVersion"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 207
    const-wide/16 v4, 0x0

    .line 208
    .local v4, "renderVersion":D
    if-eqz p2, :cond_0

    .line 210
    :try_start_0
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 215
    :cond_0
    :goto_0
    const-wide v8, 0x3ff3333333333333L    # 1.2

    cmpl-double v6, v4, v8

    if-ltz v6, :cond_3

    .line 217
    if-eqz p1, :cond_1

    :try_start_1
    sget-object v6, Lcom/julysystems/appx/AppXRenderRenderUtil;->renderUtil:Lcom/julysystems/appx/AppXRenderRenderUtil;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/julysystems/appx/AppXRenderRenderUtil;->renderBlocks:Ljava/util/Vector;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v6, :cond_2

    :cond_1
    move-object v6, v7

    .line 237
    :goto_1
    return-object v6

    .line 211
    :catch_0
    move-exception v3

    .line 212
    .local v3, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/julysystems/appx/AppXRenderRenderUtil;->TAG:Ljava/lang/String;

    const-string v8, "Error in getting the RenderVersion"

    invoke-static {v6, v8}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    sget-object v6, Lcom/julysystems/appx/AppXRenderRenderUtil;->renderBlocks:Ljava/util/Vector;

    invoke-virtual {v6, p0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 220
    .local v2, "data":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 221
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Lcom/julysystems/appx/AppXRenderDataInputStream;

    invoke-direct {v1, v0}, Lcom/julysystems/appx/AppXRenderDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 222
    .local v1, "cdis":Lcom/julysystems/appx/AppXRenderDataInputStream;
    new-instance v6, Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    invoke-direct {v6, v1}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;-><init>(Lcom/julysystems/appx/AppXRenderDataInputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 223
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "cdis":Lcom/julysystems/appx/AppXRenderDataInputStream;
    .end local v2    # "data":[B
    :catch_1
    move-exception v3

    .line 224
    .restart local v3    # "e":Ljava/lang/Exception;
    sget-object v6, Lcom/julysystems/appx/AppXRenderRenderUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unable to create render block for block id "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v3}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    move-object v6, v7

    .line 237
    goto :goto_1

    .line 228
    :cond_3
    if-eqz p1, :cond_4

    :try_start_3
    sget-object v6, Lcom/julysystems/appx/AppXRenderRenderUtil;->renderUtil:Lcom/julysystems/appx/AppXRenderRenderUtil;

    if-eqz v6, :cond_4

    sget-object v6, Lcom/julysystems/appx/AppXRenderRenderUtil;->renderBlocks:Ljava/util/Vector;

    if-nez v6, :cond_5

    :cond_4
    move-object v6, v7

    .line 229
    goto :goto_1

    .line 230
    :cond_5
    sget-object v6, Lcom/julysystems/appx/AppXRenderRenderUtil;->renderBlocks:Ljava/util/Vector;

    invoke-virtual {v6, p0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 231
    .restart local v2    # "data":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 232
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Lcom/julysystems/appx/AppXRenderDataInputStream;

    invoke-direct {v1, v0}, Lcom/julysystems/appx/AppXRenderDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 233
    .restart local v1    # "cdis":Lcom/julysystems/appx/AppXRenderDataInputStream;
    new-instance v6, Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    invoke-direct {v6, v1}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;-><init>(Lcom/julysystems/appx/AppXRenderDataInputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 234
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "cdis":Lcom/julysystems/appx/AppXRenderDataInputStream;
    .end local v2    # "data":[B
    :catch_2
    move-exception v6

    goto :goto_2
.end method

.method public static getRenderUtil()Lcom/julysystems/appx/AppXRenderRenderUtil;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/julysystems/appx/AppXRenderRenderUtil;->renderUtil:Lcom/julysystems/appx/AppXRenderRenderUtil;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/julysystems/appx/AppXRenderRenderUtil;

    invoke-direct {v0}, Lcom/julysystems/appx/AppXRenderRenderUtil;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppXRenderRenderUtil;->renderUtil:Lcom/julysystems/appx/AppXRenderRenderUtil;

    .line 40
    :cond_0
    sget-object v0, Lcom/julysystems/appx/AppXRenderRenderUtil;->renderUtil:Lcom/julysystems/appx/AppXRenderRenderUtil;

    return-object v0
.end method

.method public static getScreenCastBlock(Lorg/w3c/dom/Element;)Lcom/julysystems/appx/AppXRenderScreenCastBlock;
    .locals 14
    .param p0, "el"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v8, 0x0

    .line 242
    :try_start_0
    const-string v7, "render"

    invoke-static {p0, v7}, Lcom/julysystems/appx/AppXXMLUtils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 243
    .local v5, "node":Lorg/w3c/dom/Element;
    const-string v7, "blockId"

    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 244
    .local v1, "blockId":I
    const-string v7, "renderVersion"

    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 245
    .local v6, "renderVersion":F
    float-to-double v10, v6

    const-wide v12, 0x3ff3333333333333L    # 1.2

    cmpl-double v7, v10, v12

    if-ltz v7, :cond_2

    .line 246
    sget-object v7, Lcom/julysystems/appx/AppXRenderRenderUtil;->renderUtil:Lcom/julysystems/appx/AppXRenderRenderUtil;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/julysystems/appx/AppXRenderRenderUtil;->renderBlocks:Ljava/util/Vector;

    if-nez v7, :cond_1

    :cond_0
    move-object v7, v8

    .line 256
    .end local v1    # "blockId":I
    .end local v5    # "node":Lorg/w3c/dom/Element;
    .end local v6    # "renderVersion":F
    :goto_0
    return-object v7

    .line 248
    .restart local v1    # "blockId":I
    .restart local v5    # "node":Lorg/w3c/dom/Element;
    .restart local v6    # "renderVersion":F
    :cond_1
    sget-object v7, Lcom/julysystems/appx/AppXRenderRenderUtil;->renderBlocks:Ljava/util/Vector;

    invoke-virtual {v7, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 249
    .local v3, "data":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 250
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v2, Lcom/julysystems/appx/AppXRenderDataInputStream;

    invoke-direct {v2, v0}, Lcom/julysystems/appx/AppXRenderDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 251
    .local v2, "cdis":Lcom/julysystems/appx/AppXRenderDataInputStream;
    new-instance v7, Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    invoke-direct {v7, v2}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;-><init>(Lcom/julysystems/appx/AppXRenderDataInputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "blockId":I
    .end local v2    # "cdis":Lcom/julysystems/appx/AppXRenderDataInputStream;
    .end local v3    # "data":[B
    .end local v5    # "node":Lorg/w3c/dom/Element;
    .end local v6    # "renderVersion":F
    :catch_0
    move-exception v4

    .line 254
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v7, v8

    .line 256
    goto :goto_0
.end method

.method private static loadCustomFont()V
    .locals 9

    .prologue
    .line 70
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/julysystems/appx/AppXConstants;->fontMap:Ljava/util/HashMap;

    .line 71
    sget-object v4, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 72
    sget-object v4, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "ttfList":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 74
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-lt v1, v4, :cond_1

    .line 85
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 75
    .restart local v1    # "i":I
    :cond_1
    aget-object v4, v2, v1

    if-eqz v4, :cond_2

    .line 76
    sget-object v4, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fonts/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 77
    .local v3, "typeface":Landroid/graphics/Typeface;
    sget-object v4, Lcom/julysystems/appx/AppXConstants;->fontMap:Ljava/util/HashMap;

    aget-object v5, v2, v1

    const/4 v6, 0x0

    aget-object v7, v2, v1

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/julysystems/appx/AppXRenderRenderUtil;->TAG:Ljava/lang/String;

    const-string v5, "Error in LoadCustomFont"

    invoke-static {v4, v5}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static loadImageResources(Ljava/lang/String;)V
    .locals 12
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 45
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".R"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 47
    .local v3, "rClass":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v5

    .line 48
    .local v5, "subClasses":[Ljava/lang/Class;
    const/4 v4, 0x0

    .line 49
    .local v4, "rDrawable":Ljava/lang/Class;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".drawable"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 50
    array-length v9, v5

    move v8, v7

    :goto_0
    if-lt v8, v9, :cond_1

    .line 56
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 57
    .local v1, "drawables":[Ljava/lang/reflect/Field;
    sget-object v8, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    if-nez v8, :cond_0

    .line 58
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    .line 59
    :cond_0
    array-length v8, v1

    :goto_2
    if-lt v7, v8, :cond_3

    .line 62
    invoke-static {}, Lcom/julysystems/appx/AppXRenderRenderUtil;->loadCustomFont()V

    .line 66
    .end local v1    # "drawables":[Ljava/lang/reflect/Field;
    .end local v3    # "rClass":Ljava/lang/Class;
    .end local v4    # "rDrawable":Ljava/lang/Class;
    .end local v5    # "subClasses":[Ljava/lang/Class;
    :goto_3
    return-void

    .line 50
    .restart local v3    # "rClass":Ljava/lang/Class;
    .restart local v4    # "rDrawable":Ljava/lang/Class;
    .restart local v5    # "subClasses":[Ljava/lang/Class;
    :cond_1
    aget-object v6, v5, v8

    .line 51
    .local v6, "subclass":Ljava/lang/Class;
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 52
    move-object v4, v6

    .line 53
    goto :goto_1

    .line 50
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 59
    .end local v6    # "subclass":Ljava/lang/Class;
    .restart local v1    # "drawables":[Ljava/lang/reflect/Field;
    :cond_3
    aget-object v0, v1, v7

    .line 60
    .local v0, "dr":Ljava/lang/reflect/Field;
    sget-object v9, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 63
    .end local v0    # "dr":Ljava/lang/reflect/Field;
    .end local v1    # "drawables":[Ljava/lang/reflect/Field;
    .end local v3    # "rClass":Ljava/lang/Class;
    .end local v4    # "rDrawable":Ljava/lang/Class;
    .end local v5    # "subClasses":[Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 64
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/julysystems/appx/AppXRenderRenderUtil;->TAG:Ljava/lang/String;

    const-string v8, "Error in LoadImageResources"

    invoke-static {v7, v8}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private loadRenderBlock(Lcom/julysystems/appx/AppXRenderDataInputStream;ILjava/util/Vector;)V
    .locals 6
    .param p1, "is"    # Lcom/julysystems/appx/AppXRenderDataInputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderDataInputStream;",
            "I",
            "Ljava/util/Vector",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p3, "tempRbs":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    const/4 v2, 0x0

    .line 142
    .local v2, "pos":I
    :goto_0
    if-lt v2, p2, :cond_0

    .line 153
    return-void

    .line 143
    :cond_0
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readLength()I

    move-result v3

    .line 144
    .local v3, "renderBlockLength":I
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->getLengthBytes()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 145
    new-array v1, v3, [B

    .line 147
    .local v1, "innerData":[B
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_1
    invoke-virtual {p3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "TAG"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private loadResources(Lcom/julysystems/appx/AppXRenderDataInputStream;ILjava/util/Vector;)V
    .locals 6
    .param p1, "is"    # Lcom/julysystems/appx/AppXRenderDataInputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderDataInputStream;",
            "I",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p3, "tempRes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 158
    .local v1, "nextPos":I
    :goto_0
    if-lt v1, p2, :cond_0

    .line 178
    :goto_1
    return-void

    .line 159
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readLength()I

    move-result v2

    .line 160
    .local v2, "resourceLength":I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->getLengthBytes()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 161
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readByte()B

    move-result v4

    and-int/lit16 v3, v4, 0xff

    .line 162
    .local v3, "resourceType":I
    add-int/lit8 v2, v2, -0x1

    .line 163
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 165
    :pswitch_0
    invoke-direct {p0, p1, v2, p3}, Lcom/julysystems/appx/AppXRenderRenderUtil;->createFont(Lcom/julysystems/appx/AppXRenderDataInputStream;ILjava/util/Vector;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    .end local v2    # "resourceLength":I
    .end local v3    # "resourceType":I
    :catch_0
    move-exception v0

    .line 176
    .local v0, "io":Ljava/io/IOException;
    sget-object v4, Lcom/julysystems/appx/AppXRenderRenderUtil;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 168
    .end local v0    # "io":Ljava/io/IOException;
    .restart local v2    # "resourceLength":I
    .restart local v3    # "resourceType":I
    :pswitch_1
    const/4 v4, 0x1

    :try_start_1
    invoke-direct {p0, p1, v2, v4, p3}, Lcom/julysystems/appx/AppXRenderRenderUtil;->createImageResource(Lcom/julysystems/appx/AppXRenderDataInputStream;IILjava/util/Vector;)V

    goto :goto_0

    .line 171
    :pswitch_2
    const/4 v4, 0x2

    invoke-direct {p0, p1, v2, v4, p3}, Lcom/julysystems/appx/AppXRenderRenderUtil;->createImageResource(Lcom/julysystems/appx/AppXRenderDataInputStream;IILjava/util/Vector;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public processHeader(Lcom/julysystems/appx/AppXRenderDataInputStream;)Z
    .locals 12
    .param p1, "is"    # Lcom/julysystems/appx/AppXRenderDataInputStream;

    .prologue
    const/4 v8, 0x0

    .line 88
    const/4 v7, 0x0

    .line 89
    .local v7, "totalLength":I
    const/4 v4, 0x0

    .line 91
    .local v4, "magicNumber":I
    if-eqz p1, :cond_0

    .line 92
    :try_start_0
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 96
    :cond_0
    :goto_0
    sget v9, Lcom/julysystems/appx/AppXConstants;->magicNumber:I

    if-eq v4, v9, :cond_1

    .line 137
    :goto_1
    return v8

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "RenderUtil"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 100
    .local v6, "tempRes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 102
    .local v5, "tempRbs":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    :try_start_1
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readInt()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 103
    .local v3, "headerSize":I
    :goto_2
    if-lt v7, v3, :cond_2

    .line 129
    sget-object v8, Lcom/julysystems/appx/AppXRenderRenderUtil;->renderBlocks:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->clear()V

    .line 130
    sget-object v8, Lcom/julysystems/appx/AppXRenderRenderUtil;->resource:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->clear()V

    .line 131
    sget-object v8, Lcom/julysystems/appx/AppXRenderRenderUtil;->localImageMap:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->clear()V

    .line 133
    sget-object v8, Lcom/julysystems/appx/AppXRenderRenderUtil;->renderBlocks:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 134
    sget-object v8, Lcom/julysystems/appx/AppXRenderRenderUtil;->resource:Ljava/util/Vector;

    invoke-virtual {v8, v6}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 135
    invoke-virtual {v5}, Ljava/util/Vector;->clear()V

    .line 136
    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 137
    const/4 v8, 0x1

    goto :goto_1

    .line 104
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readByte()B

    move-result v9

    and-int/lit16 v0, v9, 0xff

    .line 105
    .local v0, "blockID":I
    add-int/lit8 v7, v7, 0x1

    .line 106
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readLength()I

    move-result v1

    .line 107
    .local v1, "blockLength":I
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->getLengthBytes()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v7, v9

    .line 109
    packed-switch v0, :pswitch_data_0

    .line 119
    int-to-long v10, v1

    invoke-virtual {p1, v10, v11}, Lcom/julysystems/appx/AppXRenderDataInputStream;->skip(J)J

    .line 120
    add-int/2addr v7, v1

    goto :goto_2

    .line 111
    :pswitch_0
    add-int/2addr v7, v1

    .line 112
    invoke-direct {p0, p1, v1, v6}, Lcom/julysystems/appx/AppXRenderRenderUtil;->loadResources(Lcom/julysystems/appx/AppXRenderDataInputStream;ILjava/util/Vector;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 125
    .end local v0    # "blockID":I
    .end local v1    # "blockLength":I
    .end local v3    # "headerSize":I
    :catch_1
    move-exception v2

    .line 126
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v9, Lcom/julysystems/appx/AppXRenderRenderUtil;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 115
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "blockID":I
    .restart local v1    # "blockLength":I
    .restart local v3    # "headerSize":I
    :pswitch_1
    add-int/2addr v7, v1

    .line 116
    :try_start_3
    invoke-direct {p0, p1, v1, v5}, Lcom/julysystems/appx/AppXRenderRenderUtil;->loadRenderBlock(Lcom/julysystems/appx/AppXRenderDataInputStream;ILjava/util/Vector;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
