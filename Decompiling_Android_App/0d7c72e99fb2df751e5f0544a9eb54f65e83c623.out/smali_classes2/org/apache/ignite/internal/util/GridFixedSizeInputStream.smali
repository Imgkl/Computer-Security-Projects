.class public Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;
.super Ljava/io/InputStream;
.source "GridFixedSizeInputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final in:Ljava/io/InputStream;

.field private size:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;->in:Ljava/io/InputStream;

    .line 38
    iput-wide p2, p0, Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;->size:J

    .line 39
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;->size:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;->size:J

    long-to-int v0, v0

    goto :goto_0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 73
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    .line 83
    :goto_0
    return v0

    .line 76
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 78
    .local v0, "res":I
    if-ne v0, v1, :cond_1

    .line 79
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;->size:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " more bytes to read."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_1
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;->size:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;->size:J

    goto :goto_0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, -0x1

    .line 43
    sget-boolean v2, Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    array-length v2, p1

    if-le p3, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 45
    :cond_0
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;->size:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    move v0, v1

    .line 63
    :cond_1
    return v0

    .line 48
    :cond_2
    int-to-long v2, p3

    iget-wide v4, p0, Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;->size:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 50
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;->size:J

    long-to-int p3, v2

    .line 52
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 54
    .local v0, "res":I
    if-ne v0, v1, :cond_4

    .line 55
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;->size:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " more bytes to read."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_4
    sget-boolean v1, Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    if-gez v0, :cond_5

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 59
    :cond_5
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;->size:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;->size:J

    .line 61
    sget-boolean v1, Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-wide v2, p0, Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;->size:J

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    iget-wide v2, p0, Lorg/apache/ignite/internal/util/GridFixedSizeInputStream;->size:J

    invoke-direct {v1, v2, v3}, Ljava/lang/AssertionError;-><init>(J)V

    throw v1
.end method
