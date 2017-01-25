.class public Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;
.super Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;
.source "GridNearTxFinishRequest.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private explicitLock:Z

.field private miniId:Lorg/apache/ignite/lang/IgniteUuid;

.field private storeEnabled:Z

.field private subjId:Ljava/util/UUID;

.field private taskNameHash:I

.field private topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;ZZZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;ILjava/util/UUID;I)V
    .locals 19
    .param p1, "futId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "xidVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "threadId"    # J
    .param p5, "commit"    # Z
    .param p6, "invalidate"    # Z
    .param p7, "sys"    # Z
    .param p8, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p9, "syncCommit"    # Z
    .param p10, "syncRollback"    # Z
    .param p11, "explicitLock"    # Z
    .param p12, "storeEnabled"    # Z
    .param p13, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14, "baseVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p17, "txSize"    # I
    .param p18, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19, "taskNameHash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "JZZZ",
            "Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;",
            "ZZZZ",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;I",
            "Ljava/util/UUID;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p15, "committedVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p16, "rolledbackVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    const/4 v5, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move/from16 v17, p17

    invoke-direct/range {v2 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;ZZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;ILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)V

    .line 102
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->explicitLock:Z

    .line 103
    move/from16 v0, p12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->storeEnabled:Z

    .line 104
    move-object/from16 v0, p13

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 105
    move-object/from16 v0, p18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->subjId:Ljava/util/UUID;

    .line 106
    move/from16 v0, p19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->taskNameHash:I

    .line 107
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 280
    const/16 v0, 0x35

    return v0
.end method

.method public explicitLock()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->explicitLock:Z

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 285
    const/16 v0, 0x1a

    return v0
.end method

.method public miniId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public miniId(Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0
    .param p1, "miniId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 134
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 135
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 218
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 275
    :goto_0
    return v0

    .line 221
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 222
    goto :goto_0

    .line 224
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 275
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 226
    :pswitch_0
    const-string v0, "explicitLock"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->explicitLock:Z

    .line 228
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 229
    goto :goto_0

    .line 231
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 234
    :pswitch_1
    const-string v0, "miniId"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 236
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 237
    goto :goto_0

    .line 239
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 242
    :pswitch_2
    const-string v0, "storeEnabled"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->storeEnabled:Z

    .line 244
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 245
    goto :goto_0

    .line 247
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 250
    :pswitch_3
    const-string v0, "subjId"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readUuid(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->subjId:Ljava/util/UUID;

    .line 252
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 253
    goto :goto_0

    .line 255
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 258
    :pswitch_4
    const-string v0, "taskNameHash"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->taskNameHash:I

    .line 260
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 261
    goto :goto_0

    .line 263
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 266
    :pswitch_5
    const-string v0, "topVer"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 268
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 269
    goto/16 :goto_0

    .line 271
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public storeEnabled()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->storeEnabled:Z

    return v0
.end method

.method public subjectId()Ljava/util/UUID;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->subjId:Ljava/util/UUID;

    return-object v0
.end method

.method public taskNameHash()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->taskNameHash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 290
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 162
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 166
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 172
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 211
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 174
    :pswitch_0
    const-string v1, "explicitLock"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->explicitLock:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 180
    :pswitch_1
    const-string v1, "miniId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 186
    :pswitch_2
    const-string v1, "storeEnabled"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->storeEnabled:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 192
    :pswitch_3
    const-string v1, "subjId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->subjId:Ljava/util/UUID;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeUuid(Ljava/lang/String;Ljava/util/UUID;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 198
    :pswitch_4
    const-string v1, "taskNameHash"

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->taskNameHash:I

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 204
    :pswitch_5
    const-string v1, "topVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 172
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
