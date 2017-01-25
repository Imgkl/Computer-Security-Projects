.class public Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;
.super Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;
.source "GridDistributedTxFinishRequest.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private baseVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private commit:Z

.field private commitVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

.field private invalidate:Z

.field private plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

.field private syncCommit:Z

.field private syncRollback:Z

.field private sys:Z

.field private threadId:J

.field private txSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;ZZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;ILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)V
    .locals 2
    .param p1, "xidVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "futId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "commitVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "threadId"    # J
    .param p6, "commit"    # Z
    .param p7, "invalidate"    # Z
    .param p8, "sys"    # Z
    .param p9, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p10, "syncCommit"    # Z
    .param p11, "syncRollback"    # Z
    .param p12, "baseVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p15, "txSize"    # I
    .param p16, "grpLockKey"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "JZZZ",
            "Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;",
            "ZZ",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;I",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            ")V"
        }
    .end annotation

    .prologue
    .line 117
    .local p13, "committedVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p14, "rolledbackVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;I)V

    .line 118
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 120
    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 121
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->commitVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 122
    iput-wide p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->threadId:J

    .line 123
    iput-boolean p6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->commit:Z

    .line 124
    iput-boolean p7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->invalidate:Z

    .line 125
    iput-boolean p8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->sys:Z

    .line 126
    iput-object p9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    .line 127
    iput-boolean p10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->syncCommit:Z

    .line 128
    iput-boolean p11, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->syncRollback:Z

    .line 129
    iput-object p12, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->baseVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 130
    move/from16 v0, p15

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->txSize:I

    .line 131
    move-object/from16 v0, p16

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .line 133
    move-object/from16 v0, p14

    invoke-virtual {p0, p13, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->completedVersions(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 134
    return-void
.end method


# virtual methods
.method public baseVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->baseVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public commit()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->commit:Z

    return v0
.end method

.method public commitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->commitVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 463
    const/16 v0, 0x17

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 468
    const/16 v0, 0x14

    return v0
.end method

.method public finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V

    .line 249
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->cacheId:I

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 251
    :cond_0
    return-void
.end method

.method public futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public groupLock()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    return-object v0
.end method

.method public isInvalidate()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->invalidate:Z

    return v0
.end method

.method public policy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    return-object v0
.end method

.method public prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 241
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->cacheId:I

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 243
    :cond_0
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 6
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v2, 0x0

    .line 347
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 349
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 458
    :goto_0
    return v1

    .line 352
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 353
    goto :goto_0

    .line 355
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 458
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 357
    :pswitch_0
    const-string v1, "baseVer"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->baseVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 359
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 360
    goto :goto_0

    .line 362
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 365
    :pswitch_1
    const-string v1, "commit"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->commit:Z

    .line 367
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 368
    goto :goto_0

    .line 370
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 373
    :pswitch_2
    const-string v1, "commitVer"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->commitVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 375
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    .line 376
    goto :goto_0

    .line 378
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 381
    :pswitch_3
    const-string v1, "futId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 383
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    .line 384
    goto :goto_0

    .line 386
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 389
    :pswitch_4
    const-string v1, "grpLockKey"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .line 391
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    .line 392
    goto :goto_0

    .line 394
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 397
    :pswitch_5
    const-string v1, "invalidate"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->invalidate:Z

    .line 399
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    .line 400
    goto/16 :goto_0

    .line 402
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 407
    :pswitch_6
    const-string v1, "plc"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByte(Ljava/lang/String;)B

    move-result v0

    .line 409
    .local v0, "plcOrd":B
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v2

    .line 410
    goto/16 :goto_0

    .line 412
    :cond_8
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->fromOrdinal(I)Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    .line 414
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 417
    .end local v0    # "plcOrd":B
    :pswitch_7
    const-string v1, "syncCommit"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->syncCommit:Z

    .line 419
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    .line 420
    goto/16 :goto_0

    .line 422
    :cond_9
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 425
    :pswitch_8
    const-string v1, "syncRollback"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->syncRollback:Z

    .line 427
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_a

    move v1, v2

    .line 428
    goto/16 :goto_0

    .line 430
    :cond_a
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 433
    :pswitch_9
    const-string v1, "sys"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->sys:Z

    .line 435
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_b

    move v1, v2

    .line 436
    goto/16 :goto_0

    .line 438
    :cond_b
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 441
    :pswitch_a
    const-string v1, "threadId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->threadId:J

    .line 443
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_c

    move v1, v2

    .line 444
    goto/16 :goto_0

    .line 446
    :cond_c
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 449
    :pswitch_b
    const-string v1, "txSize"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->txSize:I

    .line 451
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_d

    move v1, v2

    .line 452
    goto/16 :goto_0

    .line 454
    :cond_d
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto/16 :goto_1

    .line 355
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public replyRequired()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->commit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->syncCommit:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->syncRollback:Z

    goto :goto_0
.end method

.method public syncCommit()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->syncCommit:Z

    return v0
.end method

.method public syncRollback()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->syncRollback:Z

    return v0
.end method

.method public system()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->sys:Z

    return v0
.end method

.method public threadId()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->threadId:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 473
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public txSize()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->txSize:I

    return v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v1, 0x0

    .line 255
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 257
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 342
    :goto_0
    return v0

    .line 260
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v0

    if-nez v0, :cond_2

    .line 261
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->directType()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 262
    goto :goto_0

    .line 264
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 267
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 342
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 269
    :pswitch_0
    const-string v0, "baseVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->baseVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 270
    goto :goto_0

    .line 272
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 275
    :pswitch_1
    const-string v0, "commit"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->commit:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 276
    goto :goto_0

    .line 278
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 281
    :pswitch_2
    const-string v0, "commitVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->commitVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 282
    goto :goto_0

    .line 284
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 287
    :pswitch_3
    const-string v0, "futId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 288
    goto :goto_0

    .line 290
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 293
    :pswitch_4
    const-string v0, "grpLockKey"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 294
    goto :goto_0

    .line 296
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 299
    :pswitch_5
    const-string v0, "invalidate"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->invalidate:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 300
    goto :goto_0

    .line 302
    :cond_8
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 305
    :pswitch_6
    const-string v2, "plc"

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    :goto_2
    invoke-interface {p2, v2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByte(Ljava/lang/String;B)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 306
    goto/16 :goto_0

    .line 305
    :cond_9
    const/4 v0, -0x1

    goto :goto_2

    .line 308
    :cond_a
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 311
    :pswitch_7
    const-string v0, "syncCommit"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->syncCommit:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    .line 312
    goto/16 :goto_0

    .line 314
    :cond_b
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 317
    :pswitch_8
    const-string v0, "syncRollback"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->syncRollback:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    .line 318
    goto/16 :goto_0

    .line 320
    :cond_c
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 323
    :pswitch_9
    const-string v0, "sys"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->sys:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    .line 324
    goto/16 :goto_0

    .line 326
    :cond_d
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 329
    :pswitch_a
    const-string v0, "threadId"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->threadId:J

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    .line 330
    goto/16 :goto_0

    .line 332
    :cond_e
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 335
    :pswitch_b
    const-string v0, "txSize"

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->txSize:I

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    .line 336
    goto/16 :goto_0

    .line 338
    :cond_f
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto/16 :goto_1

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
