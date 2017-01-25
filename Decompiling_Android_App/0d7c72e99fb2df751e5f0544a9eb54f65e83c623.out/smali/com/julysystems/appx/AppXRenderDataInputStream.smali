.class Lcom/julysystems/appx/AppXRenderDataInputStream;
.super Ljava/io/DataInputStream;
.source "AppXRenderDataInputStream.java"


# instance fields
.field cnt:I

.field lengthBytes:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 8
    iput v0, p0, Lcom/julysystems/appx/AppXRenderDataInputStream;->cnt:I

    iput v0, p0, Lcom/julysystems/appx/AppXRenderDataInputStream;->lengthBytes:I

    .line 12
    return-void
.end method


# virtual methods
.method public getLengthBytes()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/julysystems/appx/AppXRenderDataInputStream;->lengthBytes:I

    return v0
.end method

.method public readLength()I
    .locals 5

    .prologue
    .line 15
    const/4 v1, 0x0

    .line 17
    .local v1, "val":I
    :try_start_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readByte()B

    move-result v2

    .line 18
    .local v2, "value":B
    and-int/lit16 v3, v2, 0xc0

    shr-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/julysystems/appx/AppXRenderDataInputStream;->cnt:I

    .line 19
    and-int/lit8 v1, v2, 0x3f

    .line 20
    iget v3, p0, Lcom/julysystems/appx/AppXRenderDataInputStream;->cnt:I

    iput v3, p0, Lcom/julysystems/appx/AppXRenderDataInputStream;->lengthBytes:I

    .line 21
    :goto_0
    iget v3, p0, Lcom/julysystems/appx/AppXRenderDataInputStream;->cnt:I

    if-gtz v3, :cond_0

    .line 28
    .end local v2    # "value":B
    :goto_1
    return v1

    .line 22
    .restart local v2    # "value":B
    :cond_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readByte()B

    move-result v0

    .line 23
    .local v0, "b":I
    shl-int/lit8 v3, v1, 0x8

    and-int/lit16 v4, v0, 0xff

    or-int v1, v3, v4

    .line 24
    iget v3, p0, Lcom/julysystems/appx/AppXRenderDataInputStream;->cnt:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/julysystems/appx/AppXRenderDataInputStream;->cnt:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 26
    .end local v0    # "b":I
    .end local v2    # "value":B
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public readString(I)Ljava/lang/String;
    .locals 5
    .param p1, "maxLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 35
    const/16 v3, 0x400

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/julysystems/appx/AppXRenderDataInputStream;->mark(I)V

    .line 36
    const/4 v2, 0x0

    .line 37
    .local v2, "length":I
    :goto_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readByte()B

    move-result v3

    if-nez v3, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderDataInputStream;->reset()V

    .line 40
    new-array v0, v2, [B

    .line 41
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readFully([B)V

    .line 42
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readByte()B

    .line 48
    .end local v2    # "length":I
    :goto_1
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 53
    .end local v0    # "data":[B
    :goto_2
    return-object v3

    .line 38
    .restart local v2    # "length":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    .end local v2    # "length":I
    :cond_1
    add-int/lit8 v3, p1, -0x1

    new-array v0, v3, [B

    .line 45
    .restart local v0    # "data":[B
    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readFully([B)V

    .line 46
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readByte()B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 49
    .end local v0    # "data":[B
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/io/IOException;
    throw v1

    .line 51
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    const-string v3, ""

    goto :goto_2
.end method
