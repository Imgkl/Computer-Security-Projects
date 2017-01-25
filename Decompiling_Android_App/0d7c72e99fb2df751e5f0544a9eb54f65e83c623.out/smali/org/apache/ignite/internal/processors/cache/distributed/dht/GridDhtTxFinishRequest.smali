.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;
.super Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;
.source "GridDhtTxFinishRequest.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

.field private miniId:Lorg/apache/ignite/lang/IgniteUuid;

.field private nearNodeId:Ljava/util/UUID;

.field private pendingVers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private subjId:Ljava/util/UUID;

.field private sysInvalidate:Z

.field private taskNameHash:I

.field private topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

.field private writeVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;-><init>()V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/transactions/TransactionIsolation;ZZZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;ZZZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;ILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Ljava/util/UUID;I)V
    .locals 19
    .param p1, "nearNodeId"    # Ljava/util/UUID;
    .param p2, "futId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "miniId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5, "xidVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p6, "commitVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p7, "threadId"    # J
    .param p9, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p10, "commit"    # Z
    .param p11, "invalidate"    # Z
    .param p12, "sys"    # Z
    .param p13, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p14, "sysInvalidate"    # Z
    .param p15, "syncCommit"    # Z
    .param p16, "syncRollback"    # Z
    .param p17, "baseVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p21, "txSize"    # I
    .param p22, "grpLockKey"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p24, "taskNameHash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "J",
            "Lorg/apache/ignite/transactions/TransactionIsolation;",
            "ZZZ",
            "Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;",
            "ZZZ",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;I",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Ljava/util/UUID;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p18, "committedVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p19, "rolledbackVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p20, "pendingVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    move-object/from16 v2, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p2

    move-object/from16 v5, p6

    move-wide/from16 v6, p7

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    move-object/from16 v11, p13

    move/from16 v12, p15

    move/from16 v13, p16

    move-object/from16 v14, p17

    move-object/from16 v15, p18

    move-object/from16 v16, p19

    move/from16 v17, p21

    move-object/from16 v18, p22

    invoke-direct/range {v2 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;ZZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;ILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)V

    .line 132
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 133
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 134
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez p9, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 136
    :cond_2
    move-object/from16 v0, p20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->pendingVers:Ljava/util/Collection;

    .line 137
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 138
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->nearNodeId:Ljava/util/UUID;

    .line 139
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    .line 140
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 141
    move/from16 v0, p14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->sysInvalidate:Z

    .line 142
    move-object/from16 v0, p23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->subjId:Ljava/util/UUID;

    .line 143
    move/from16 v0, p24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->taskNameHash:I

    .line 144
    return-void
.end method


# virtual methods
.method public allowForStartup()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 397
    const/16 v0, 0x20

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 402
    const/16 v0, 0x1d

    return v0
.end method

.method public isSystemInvalidate()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->sysInvalidate:Z

    return v0
.end method

.method public isolation()Lorg/apache/ignite/transactions/TransactionIsolation;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    return-object v0
.end method

.method public miniId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public nearNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->nearNodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public pendingVersions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->pendingVers:Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->pendingVers:Ljava/util/Collection;

    goto :goto_0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v2, 0x0

    .line 305
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 307
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 392
    :goto_0
    return v1

    .line 310
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 311
    goto :goto_0

    .line 313
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 392
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 317
    :pswitch_0
    const-string v1, "isolation"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByte(Ljava/lang/String;)B

    move-result v0

    .line 319
    .local v0, "isolationOrd":B
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 320
    goto :goto_0

    .line 322
    :cond_2
    invoke-static {v0}, Lorg/apache/ignite/transactions/TransactionIsolation;->fromOrdinal(I)Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    .line 324
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 327
    .end local v0    # "isolationOrd":B
    :pswitch_1
    const-string v1, "miniId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 329
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 330
    goto :goto_0

    .line 332
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 335
    :pswitch_2
    const-string v1, "nearNodeId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readUuid(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->nearNodeId:Ljava/util/UUID;

    .line 337
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    .line 338
    goto :goto_0

    .line 340
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 343
    :pswitch_3
    const-string v1, "pendingVers"

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->pendingVers:Ljava/util/Collection;

    .line 345
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    .line 346
    goto :goto_0

    .line 348
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 351
    :pswitch_4
    const-string v1, "subjId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readUuid(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->subjId:Ljava/util/UUID;

    .line 353
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    .line 354
    goto :goto_0

    .line 356
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 359
    :pswitch_5
    const-string/jumbo v1, "sysInvalidate"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->sysInvalidate:Z

    .line 361
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    .line 362
    goto/16 :goto_0

    .line 364
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 367
    :pswitch_6
    const-string/jumbo v1, "taskNameHash"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->taskNameHash:I

    .line 369
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v2

    .line 370
    goto/16 :goto_0

    .line 372
    :cond_8
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 375
    :pswitch_7
    const-string/jumbo v1, "topVer"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 377
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    .line 378
    goto/16 :goto_0

    .line 380
    :cond_9
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 383
    :pswitch_8
    const-string/jumbo v1, "writeVer"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->writeVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 385
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_a

    move v1, v2

    .line 386
    goto/16 :goto_0

    .line 388
    :cond_a
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto/16 :goto_1

    .line 313
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public subjectId()Ljava/util/UUID;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->subjId:Ljava/util/UUID;

    return-object v0
.end method

.method public taskNameHash()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->taskNameHash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 233
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishRequest;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 300
    :goto_0
    return v0

    .line 236
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v0

    if-nez v0, :cond_2

    .line 237
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->directType()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 238
    goto :goto_0

    .line 240
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 243
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 300
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 245
    :pswitch_0
    const-string v2, "isolation"

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-virtual {v0}, Lorg/apache/ignite/transactions/TransactionIsolation;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    :goto_2
    invoke-interface {p2, v2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByte(Ljava/lang/String;B)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 246
    goto :goto_0

    .line 245
    :cond_3
    const/4 v0, -0x1

    goto :goto_2

    .line 248
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 251
    :pswitch_1
    const-string v0, "miniId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 252
    goto :goto_0

    .line 254
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 257
    :pswitch_2
    const-string v0, "nearNodeId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->nearNodeId:Ljava/util/UUID;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeUuid(Ljava/lang/String;Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 258
    goto :goto_0

    .line 260
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 263
    :pswitch_3
    const-string v0, "pendingVers"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->pendingVers:Ljava/util/Collection;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 264
    goto :goto_0

    .line 266
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 269
    :pswitch_4
    const-string v0, "subjId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->subjId:Ljava/util/UUID;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeUuid(Ljava/lang/String;Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 270
    goto :goto_0

    .line 272
    :cond_8
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 275
    :pswitch_5
    const-string/jumbo v0, "sysInvalidate"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->sysInvalidate:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 276
    goto/16 :goto_0

    .line 278
    :cond_9
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 281
    :pswitch_6
    const-string/jumbo v0, "taskNameHash"

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->taskNameHash:I

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 282
    goto/16 :goto_0

    .line 284
    :cond_a
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 287
    :pswitch_7
    const-string/jumbo v0, "topVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    .line 288
    goto/16 :goto_0

    .line 290
    :cond_b
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 293
    :pswitch_8
    const-string/jumbo v0, "writeVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->writeVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    .line 294
    goto/16 :goto_0

    .line 296
    :cond_c
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto/16 :goto_1

    .line 243
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public writeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->writeVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public writeVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 0
    .param p1, "writeVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 204
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->writeVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 205
    return-void
.end method
