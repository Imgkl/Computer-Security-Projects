.class public Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "GridByteArrayOutputStream.java"


# instance fields
.field private buf:[B

.field private cnt:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;-><init>(I)V

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;-><init>(II)V

    .line 49
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "size"    # I
    .param p2, "off"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 56
    if-gez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    if-le p2, p1, :cond_1

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->buf:[B

    .line 64
    iput p2, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->cnt:I

    .line 65
    return-void
.end method


# virtual methods
.method public internalArray()[B
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->buf:[B

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->cnt:I

    .line 129
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->cnt:I

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->buf:[B

    iget v1, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->cnt:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const-class v0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I

    .prologue
    .line 73
    iget v1, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->cnt:I

    add-int/lit8 v0, v1, 0x1

    .line 75
    .local v0, "newCnt":I
    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->buf:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 76
    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->buf:[B

    iget-object v2, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->buf:[B

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->buf:[B

    .line 78
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->buf:[B

    iget v2, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->cnt:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 80
    iput v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->cnt:I

    .line 81
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 92
    if-ltz p2, :cond_0

    array-length v1, p1

    if-gt p2, v1, :cond_0

    if-ltz p3, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_0

    add-int v1, p2, p3

    if-gez v1, :cond_1

    .line 93
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 94
    :cond_1
    if-nez p3, :cond_2

    .line 105
    :goto_0
    return-void

    .line 97
    :cond_2
    iget v1, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->cnt:I

    add-int v0, v1, p3

    .line 99
    .local v0, "newCnt":I
    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->buf:[B

    array-length v1, v1

    if-le v0, v1, :cond_3

    .line 100
    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->buf:[B

    iget-object v2, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->buf:[B

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->buf:[B

    .line 102
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->buf:[B

    iget v2, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->cnt:I

    invoke-static {p1, p2, v1, v2, p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayCopy([BI[BII)I

    .line 104
    iput v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->cnt:I

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->cnt:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 117
    return-void
.end method
