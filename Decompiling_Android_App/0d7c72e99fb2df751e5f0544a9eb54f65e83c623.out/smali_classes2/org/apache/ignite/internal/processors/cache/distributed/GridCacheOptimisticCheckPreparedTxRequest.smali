.class public Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;
.super Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;
.source "GridCacheOptimisticCheckPreparedTxRequest.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private miniId:Lorg/apache/ignite/lang/IgniteUuid;

.field private nearXidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private sys:Z

.field private txNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ILorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 2
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p2, "txNum"    # I
    .param p3, "futId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "miniId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 67
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;I)V

    .line 69
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->nearXidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 70
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->system()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->sys:Z

    .line 72
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 73
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 74
    iput p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->txNum:I

    .line 75
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 220
    const/16 v0, 0x10

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 225
    const/16 v0, 0xd

    return v0
.end method

.method public futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public miniId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->nearXidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 166
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 215
    :goto_0
    return v0

    .line 169
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 170
    goto :goto_0

    .line 172
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 215
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 174
    :pswitch_0
    const-string v0, "futId"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 176
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 177
    goto :goto_0

    .line 179
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 182
    :pswitch_1
    const-string v0, "miniId"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 184
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 185
    goto :goto_0

    .line 187
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 190
    :pswitch_2
    const-string v0, "nearXidVer"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->nearXidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 192
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 193
    goto :goto_0

    .line 195
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 198
    :pswitch_3
    const-string v0, "sys"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->sys:Z

    .line 200
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 201
    goto :goto_0

    .line 203
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 206
    :pswitch_4
    const-string v0, "txNum"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->txNum:I

    .line 208
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 209
    goto :goto_0

    .line 211
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public system()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->sys:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 230
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transactions()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->txNum:I

    return v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 116
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 120
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 126
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 159
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    :pswitch_0
    const-string v1, "futId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 134
    :pswitch_1
    const-string v1, "miniId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 140
    :pswitch_2
    const-string v1, "nearXidVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->nearXidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 146
    :pswitch_3
    const-string v1, "sys"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->sys:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 152
    :pswitch_4
    const-string v1, "txNum"

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->txNum:I

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
