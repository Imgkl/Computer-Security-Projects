.class public Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;
.super Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;
.source "GridCacheOptimisticCheckPreparedTxResponse.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private miniId:Lorg/apache/ignite/lang/IgniteUuid;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Z)V
    .locals 1
    .param p1, "txId"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "futId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "miniId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "success"    # Z

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;I)V

    .line 61
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 62
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 63
    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;->success:Z

    .line 64
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 167
    const/16 v0, 0x11

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 172
    const/16 v0, 0xb

    return v0
.end method

.method public futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public miniId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 129
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v0

    .line 132
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 162
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 137
    :pswitch_0
    const-string v1, "futId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 139
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 145
    :pswitch_1
    const-string v1, "miniId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 147
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 153
    :pswitch_2
    const-string v1, "success"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;->success:Z

    .line 155
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 135
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public success()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;->success:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 91
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 95
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 101
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 122
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    :pswitch_0
    const-string v1, "futId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 109
    :pswitch_1
    const-string v1, "miniId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 115
    :pswitch_2
    const-string v1, "success"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;->success:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
