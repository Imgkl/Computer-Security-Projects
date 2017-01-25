.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
.source "GridNearAtomicUpdateRequest.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheDeployable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CACHE_MSG_IDX:I

.field private static final serialVersionUID:J


# instance fields
.field private conflictExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

.field private conflictTtls:Lorg/apache/ignite/internal/util/GridLongList;

.field private conflictVers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end annotation
.end field

.field private entryProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/cache/processor/EntryProcessor",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private entryProcessorsBytes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = [B
    .end annotation
.end field

.field private expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private expiryPlcBytes:[B

.field private fastMap:Z

.field private filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field private forceTransformBackups:Z

.field private futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private hasPrimary:Z

.field private invokeArgs:[Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private invokeArgsBytes:[[B

.field private keys:Ljava/util/List;
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

.field private nodeId:Ljava/util/UUID;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

.field private retval:Z

.field private subjId:Ljava/util/UUID;

.field private syncMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

.field private taskNameHash:I

.field private topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

.field private updateVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private vals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->$assertionsDisabled:Z

    .line 49
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->nextIndexId()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->CACHE_MSG_IDX:I

    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 137
    return-void
.end method

.method public constructor <init>(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;ZZLjavax/cache/expiry/ExpiryPolicy;[Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/UUID;I)V
    .locals 2
    .param p1, "cacheId"    # I
    .param p2, "nodeId"    # Ljava/util/UUID;
    .param p3, "futVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p4, "fastMap"    # Z
    .param p5, "updateVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7, "syncMode"    # Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;
    .param p8, "op"    # Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .param p9, "retval"    # Z
    .param p10, "forceTransformBackups"    # Z
    .param p11, "expiryPlc"    # Ljavax/cache/expiry/ExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12, "invokeArgs"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15, "taskNameHash"    # I

    .prologue
    .line 174
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 175
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->cacheId:I

    .line 176
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->nodeId:Ljava/util/UUID;

    .line 177
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 178
    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->fastMap:Z

    .line 179
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->updateVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 181
    iput-object p6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 182
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->syncMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    .line 183
    iput-object p8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 184
    iput-boolean p9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->retval:Z

    .line 185
    iput-boolean p10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->forceTransformBackups:Z

    .line 186
    iput-object p11, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    .line 187
    iput-object p12, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->invokeArgs:[Ljava/lang/Object;

    .line 188
    iput-object p13, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 189
    move-object/from16 v0, p14

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->subjId:Ljava/util/UUID;

    .line 190
    move/from16 v0, p15

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->taskNameHash:I

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys:Ljava/util/List;

    .line 193
    return-void
.end method


# virtual methods
.method public addUpdateEntry(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)V
    .locals 7
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "val"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "conflictTtl"    # J
    .param p5, "conflictExpireTime"    # J
    .param p7, "conflictVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8, "primary"    # Z

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 300
    .local v0, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v2, v3, :cond_1

    .line 301
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    instance-of v2, p2, Ljavax/cache/processor/EntryProcessor;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_0
    move-object v0, p2

    .line 303
    check-cast v0, Ljavax/cache/processor/EntryProcessor;

    .line 306
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez p2, :cond_2

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v2, v3, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 308
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    if-eqz v0, :cond_5

    .line 311
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->entryProcessors:Ljava/util/List;

    if-nez v2, :cond_3

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->entryProcessors:Ljava/util/List;

    .line 314
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->entryProcessors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    .end local p2    # "val":Ljava/lang/Object;
    :cond_4
    :goto_0
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->hasPrimary:Z

    or-int/2addr v2, p8

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->hasPrimary:Z

    .line 328
    if-eqz p7, :cond_a

    .line 329
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictVers:Ljava/util/List;

    if-nez v2, :cond_8

    .line 330
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictVers:Ljava/util/List;

    .line 332
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    .line 333
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictVers:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 316
    .end local v1    # "i":I
    .restart local p2    # "val":Ljava/lang/Object;
    :cond_5
    if-eqz p2, :cond_4

    .line 317
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->$assertionsDisabled:Z

    if-nez v2, :cond_6

    instance-of v2, p2, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 319
    :cond_6
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->vals:Ljava/util/List;

    if-nez v2, :cond_7

    .line 320
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->vals:Ljava/util/List;

    .line 322
    :cond_7
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->vals:Ljava/util/List;

    check-cast p2, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .end local p2    # "val":Ljava/lang/Object;
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    :cond_8
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictVers:Ljava/util/List;

    invoke-interface {v2, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_9
    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_c

    .line 342
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictTtls:Lorg/apache/ignite/internal/util/GridLongList;

    if-nez v2, :cond_b

    .line 343
    new-instance v2, Lorg/apache/ignite/internal/util/GridLongList;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/GridLongList;-><init>(I)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictTtls:Lorg/apache/ignite/internal/util/GridLongList;

    .line 345
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_b

    .line 346
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictTtls:Lorg/apache/ignite/internal/util/GridLongList;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/util/GridLongList;->add(J)V

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 338
    .end local v1    # "i":I
    :cond_a
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictVers:Ljava/util/List;

    if-eqz v2, :cond_9

    .line 339
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictVers:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 349
    :cond_b
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictTtls:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v2, p3, p4}, Lorg/apache/ignite/internal/util/GridLongList;->add(J)V

    .line 352
    :cond_c
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-ltz v2, :cond_e

    .line 353
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    if-nez v2, :cond_d

    .line 354
    new-instance v2, Lorg/apache/ignite/internal/util/GridLongList;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/GridLongList;-><init>(I)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    .line 356
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_d

    .line 357
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/util/GridLongList;->add(J)V

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 360
    .end local v1    # "i":I
    :cond_d
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v2, p5, p6}, Lorg/apache/ignite/internal/util/GridLongList;->add(J)V

    .line 362
    :cond_e
    return-void
.end method

.method public conflictExpireTime(I)J
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 465
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    if-eqz v0, :cond_2

    .line 466
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridLongList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 468
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridLongList;->get(I)J

    move-result-wide v0

    .line 471
    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public conflictTtl(I)J
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 451
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictTtls:Lorg/apache/ignite/internal/util/GridLongList;

    if-eqz v0, :cond_2

    .line 452
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictTtls:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridLongList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 454
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictTtls:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridLongList;->get(I)J

    move-result-wide v0

    .line 457
    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public conflictVersion(I)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1
    .param p1, "idx"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 437
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictVers:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 438
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictVers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 440
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictVers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 443
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public conflictVersions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictVers:Ljava/util/List;

    return-object v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 882
    const/16 v0, 0x28

    return v0
.end method

.method public entryProcessor(I)Ljavax/cache/processor/EntryProcessor;
    .locals 2
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavax/cache/processor/EntryProcessor",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 411
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->entryProcessors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/processor/EntryProcessor;

    return-object v0
.end method

.method public expiry()Ljavax/cache/expiry/ExpiryPolicy;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    return-object v0
.end method

.method public fastMap()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->fastMap:Z

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 887
    const/16 v0, 0x17

    return v0
.end method

.method public filter()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    return-object v0
.end method

.method public finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V
    .locals 7
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 532
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V

    .line 534
    iget v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->cacheId:I

    invoke-virtual {p1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    .line 536
    .local v1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys:Ljava/util/List;

    invoke-virtual {p0, v5, v1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->finishUnmarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 538
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v5, v6, :cond_1

    .line 539
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->entryProcessorsBytes:Ljava/util/List;

    invoke-virtual {p0, v5, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->unmarshalCollection(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->entryProcessors:Ljava/util/List;

    .line 543
    :goto_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-eqz v5, :cond_2

    .line 544
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 545
    .local v4, "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    if-eqz v4, :cond_0

    .line 546
    invoke-interface {v4, v1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 544
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 541
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->vals:Ljava/util/List;

    invoke-virtual {p0, v5, v1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->finishUnmarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 550
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->invokeArgsBytes:[[B

    invoke-virtual {p0, v5, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->unmarshalInvokeArguments([[BLorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->invokeArgs:[Ljava/lang/Object;

    .line 552
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->expiryPlcBytes:[B

    if-eqz v5, :cond_3

    .line 553
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->expiryPlcBytes:[B

    invoke-interface {v5, v6, p2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/cache/expiry/ExpiryPolicy;

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    .line 554
    :cond_3
    return-void
.end method

.method public forceTransformBackups(Z)V
    .locals 0
    .param p1, "forceTransformBackups"    # Z

    .prologue
    .line 492
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->forceTransformBackups:Z

    .line 493
    return-void
.end method

.method public forceTransformBackups()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->forceTransformBackups:Z

    return v0
.end method

.method public futureVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public hasPrimary()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->hasPrimary:Z

    return v0
.end method

.method public invokeArguments()[Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->invokeArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method public keys()Ljava/util/List;
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
    .line 368
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys:Ljava/util/List;

    return-object v0
.end method

.method public lookupIndex()I
    .locals 1

    .prologue
    .line 197
    sget v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->CACHE_MSG_IDX:I

    return v0
.end method

.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public nodeId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 211
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->nodeId:Ljava/util/UUID;

    .line 212
    return-void
.end method

.method public operation()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    return-object v0
.end method

.method public prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
    .locals 8
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 498
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 500
    iget v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->cacheId:I

    invoke-virtual {p1, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    .line 502
    .local v1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys:Ljava/util/List;

    invoke-virtual {p0, v6, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->prepareMarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 504
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    sget-object v7, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v6, v7, :cond_1

    .line 505
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->entryProcessors:Ljava/util/List;

    invoke-virtual {p0, v6, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->marshalCollection(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->entryProcessorsBytes:Ljava/util/List;

    .line 509
    :goto_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-eqz v6, :cond_3

    .line 510
    const/4 v2, 0x0

    .line 512
    .local v2, "hasFilter":Z
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 513
    .local v5, "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    if-eqz v5, :cond_0

    .line 514
    const/4 v2, 0x1

    .line 516
    invoke-interface {v5, v1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 512
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 507
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .end local v2    # "hasFilter":Z
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :cond_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->vals:Ljava/util/List;

    invoke-virtual {p0, v6, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->prepareMarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    goto :goto_0

    .line 520
    .restart local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .restart local v2    # "hasFilter":Z
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_2
    if-nez v2, :cond_3

    .line 521
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 524
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .end local v2    # "hasFilter":Z
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->invokeArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v6, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->marshalInvokeArguments([Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)[[B

    move-result-object v6

    iput-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->invokeArgsBytes:[[B

    .line 526
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    if-eqz v6, :cond_4

    .line 527
    new-instance v6, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;-><init>(Ljavax/cache/expiry/ExpiryPolicy;)V

    invoke-static {p1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->marshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/Object;)[B

    move-result-object v6

    iput-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->expiryPlcBytes:[B

    .line 528
    :cond_4
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 6
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v3, 0x0

    .line 698
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 700
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 877
    :goto_0
    return v2

    .line 703
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    .line 704
    goto :goto_0

    .line 706
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 877
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 708
    :pswitch_0
    const-string v2, "conflictExpireTimes"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/GridLongList;

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    .line 710
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    .line 711
    goto :goto_0

    .line 713
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 716
    :pswitch_1
    const-string v2, "conflictTtls"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/GridLongList;

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictTtls:Lorg/apache/ignite/internal/util/GridLongList;

    .line 718
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 719
    goto :goto_0

    .line 721
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 724
    :pswitch_2
    const-string v2, "conflictVers"

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v2, v4}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictVers:Ljava/util/List;

    .line 726
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    .line 727
    goto :goto_0

    .line 729
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 732
    :pswitch_3
    const-string v2, "entryProcessorsBytes"

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BYTE_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v2, v4}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->entryProcessorsBytes:Ljava/util/List;

    .line 734
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    .line 735
    goto :goto_0

    .line 737
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 740
    :pswitch_4
    const-string v2, "expiryPlcBytes"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->expiryPlcBytes:[B

    .line 742
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v3

    .line 743
    goto :goto_0

    .line 745
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 748
    :pswitch_5
    const-string v2, "fastMap"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->fastMap:Z

    .line 750
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v3

    .line 751
    goto/16 :goto_0

    .line 753
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 756
    :pswitch_6
    const-string v2, "filter"

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-class v5, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {p2, v2, v4, v5}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readObjectArray(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 758
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-nez v2, :cond_8

    move v2, v3

    .line 759
    goto/16 :goto_0

    .line 761
    :cond_8
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 764
    :pswitch_7
    const-string v2, "forceTransformBackups"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->forceTransformBackups:Z

    .line 766
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v3

    .line 767
    goto/16 :goto_0

    .line 769
    :cond_9
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 772
    :pswitch_8
    const-string v2, "futVer"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 774
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-nez v2, :cond_a

    move v2, v3

    .line 775
    goto/16 :goto_0

    .line 777
    :cond_a
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 780
    :pswitch_9
    const-string v2, "hasPrimary"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->hasPrimary:Z

    .line 782
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v3

    .line 783
    goto/16 :goto_0

    .line 785
    :cond_b
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 788
    :pswitch_a
    const-string v2, "invokeArgsBytes"

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BYTE_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-class v5, [B

    invoke-interface {p2, v2, v4, v5}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readObjectArray(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->invokeArgsBytes:[[B

    .line 790
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v3

    .line 791
    goto/16 :goto_0

    .line 793
    :cond_c
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 796
    :pswitch_b
    const-string v2, "keys"

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v2, v4}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys:Ljava/util/List;

    .line 798
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-nez v2, :cond_d

    move v2, v3

    .line 799
    goto/16 :goto_0

    .line 801
    :cond_d
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 806
    :pswitch_c
    const-string v2, "op"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByte(Ljava/lang/String;)B

    move-result v0

    .line 808
    .local v0, "opOrd":B
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-nez v2, :cond_e

    move v2, v3

    .line 809
    goto/16 :goto_0

    .line 811
    :cond_e
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->fromOrdinal(I)Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 813
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 816
    .end local v0    # "opOrd":B
    :pswitch_d
    const-string v2, "retval"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->retval:Z

    .line 818
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-nez v2, :cond_f

    move v2, v3

    .line 819
    goto/16 :goto_0

    .line 821
    :cond_f
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 824
    :pswitch_e
    const-string v2, "subjId"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readUuid(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->subjId:Ljava/util/UUID;

    .line 826
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-nez v2, :cond_10

    move v2, v3

    .line 827
    goto/16 :goto_0

    .line 829
    :cond_10
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 834
    :pswitch_f
    const-string/jumbo v2, "syncMode"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByte(Ljava/lang/String;)B

    move-result v1

    .line 836
    .local v1, "syncModeOrd":B
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-nez v2, :cond_11

    move v2, v3

    .line 837
    goto/16 :goto_0

    .line 839
    :cond_11
    invoke-static {v1}, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->fromOrdinal(I)Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->syncMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    .line 841
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 844
    .end local v1    # "syncModeOrd":B
    :pswitch_10
    const-string/jumbo v2, "taskNameHash"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->taskNameHash:I

    .line 846
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-nez v2, :cond_12

    move v2, v3

    .line 847
    goto/16 :goto_0

    .line 849
    :cond_12
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 852
    :pswitch_11
    const-string/jumbo v2, "topVer"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 854
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-nez v2, :cond_13

    move v2, v3

    .line 855
    goto/16 :goto_0

    .line 857
    :cond_13
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 860
    :pswitch_12
    const-string/jumbo v2, "updateVer"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->updateVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 862
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-nez v2, :cond_14

    move v2, v3

    .line 863
    goto/16 :goto_0

    .line 865
    :cond_14
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 868
    :pswitch_13
    const-string/jumbo v2, "vals"

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v2, v4}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->vals:Ljava/util/List;

    .line 870
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-nez v2, :cond_15

    move v2, v3

    .line 871
    goto/16 :goto_0

    .line 873
    :cond_15
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto/16 :goto_1

    .line 706
    nop

    :pswitch_data_0
    .packed-switch 0x3
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
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public returnValue()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->retval:Z

    return v0
.end method

.method public subjectId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->subjId:Ljava/util/UUID;

    return-object v0
.end method

.method public taskNameHash()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->taskNameHash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 892
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

    const-string v2, "filter"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "parent"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-object v0
.end method

.method public updateVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->updateVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public value(I)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 398
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 400
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->vals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    return-object v0
.end method

.method public values()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->entryProcessors:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->vals:Ljava/util/List;

    goto :goto_0
.end method

.method public writeSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->syncMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 558
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 560
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 693
    :goto_0
    return v0

    .line 563
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v0

    if-nez v0, :cond_2

    .line 564
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->directType()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->fieldsCount()B

    move-result v3

    invoke-interface {p2, v0, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 565
    goto :goto_0

    .line 567
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 570
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 693
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 572
    :pswitch_0
    const-string v0, "conflictExpireTimes"

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-interface {p2, v0, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 573
    goto :goto_0

    .line 575
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 578
    :pswitch_1
    const-string v0, "conflictTtls"

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictTtls:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-interface {p2, v0, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 579
    goto :goto_0

    .line 581
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 584
    :pswitch_2
    const-string v0, "conflictVers"

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictVers:Ljava/util/List;

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v3, v4}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    .line 585
    goto :goto_0

    .line 587
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 590
    :pswitch_3
    const-string v0, "entryProcessorsBytes"

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->entryProcessorsBytes:Ljava/util/List;

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BYTE_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v3, v4}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    .line 591
    goto :goto_0

    .line 593
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 596
    :pswitch_4
    const-string v0, "expiryPlcBytes"

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->expiryPlcBytes:[B

    invoke-interface {p2, v0, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    .line 597
    goto :goto_0

    .line 599
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 602
    :pswitch_5
    const-string v0, "fastMap"

    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->fastMap:Z

    invoke-interface {p2, v0, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    .line 603
    goto :goto_0

    .line 605
    :cond_8
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 608
    :pswitch_6
    const-string v0, "filter"

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v3, v4}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeObjectArray(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    .line 609
    goto/16 :goto_0

    .line 611
    :cond_9
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 614
    :pswitch_7
    const-string v0, "forceTransformBackups"

    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->forceTransformBackups:Z

    invoke-interface {p2, v0, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    .line 615
    goto/16 :goto_0

    .line 617
    :cond_a
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 620
    :pswitch_8
    const-string v0, "futVer"

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v0, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    .line 621
    goto/16 :goto_0

    .line 623
    :cond_b
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 626
    :pswitch_9
    const-string v0, "hasPrimary"

    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->hasPrimary:Z

    invoke-interface {p2, v0, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v2

    .line 627
    goto/16 :goto_0

    .line 629
    :cond_c
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 632
    :pswitch_a
    const-string v0, "invokeArgsBytes"

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->invokeArgsBytes:[[B

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BYTE_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v3, v4}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeObjectArray(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v2

    .line 633
    goto/16 :goto_0

    .line 635
    :cond_d
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 638
    :pswitch_b
    const-string v0, "keys"

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys:Ljava/util/List;

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v3, v4}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v2

    .line 639
    goto/16 :goto_0

    .line 641
    :cond_e
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 644
    :pswitch_c
    const-string v3, "op"

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    :goto_2
    invoke-interface {p2, v3, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByte(Ljava/lang/String;B)Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v2

    .line 645
    goto/16 :goto_0

    :cond_f
    move v0, v1

    .line 644
    goto :goto_2

    .line 647
    :cond_10
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 650
    :pswitch_d
    const-string v0, "retval"

    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->retval:Z

    invoke-interface {p2, v0, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v2

    .line 651
    goto/16 :goto_0

    .line 653
    :cond_11
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 656
    :pswitch_e
    const-string v0, "subjId"

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->subjId:Ljava/util/UUID;

    invoke-interface {p2, v0, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeUuid(Ljava/lang/String;Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v2

    .line 657
    goto/16 :goto_0

    .line 659
    :cond_12
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 662
    :pswitch_f
    const-string/jumbo v0, "syncMode"

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->syncMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    if-eqz v3, :cond_13

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->syncMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    invoke-virtual {v1}, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    :cond_13
    invoke-interface {p2, v0, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByte(Ljava/lang/String;B)Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v2

    .line 663
    goto/16 :goto_0

    .line 665
    :cond_14
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 668
    :pswitch_10
    const-string/jumbo v0, "taskNameHash"

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->taskNameHash:I

    invoke-interface {p2, v0, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v2

    .line 669
    goto/16 :goto_0

    .line 671
    :cond_15
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 674
    :pswitch_11
    const-string/jumbo v0, "topVer"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-interface {p2, v0, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_16

    move v0, v2

    .line 675
    goto/16 :goto_0

    .line 677
    :cond_16
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 680
    :pswitch_12
    const-string/jumbo v0, "updateVer"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->updateVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v0, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_17

    move v0, v2

    .line 681
    goto/16 :goto_0

    .line 683
    :cond_17
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 686
    :pswitch_13
    const-string/jumbo v0, "vals"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->vals:Ljava/util/List;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v1, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_18

    move v0, v2

    .line 687
    goto/16 :goto_0

    .line 689
    :cond_18
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto/16 :goto_1

    .line 570
    :pswitch_data_0
    .packed-switch 0x3
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
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public writeValue(I)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 419
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->vals:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->vals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 422
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
