.class public Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
.super Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;
.source "GridNearLockRequest.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private accessTtl:J

.field private dhtVers:[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field private hasTransforms:Z

.field private implicitSingleTx:Z

.field private implicitTx:Z

.field private miniId:Lorg/apache/ignite/lang/IgniteUuid;

.field private onePhaseCommit:Z

.field private retVal:Z

.field private subjId:Ljava/util/UUID;

.field private syncCommit:Z

.field private taskNameHash:I

.field private topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;-><init>()V

    .line 89
    return-void
.end method

.method public constructor <init>(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/UUID;JLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZZZZZLorg/apache/ignite/transactions/TransactionIsolation;ZJIIZLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;ZLjava/util/UUID;IJ)V
    .locals 22
    .param p1, "cacheId"    # I
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "nodeId"    # Ljava/util/UUID;
    .param p4, "threadId"    # J
    .param p6, "futId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p7, "lockVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p8, "isInTx"    # Z
    .param p9, "implicitTx"    # Z
    .param p10, "implicitSingleTx"    # Z
    .param p11, "isRead"    # Z
    .param p12, "retVal"    # Z
    .param p13, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p14, "isInvalidate"    # Z
    .param p15, "timeout"    # J
    .param p17, "keyCnt"    # I
    .param p18, "txSize"    # I
    .param p19, "syncCommit"    # Z
    .param p20, "grpLockKey"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21, "partLock"    # Z
    .param p22, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23, "taskNameHash"    # I
    .param p24, "accessTtl"    # J

    .prologue
    .line 138
    move-object/from16 v4, p0

    move/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p7

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p11

    move-object/from16 v14, p13

    move/from16 v15, p14

    move-wide/from16 v16, p15

    move/from16 v18, p17

    move/from16 v19, p18

    move-object/from16 v20, p20

    move/from16 v21, p21

    invoke-direct/range {v4 .. v21}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;-><init>(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZZLorg/apache/ignite/transactions/TransactionIsolation;ZJIILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Z)V

    .line 155
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    sget-object v4, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->ZERO:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v4

    if-gtz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 157
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 158
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->implicitTx:Z

    .line 159
    move/from16 v0, p10

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->implicitSingleTx:Z

    .line 160
    move/from16 v0, p19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->syncCommit:Z

    .line 161
    move-object/from16 v0, p22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->subjId:Ljava/util/UUID;

    .line 162
    move/from16 v0, p23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->taskNameHash:I

    .line 163
    move-wide/from16 v0, p24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->accessTtl:J

    .line 164
    move/from16 v0, p12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->retVal:Z

    .line 166
    move/from16 v0, p17

    new-array v4, v0, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->dhtVers:[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 167
    return-void
.end method


# virtual methods
.method public accessTtl()J
    .locals 2

    .prologue
    .line 310
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->accessTtl:J

    return-wide v0
.end method

.method public addKeyBytes(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 2
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "retVal"    # Z
    .param p3, "dhtVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->dhtVers:[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->idx:I

    aput-object p3, v0, v1

    .line 295
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->addKeyBytes(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ZLjava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 296
    return-void
.end method

.method public dhtVersion(I)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->dhtVers:[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 561
    const/16 v0, 0x33

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 566
    const/16 v0, 0x23

    return v0
.end method

.method public filter([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 0
    .param p1, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p2, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 239
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 240
    return-void
.end method

.method public filter()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    return-object v0
.end method

.method public finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V
    .locals 6
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V

    .line 331
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-eqz v5, :cond_1

    .line 332
    iget v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->cacheId:I

    invoke-virtual {p1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    .line 334
    .local v1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 335
    .local v4, "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    if-eqz v4, :cond_0

    .line 336
    invoke-interface {v4, v1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 334
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .end local v1    # "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :cond_1
    return-void
.end method

.method public hasTransforms(Z)V
    .locals 0
    .param p1, "hasTransforms"    # Z

    .prologue
    .line 260
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->hasTransforms:Z

    .line 261
    return-void
.end method

.method public hasTransforms()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->hasTransforms:Z

    return v0
.end method

.method public implicitSingleTx()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->implicitSingleTx:Z

    return v0
.end method

.method public implicitTx()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->implicitTx:Z

    return v0
.end method

.method public miniId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public miniId(Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0
    .param p1, "miniId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 253
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 254
    return-void
.end method

.method public needReturnValue()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->retVal:Z

    return v0
.end method

.method public onePhaseCommit(Z)V
    .locals 0
    .param p1, "onePhaseCommit"    # Z

    .prologue
    .line 215
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->onePhaseCommit:Z

    .line 216
    return-void
.end method

.method public onePhaseCommit()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->onePhaseCommit:Z

    return v0
.end method

.method public prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
    .locals 6
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 317
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-eqz v5, :cond_1

    .line 318
    iget v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->cacheId:I

    invoke-virtual {p1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    .line 320
    .local v1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 321
    .local v4, "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    if-eqz v4, :cond_0

    .line 322
    invoke-interface {v4, v1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 320
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .end local v1    # "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :cond_1
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 441
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 443
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 556
    :goto_0
    return v0

    .line 446
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 447
    goto :goto_0

    .line 449
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 556
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 451
    :pswitch_0
    const-string v0, "accessTtl"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->accessTtl:J

    .line 453
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 454
    goto :goto_0

    .line 456
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 459
    :pswitch_1
    const-string v0, "dhtVers"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-class v3, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readObjectArray(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->dhtVers:[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 461
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 462
    goto :goto_0

    .line 464
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 467
    :pswitch_2
    const-string v0, "filter"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-class v3, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readObjectArray(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 469
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 470
    goto :goto_0

    .line 472
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 475
    :pswitch_3
    const-string v0, "hasTransforms"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->hasTransforms:Z

    .line 477
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 478
    goto :goto_0

    .line 480
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 483
    :pswitch_4
    const-string v0, "implicitSingleTx"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->implicitSingleTx:Z

    .line 485
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 486
    goto :goto_0

    .line 488
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 491
    :pswitch_5
    const-string v0, "implicitTx"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->implicitTx:Z

    .line 493
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 494
    goto/16 :goto_0

    .line 496
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 499
    :pswitch_6
    const-string v0, "miniId"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 501
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 502
    goto/16 :goto_0

    .line 504
    :cond_8
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 507
    :pswitch_7
    const-string v0, "onePhaseCommit"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->onePhaseCommit:Z

    .line 509
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 510
    goto/16 :goto_0

    .line 512
    :cond_9
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 515
    :pswitch_8
    const-string v0, "retVal"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->retVal:Z

    .line 517
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 518
    goto/16 :goto_0

    .line 520
    :cond_a
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 523
    :pswitch_9
    const-string v0, "subjId"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readUuid(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->subjId:Ljava/util/UUID;

    .line 525
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    .line 526
    goto/16 :goto_0

    .line 528
    :cond_b
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 531
    :pswitch_a
    const-string/jumbo v0, "syncCommit"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->syncCommit:Z

    .line 533
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    .line 534
    goto/16 :goto_0

    .line 536
    :cond_c
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 539
    :pswitch_b
    const-string/jumbo v0, "taskNameHash"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->taskNameHash:I

    .line 541
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    .line 542
    goto/16 :goto_0

    .line 544
    :cond_d
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 547
    :pswitch_c
    const-string/jumbo v0, "topVer"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 549
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    .line 550
    goto/16 :goto_0

    .line 552
    :cond_e
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto/16 :goto_1

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x16
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
        :pswitch_c
    .end packed-switch
.end method

.method public subjectId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->subjId:Ljava/util/UUID;

    return-object v0
.end method

.method public syncCommit()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->syncCommit:Z

    return v0
.end method

.method public taskNameHash()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->taskNameHash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 571
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    const-string v2, "filter"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 343
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 345
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v0

    .line 348
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 349
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 355
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 436
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 357
    :pswitch_0
    const-string v1, "accessTtl"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->accessTtl:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 363
    :pswitch_1
    const-string v1, "dhtVers"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->dhtVers:[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeObjectArray(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 369
    :pswitch_2
    const-string v1, "filter"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeObjectArray(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 375
    :pswitch_3
    const-string v1, "hasTransforms"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->hasTransforms:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 381
    :pswitch_4
    const-string v1, "implicitSingleTx"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->implicitSingleTx:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 387
    :pswitch_5
    const-string v1, "implicitTx"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->implicitTx:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 393
    :pswitch_6
    const-string v1, "miniId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 399
    :pswitch_7
    const-string v1, "onePhaseCommit"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->onePhaseCommit:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 405
    :pswitch_8
    const-string v1, "retVal"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->retVal:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 411
    :pswitch_9
    const-string v1, "subjId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->subjId:Ljava/util/UUID;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeUuid(Ljava/lang/String;Ljava/util/UUID;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 417
    :pswitch_a
    const-string/jumbo v1, "syncCommit"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->syncCommit:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 423
    :pswitch_b
    const-string/jumbo v1, "taskNameHash"

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->taskNameHash:I

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 429
    :pswitch_c
    const-string/jumbo v1, "topVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto/16 :goto_1

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x16
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
        :pswitch_c
    .end packed-switch
.end method
