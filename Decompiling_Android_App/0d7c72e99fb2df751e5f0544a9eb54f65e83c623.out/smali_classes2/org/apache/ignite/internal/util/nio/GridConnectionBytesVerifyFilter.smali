.class public Lorg/apache/ignite/internal/util/nio/GridConnectionBytesVerifyFilter;
.super Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;
.source "GridConnectionBytesVerifyFilter.java"


# static fields
.field private static final MAGIC_BUF_KEY:I

.field private static final MAGIC_META_KEY:I


# instance fields
.field private log:Lorg/apache/ignite/IgniteLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->nextUniqueKey()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/util/nio/GridConnectionBytesVerifyFilter;->MAGIC_META_KEY:I

    .line 37
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->nextUniqueKey()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/util/nio/GridConnectionBytesVerifyFilter;->MAGIC_BUF_KEY:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/IgniteLogger;)V
    .locals 1
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 48
    const-string v0, "GridConnectionBytesVerifyFilter"

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridConnectionBytesVerifyFilter;->log:Lorg/apache/ignite/IgniteLogger;

    .line 51
    return-void
.end method


# virtual methods
.method public onExceptionCaught(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "ex"    # Lorg/apache/ignite/IgniteCheckedException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridConnectionBytesVerifyFilter;->proceedExceptionCaught(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V

    .line 66
    return-void
.end method

.method public onMessageReceived(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V
    .locals 9
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 76
    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->accepted()Z

    move-result v6

    if-nez v6, :cond_0

    .line 77
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridConnectionBytesVerifyFilter;->proceedMessageReceived(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V

    .line 123
    :goto_0
    return-void

    .line 82
    :cond_0
    instance-of v6, p2, Ljava/nio/ByteBuffer;

    if-nez v6, :cond_1

    .line 83
    new-instance v5, Lorg/apache/ignite/internal/util/nio/GridNioException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to decode incoming message (message should be a byte buffer, is filter properly placed?): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/internal/util/nio/GridNioException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move-object v0, p2

    .line 86
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 88
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget v6, Lorg/apache/ignite/internal/util/nio/GridConnectionBytesVerifyFilter;->MAGIC_META_KEY:I

    invoke-interface {p1, v6}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->meta(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 90
    .local v2, "magic":Ljava/lang/Integer;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_HEADER:[B

    array-length v7, v7

    if-ge v6, v7, :cond_7

    .line 91
    :cond_2
    sget v6, Lorg/apache/ignite/internal/util/nio/GridConnectionBytesVerifyFilter;->MAGIC_BUF_KEY:I

    invoke-interface {p1, v6}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->meta(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 93
    .local v3, "magicBuf":[B
    if-nez v3, :cond_3

    .line 94
    sget-object v6, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_HEADER:[B

    array-length v6, v6

    new-array v3, v6, [B

    .line 96
    :cond_3
    if-nez v2, :cond_4

    move v4, v5

    .line 98
    .local v4, "magicRead":I
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 100
    .local v1, "cnt":I
    sget-object v6, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_HEADER:[B

    array-length v6, v6

    sub-int/2addr v6, v4

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v0, v3, v4, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 102
    add-int v6, v1, v4

    sget-object v7, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_HEADER:[B

    array-length v7, v7

    if-ge v6, v7, :cond_5

    .line 104
    sget v5, Lorg/apache/ignite/internal/util/nio/GridConnectionBytesVerifyFilter;->MAGIC_META_KEY:I

    add-int v6, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget v5, Lorg/apache/ignite/internal/util/nio/GridConnectionBytesVerifyFilter;->MAGIC_BUF_KEY:I

    invoke-interface {p1, v5, v3}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 96
    .end local v1    # "cnt":I
    .end local v4    # "magicRead":I
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    .line 107
    .restart local v1    # "cnt":I
    .restart local v4    # "magicRead":I
    :cond_5
    sget-object v6, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_HEADER:[B

    sget-object v7, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_HEADER:[B

    array-length v7, v7

    invoke-static {v3, v5, v6, v5, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesEqual([BI[BII)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 109
    sget v5, Lorg/apache/ignite/internal/util/nio/GridConnectionBytesVerifyFilter;->MAGIC_BUF_KEY:I

    invoke-interface {p1, v5}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->removeMeta(I)Ljava/lang/Object;

    .line 110
    sget v5, Lorg/apache/ignite/internal/util/nio/GridConnectionBytesVerifyFilter;->MAGIC_META_KEY:I

    sget-object v6, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_HEADER:[B

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/util/nio/GridConnectionBytesVerifyFilter;->proceedMessageReceived(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 115
    :cond_6
    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 117
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridConnectionBytesVerifyFilter;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown connection detected (is some other software connecting to this Ignite port?) [rmtAddr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", locAddr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    .end local v1    # "cnt":I
    .end local v3    # "magicBuf":[B
    .end local v4    # "magicRead":I
    :cond_7
    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/util/nio/GridConnectionBytesVerifyFilter;->proceedMessageReceived(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onSessionClose(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridConnectionBytesVerifyFilter;->proceedSessionClose(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method public onSessionClosed(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridConnectionBytesVerifyFilter;->proceedSessionClosed(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 61
    return-void
.end method

.method public onSessionIdleTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridConnectionBytesVerifyFilter;->proceedSessionIdleTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 133
    return-void
.end method

.method public onSessionOpened(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridConnectionBytesVerifyFilter;->proceedSessionOpened(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 56
    return-void
.end method

.method public onSessionWrite(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridConnectionBytesVerifyFilter;->proceedSessionWrite(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method public onSessionWriteTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridConnectionBytesVerifyFilter;->proceedSessionWriteTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 138
    return-void
.end method
