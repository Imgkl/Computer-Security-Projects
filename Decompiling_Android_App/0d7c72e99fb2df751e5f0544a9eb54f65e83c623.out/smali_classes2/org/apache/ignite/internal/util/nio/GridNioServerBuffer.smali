.class public Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;
.super Ljava/lang/Object;
.source "GridNioServerBuffer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private cnt:I

.field private data:[B

.field private msgSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x4

    iput v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->cnt:I

    return-void
.end method


# virtual methods
.method public data()[B
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->data:[B

    return-object v0
.end method

.method public isFilled()Z
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->cnt:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->cnt:I

    iget v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->msgSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Ljava/nio/ByteBuffer;)[B
    .locals 7
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 71
    iget v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->cnt:I

    if-gez v4, :cond_4

    .line 72
    :goto_0
    iget v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->cnt:I

    if-gez v4, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    iget v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->msgSize:I

    shl-int/lit8 v4, v4, 0x8

    iput v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->msgSize:I

    .line 75
    iget v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->msgSize:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    iput v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->msgSize:I

    .line 72
    iget v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->cnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->cnt:I

    goto :goto_0

    .line 78
    :cond_0
    iget v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->cnt:I

    if-gez v4, :cond_2

    .line 115
    :cond_1
    :goto_1
    return-object v0

    .line 82
    :cond_2
    iget v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->msgSize:I

    if-gtz v4, :cond_3

    .line 83
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid message size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->msgSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 85
    :cond_3
    iget v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->msgSize:I

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->data:[B

    .line 88
    :cond_4
    sget-boolean v4, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->$assertionsDisabled:Z

    if-nez v4, :cond_5

    iget v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->msgSize:I

    if-gtz v4, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 89
    :cond_5
    sget-boolean v4, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->$assertionsDisabled:Z

    if-nez v4, :cond_6

    iget v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->cnt:I

    if-gez v4, :cond_6

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 91
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 94
    .local v3, "remaining":I
    if-lez v3, :cond_7

    .line 95
    iget v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->msgSize:I

    iget v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->cnt:I

    sub-int v2, v4, v5

    .line 98
    .local v2, "missing":I
    if-lez v2, :cond_7

    .line 99
    if-ge v2, v3, :cond_8

    move v1, v2

    .line 101
    .local v1, "len":I
    :goto_2
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->data:[B

    iget v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->cnt:I

    invoke-virtual {p1, v4, v5, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 103
    iget v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->cnt:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->cnt:I

    .line 107
    .end local v1    # "len":I
    .end local v2    # "missing":I
    :cond_7
    iget v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->cnt:I

    iget v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->msgSize:I

    if-ne v4, v5, :cond_1

    .line 108
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->data:[B

    .line 110
    .local v0, "data0":[B
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->reset()V

    goto :goto_1

    .end local v0    # "data0":[B
    .restart local v2    # "missing":I
    :cond_8
    move v1, v3

    .line 99
    goto :goto_2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->msgSize:I

    .line 43
    const/4 v0, -0x4

    iput v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->cnt:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->data:[B

    .line 45
    return-void
.end method
