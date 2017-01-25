.class public Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
.source "GridDistributedTxFinishResponse.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private txId:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 1
    .param p1, "txId"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "futId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 54
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;->txId:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 58
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 59
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 142
    const/16 v0, 0x18

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x5

    return v0
.end method

.method public futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 112
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 137
    :goto_0
    return v0

    .line 115
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 116
    goto :goto_0

    .line 118
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 120
    :pswitch_0
    const-string v0, "futId"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 122
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 123
    goto :goto_0

    .line 125
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 128
    :pswitch_1
    const-string v0, "txId"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;->txId:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 130
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 131
    goto :goto_0

    .line 133
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 118
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 80
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 84
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 90
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 105
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 92
    :pswitch_0
    const-string v1, "futId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 98
    :pswitch_1
    const-string v1, "txId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;->txId:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 90
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public xid()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;->txId:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method
