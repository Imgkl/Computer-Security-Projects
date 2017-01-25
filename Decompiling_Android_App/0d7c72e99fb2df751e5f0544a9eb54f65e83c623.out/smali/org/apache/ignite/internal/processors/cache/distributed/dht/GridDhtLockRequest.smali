.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;
.super Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;
.source "GridDhtLockRequest.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private accessTtl:J

.field private invalidateEntries:Ljava/util/BitSet;

.field private miniId:Lorg/apache/ignite/lang/IgniteUuid;

.field private nearKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private owned:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private ownedBytes:[B

.field private preloadKeys:Ljava/util/BitSet;

.field private subjId:Ljava/util/UUID;

.field private taskNameHash:I

.field private topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;-><init>()V

    .line 85
    return-void
.end method

.method public constructor <init>(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZZLorg/apache/ignite/transactions/TransactionIsolation;ZJIIILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;ZLjava/util/UUID;IJ)V
    .locals 22
    .param p1, "cacheId"    # I
    .param p2, "nodeId"    # Ljava/util/UUID;
    .param p3, "nearXidVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p4, "threadId"    # J
    .param p6, "futId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p7, "miniId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p8, "lockVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p9, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10, "isInTx"    # Z
    .param p11, "isRead"    # Z
    .param p12, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p13, "isInvalidate"    # Z
    .param p14, "timeout"    # J
    .param p16, "dhtCnt"    # I
    .param p17, "nearCnt"    # I
    .param p18, "txSize"    # I
    .param p19, "grpLockKey"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20, "partLock"    # Z
    .param p21, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22, "taskNameHash"    # I
    .param p23, "accessTtl"    # J

    .prologue
    .line 133
    if-nez p16, :cond_0

    move/from16 v18, p17

    :goto_0
    move-object/from16 v4, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-wide/from16 v16, p14

    move/from16 v19, p18

    move-object/from16 v20, p19

    move/from16 v21, p20

    invoke-direct/range {v4 .. v21}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;-><init>(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZZLorg/apache/ignite/transactions/TransactionIsolation;ZJIILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Z)V

    .line 149
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 151
    if-nez p17, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    :goto_1
    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->nearKeys:Ljava/util/List;

    .line 152
    new-instance v4, Ljava/util/BitSet;

    if-nez p16, :cond_2

    .end local p17    # "nearCnt":I
    :goto_2
    move/from16 v0, p17

    invoke-direct {v4, v0}, Ljava/util/BitSet;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->invalidateEntries:Ljava/util/BitSet;

    .line 154
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    if-nez p7, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .restart local p17    # "nearCnt":I
    :cond_0
    move/from16 v18, p16

    .line 133
    goto :goto_0

    .line 151
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v0, p17

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_1

    :cond_2
    move/from16 p17, p16

    .line 152
    goto :goto_2

    .line 156
    .end local p17    # "nearCnt":I
    :cond_3
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 157
    move-object/from16 v0, p21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->subjId:Ljava/util/UUID;

    .line 158
    move/from16 v0, p22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->taskNameHash:I

    .line 159
    move-wide/from16 v0, p23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->accessTtl:J

    .line 160
    return-void
.end method


# virtual methods
.method public accessTtl()J
    .locals 2

    .prologue
    .line 292
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->accessTtl:J

    return-wide v0
.end method

.method public addDhtKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ZLorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 2
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "invalidateEntry"    # Z
    .param p3, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->invalidateEntries:Ljava/util/BitSet;

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->idx:I

    invoke-virtual {v0, v1, p2}, Ljava/util/BitSet;->set(IZ)V

    .line 229
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->addKeyBytes(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ZLjava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 230
    return-void
.end method

.method public addNearKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->nearKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public allowForStartup()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 480
    const/16 v0, 0x1e

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 485
    const/16 v0, 0x1f

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
    .line 308
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V

    .line 310
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->nearKeys:Ljava/util/List;

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->cacheId:I

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->finishUnmarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 312
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->ownedBytes:[B

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->ownedBytes:[B

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->owned:Ljava/util/Map;

    .line 314
    :cond_0
    return-void
.end method

.method public invalidateNearEntry(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->invalidateEntries:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public markLastKeyForPreload()V
    .locals 3

    .prologue
    .line 236
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->idx:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 238
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->preloadKeys:Ljava/util/BitSet;

    if-nez v0, :cond_1

    .line 239
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->preloadKeys:Ljava/util/BitSet;

    .line 241
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->preloadKeys:Ljava/util/BitSet;

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->idx:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 242
    return-void
.end method

.method public miniId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public nearKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->nearKeys:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->nearKeys:Ljava/util/List;

    goto :goto_0
.end method

.method public nearNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->nodeId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public needPreloadKey(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->preloadKeys:Ljava/util/BitSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->preloadKeys:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public owned(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->owned:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->owned:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    goto :goto_0
.end method

.method public owned(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 2
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "ownerMapped"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 259
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->owned:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->owned:Ljava/util/Map;

    .line 262
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->owned:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    return-void
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
    .line 298
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 300
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->nearKeys:Ljava/util/List;

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->cacheId:I

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->prepareMarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 302
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->owned:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->owned:Ljava/util/Map;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->marshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->ownedBytes:[B

    .line 304
    :cond_0
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 392
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 394
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 475
    :goto_0
    return v0

    .line 397
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 398
    goto :goto_0

    .line 400
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 475
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 402
    :pswitch_0
    const-string v0, "accessTtl"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->accessTtl:J

    .line 404
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 405
    goto :goto_0

    .line 407
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 410
    :pswitch_1
    const-string v0, "invalidateEntries"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBitSet(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->invalidateEntries:Ljava/util/BitSet;

    .line 412
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 413
    goto :goto_0

    .line 415
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 418
    :pswitch_2
    const-string v0, "miniId"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 420
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 421
    goto :goto_0

    .line 423
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 426
    :pswitch_3
    const-string v0, "nearKeys"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->nearKeys:Ljava/util/List;

    .line 428
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 429
    goto :goto_0

    .line 431
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 434
    :pswitch_4
    const-string v0, "ownedBytes"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->ownedBytes:[B

    .line 436
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 437
    goto :goto_0

    .line 439
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 442
    :pswitch_5
    const-string v0, "preloadKeys"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBitSet(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->preloadKeys:Ljava/util/BitSet;

    .line 444
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 445
    goto/16 :goto_0

    .line 447
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 450
    :pswitch_6
    const-string v0, "subjId"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readUuid(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->subjId:Ljava/util/UUID;

    .line 452
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 453
    goto/16 :goto_0

    .line 455
    :cond_8
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 458
    :pswitch_7
    const-string/jumbo v0, "taskNameHash"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->taskNameHash:I

    .line 460
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 461
    goto/16 :goto_0

    .line 463
    :cond_9
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 466
    :pswitch_8
    const-string/jumbo v0, "topVer"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 468
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 469
    goto/16 :goto_0

    .line 471
    :cond_a
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto/16 :goto_1

    .line 400
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
    .end packed-switch
.end method

.method public subjectId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->subjId:Ljava/util/UUID;

    return-object v0
.end method

.method public taskNameHash()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->taskNameHash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 490
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 318
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 320
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 387
    :cond_0
    :goto_0
    return v0

    .line 323
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 324
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 330
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 387
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 332
    :pswitch_0
    const-string v1, "accessTtl"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->accessTtl:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 338
    :pswitch_1
    const-string v1, "invalidateEntries"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->invalidateEntries:Ljava/util/BitSet;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBitSet(Ljava/lang/String;Ljava/util/BitSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 344
    :pswitch_2
    const-string v1, "miniId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 350
    :pswitch_3
    const-string v1, "nearKeys"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->nearKeys:Ljava/util/List;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 356
    :pswitch_4
    const-string v1, "ownedBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->ownedBytes:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 362
    :pswitch_5
    const-string v1, "preloadKeys"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->preloadKeys:Ljava/util/BitSet;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBitSet(Ljava/lang/String;Ljava/util/BitSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 368
    :pswitch_6
    const-string v1, "subjId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->subjId:Ljava/util/UUID;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeUuid(Ljava/lang/String;Ljava/util/UUID;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 374
    :pswitch_7
    const-string/jumbo v1, "taskNameHash"

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->taskNameHash:I

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 380
    :pswitch_8
    const-string/jumbo v1, "topVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 330
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
    .end packed-switch
.end method
