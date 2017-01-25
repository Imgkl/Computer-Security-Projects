.class public Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;
.super Ljava/io/InputStream;
.source "GridByteArrayInputStream.java"


# instance fields
.field private buf:[B

.field private cnt:I

.field private mark:I

.field private pos:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "buf"    # [B

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->buf:[B

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->pos:I

    .line 48
    array-length v0, p1

    iput v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->cnt:I

    .line 49
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->buf:[B

    .line 59
    iput p2, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->pos:I

    .line 60
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->cnt:I

    .line 61
    iput p2, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->mark:I

    .line 62
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->cnt:I

    iget v1, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readAheadLimit"    # I

    .prologue
    .line 185
    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->pos:I

    iput v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->mark:I

    .line 186
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3

    .prologue
    .line 77
    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->pos:I

    iget v1, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->cnt:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->buf:[B

    iget v1, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 104
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_2

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 107
    :cond_2
    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->pos:I

    iget v1, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->cnt:I

    if-lt v0, v1, :cond_3

    .line 108
    const/4 v0, -0x1

    .line 120
    :goto_0
    return v0

    .line 110
    :cond_3
    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->pos:I

    add-int/2addr v0, p3

    iget v1, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->cnt:I

    if-le v0, v1, :cond_4

    .line 111
    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->cnt:I

    iget v1, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->pos:I

    sub-int p3, v0, v1

    .line 113
    :cond_4
    if-gtz p3, :cond_5

    .line 114
    const/4 v0, 0x0

    goto :goto_0

    .line 116
    :cond_5
    iget-object v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->buf:[B

    iget v1, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->pos:I

    invoke-static {v0, v1, p1, p2, p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayCopy([BI[BII)I

    .line 118
    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->pos:I

    move v0, p3

    .line 120
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->mark:I

    iput v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->pos:I

    .line 196
    return-void
.end method

.method public skip(J)J
    .locals 7
    .param p1, "n"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 136
    iget v2, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    iget v4, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->cnt:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 137
    iget v2, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->cnt:I

    iget v3, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long p1, v2

    .line 139
    :cond_0
    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    move-wide p1, v0

    .line 144
    .end local p1    # "n":J
    :goto_0
    return-wide p1

    .line 142
    .restart local p1    # "n":J
    :cond_1
    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;->pos:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    const-class v0, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
