.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
.source "GridDhtAtomicUpdateRequest.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheDeployable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CACHE_MSG_IDX:I

.field private static final serialVersionUID:J


# instance fields
.field private conflictExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

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

.field private forceTransformBackups:Z

.field private futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

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

.field private nearEntryProcessors:Ljava/util/List;
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

.field private nearEntryProcessorsBytes:Ljava/util/List;
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

.field private nearExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

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

.field private nearTtls:Lorg/apache/ignite/internal/util/GridLongList;

.field private nearVals:Ljava/util/List;
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

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private nodeId:Ljava/util/UUID;

.field private subjId:Ljava/util/UUID;

.field private syncMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

.field private taskNameHash:I

.field private topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

.field private ttls:Lorg/apache/ignite/internal/util/GridLongList;

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

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private writeVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->$assertionsDisabled:Z

    .line 45
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nextIndexId()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->CACHE_MSG_IDX:I

    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 135
    return-void
.end method

.method public constructor <init>(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZLjava/util/UUID;I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "cacheId"    # I
    .param p2, "nodeId"    # Ljava/util/UUID;
    .param p3, "futVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p4, "writeVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p5, "syncMode"    # Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;
    .param p6, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7, "forceTransformBackups"    # Z
    .param p8, "subjId"    # Ljava/util/UUID;
    .param p9, "taskNameHash"    # I
    .param p10, "invokeArgs"    # [Ljava/lang/Object;

    .prologue
    .line 162
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 163
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eqz p10, :cond_0

    if-nez p7, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 165
    :cond_0
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->cacheId:I

    .line 166
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nodeId:Ljava/util/UUID;

    .line 167
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 168
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->writeVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 169
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->syncMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    .line 170
    iput-object p6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 171
    iput-boolean p7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->forceTransformBackups:Z

    .line 172
    iput-object p8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->subjId:Ljava/util/UUID;

    .line 173
    iput p9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->taskNameHash:I

    .line 174
    iput-object p10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->invokeArgs:[Ljava/lang/Object;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->keys:Ljava/util/List;

    .line 178
    if-eqz p7, :cond_1

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->entryProcessors:Ljava/util/List;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->entryProcessorsBytes:Ljava/util/List;

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->vals:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public addNearWriteValue(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljavax/cache/processor/EntryProcessor;JJ)V
    .locals 8
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "expireTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            "Ljavax/cache/processor/EntryProcessor",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .local p3, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    .line 269
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearKeys:Ljava/util/List;

    if-nez v1, :cond_0

    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearKeys:Ljava/util/List;

    .line 272
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->forceTransformBackups:Z

    if-eqz v1, :cond_1

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearEntryProcessors:Ljava/util/List;

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearEntryProcessorsBytes:Ljava/util/List;

    .line 280
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearKeys:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->forceTransformBackups:Z

    if-eqz v1, :cond_3

    .line 283
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez p3, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 277
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearVals:Ljava/util/List;

    goto :goto_0

    .line 285
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearEntryProcessors:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :goto_1
    cmp-long v1, p4, v6

    if-ltz v1, :cond_4

    .line 291
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearTtls:Lorg/apache/ignite/internal/util/GridLongList;

    if-nez v1, :cond_4

    .line 292
    new-instance v1, Lorg/apache/ignite/internal/util/GridLongList;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/GridLongList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearTtls:Lorg/apache/ignite/internal/util/GridLongList;

    .line 294
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    .line 295
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearTtls:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v1, v4, v5}, Lorg/apache/ignite/internal/util/GridLongList;->add(J)V

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 288
    .end local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearVals:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 299
    :cond_4
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearTtls:Lorg/apache/ignite/internal/util/GridLongList;

    if-eqz v1, :cond_5

    .line 300
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearTtls:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v1, p4, p5}, Lorg/apache/ignite/internal/util/GridLongList;->add(J)V

    .line 302
    :cond_5
    cmp-long v1, p6, v6

    if-ltz v1, :cond_6

    .line 303
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    if-nez v1, :cond_6

    .line 304
    new-instance v1, Lorg/apache/ignite/internal/util/GridLongList;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/GridLongList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    .line 306
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_6

    .line 307
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v1, v4, v5}, Lorg/apache/ignite/internal/util/GridLongList;->add(J)V

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 311
    .end local v0    # "i":I
    :cond_6
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    if-eqz v1, :cond_7

    .line 312
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v1, p6, p7}, Lorg/apache/ignite/internal/util/GridLongList;->add(J)V

    .line 313
    :cond_7
    return-void
.end method

.method public addWriteValue(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljavax/cache/processor/EntryProcessor;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 4
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "conflictExpireTime"    # J
    .param p8, "conflictVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            "Ljavax/cache/processor/EntryProcessor",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;JJ",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ")V"
        }
    .end annotation

    .prologue
    .line 207
    .local p3, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->keys:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->forceTransformBackups:Z

    if-eqz v1, :cond_1

    .line 210
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p3, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 212
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->entryProcessors:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :goto_0
    if-eqz p8, :cond_4

    .line 219
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->conflictVers:Ljava/util/List;

    if-nez v1, :cond_2

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->conflictVers:Ljava/util/List;

    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 223
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->conflictVers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 215
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->vals:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->conflictVers:Ljava/util/List;

    invoke-interface {v1, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_3
    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-ltz v1, :cond_5

    .line 232
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->ttls:Lorg/apache/ignite/internal/util/GridLongList;

    if-nez v1, :cond_5

    .line 233
    new-instance v1, Lorg/apache/ignite/internal/util/GridLongList;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->keys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/GridLongList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->ttls:Lorg/apache/ignite/internal/util/GridLongList;

    .line 235
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    .line 236
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->ttls:Lorg/apache/ignite/internal/util/GridLongList;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/util/GridLongList;->add(J)V

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 228
    .end local v0    # "i":I
    :cond_4
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->conflictVers:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 229
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->conflictVers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 240
    :cond_5
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->ttls:Lorg/apache/ignite/internal/util/GridLongList;

    if-eqz v1, :cond_6

    .line 241
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->ttls:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v1, p4, p5}, Lorg/apache/ignite/internal/util/GridLongList;->add(J)V

    .line 243
    :cond_6
    const-wide/16 v2, 0x0

    cmp-long v1, p6, v2

    if-ltz v1, :cond_7

    .line 244
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->conflictExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    if-nez v1, :cond_7

    .line 245
    new-instance v1, Lorg/apache/ignite/internal/util/GridLongList;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->keys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/GridLongList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->conflictExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    .line 247
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_7

    .line 248
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->conflictExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/util/GridLongList;->add(J)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 252
    .end local v0    # "i":I
    :cond_7
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->conflictExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    if-eqz v1, :cond_8

    .line 253
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->conflictExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v1, p6, p7}, Lorg/apache/ignite/internal/util/GridLongList;->add(J)V

    .line 254
    :cond_8
    return-void
.end method

.method public conflictExpireTime(I)J
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 491
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->conflictExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    if-eqz v0, :cond_2

    .line 492
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->conflictExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridLongList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 494
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->conflictExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridLongList;->get(I)J

    move-result-wide v0

    .line 497
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
    .line 449
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->conflictVers:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 450
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->conflictVers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 452
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->conflictVers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 455
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 892
    const/16 v0, 0x26

    return v0
.end method

.method public entryProcessor(I)Ljavax/cache/processor/EntryProcessor;
    .locals 1
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->entryProcessors:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->entryProcessors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/processor/EntryProcessor;

    goto :goto_0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 897
    const/16 v0, 0x17

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
    .line 548
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V

    .line 550
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->cacheId:I

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 552
    .local v0, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->keys:Ljava/util/List;

    invoke-virtual {p0, v1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->finishUnmarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 554
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->vals:Ljava/util/List;

    invoke-virtual {p0, v1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->finishUnmarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 556
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearKeys:Ljava/util/List;

    invoke-virtual {p0, v1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->finishUnmarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 558
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearVals:Ljava/util/List;

    invoke-virtual {p0, v1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->finishUnmarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 560
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->forceTransformBackups:Z

    if-eqz v1, :cond_0

    .line 561
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->entryProcessorsBytes:Ljava/util/List;

    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->unmarshalCollection(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->entryProcessors:Ljava/util/List;

    .line 563
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->invokeArgsBytes:[[B

    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->unmarshalInvokeArguments([[BLorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->invokeArgs:[Ljava/lang/Object;

    .line 566
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->forceTransformBackups:Z

    if-eqz v1, :cond_1

    .line 567
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearEntryProcessorsBytes:Ljava/util/List;

    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->unmarshalCollection(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearEntryProcessors:Ljava/util/List;

    .line 568
    :cond_1
    return-void
.end method

.method public forceTransformBackups()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->forceTransformBackups:Z

    return v0
.end method

.method public futureVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public invokeArguments()[Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->invokeArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method public key(I)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    return-object v0
.end method

.method public keys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->keys:Ljava/util/List;

    return-object v0
.end method

.method public lookupIndex()I
    .locals 1

    .prologue
    .line 317
    sget v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->CACHE_MSG_IDX:I

    return v0
.end method

.method public nearEntryProcessor(I)Ljavax/cache/processor/EntryProcessor;
    .locals 1
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 441
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearEntryProcessors:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearEntryProcessors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/processor/EntryProcessor;

    goto :goto_0
.end method

.method public nearExpireTime(I)J
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 505
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    if-eqz v0, :cond_2

    .line 506
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridLongList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 508
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridLongList;->get(I)J

    move-result-wide v0

    .line 511
    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public nearKey(I)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 403
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    return-object v0
.end method

.method public nearSize()I
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearKeys:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nearTtl(I)J
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 477
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearTtls:Lorg/apache/ignite/internal/util/GridLongList;

    if-eqz v0, :cond_2

    .line 478
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearTtls:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridLongList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 480
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearTtls:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridLongList;->get(I)J

    move-result-wide v0

    .line 483
    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public nearValue(I)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1
    .param p1, "idx"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearVals:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearVals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 433
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nodeId:Ljava/util/UUID;

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
    .line 524
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 526
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->cacheId:I

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 528
    .local v0, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->keys:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->prepareMarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 530
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->vals:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->prepareMarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 532
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearKeys:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->prepareMarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 534
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearVals:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->prepareMarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 536
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->forceTransformBackups:Z

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->invokeArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v1, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->marshalInvokeArguments([Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)[[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->invokeArgsBytes:[[B

    .line 539
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->entryProcessors:Ljava/util/List;

    invoke-virtual {p0, v1, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->marshalCollection(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->entryProcessorsBytes:Ljava/util/List;

    .line 542
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->forceTransformBackups:Z

    if-eqz v1, :cond_1

    .line 543
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearEntryProcessors:Ljava/util/List;

    invoke-virtual {p0, v1, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->marshalCollection(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearEntryProcessorsBytes:Ljava/util/List;

    .line 544
    :cond_1
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v2, 0x0

    .line 712
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 714
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 887
    :goto_0
    return v1

    .line 717
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 718
    goto :goto_0

    .line 720
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 887
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 722
    :pswitch_0
    const-string v1, "conflictExpireTimes"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/GridLongList;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->conflictExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    .line 724
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 725
    goto :goto_0

    .line 727
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 730
    :pswitch_1
    const-string v1, "conflictVers"

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->conflictVers:Ljava/util/List;

    .line 732
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 733
    goto :goto_0

    .line 735
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 738
    :pswitch_2
    const-string v1, "entryProcessorsBytes"

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BYTE_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->entryProcessorsBytes:Ljava/util/List;

    .line 740
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    .line 741
    goto :goto_0

    .line 743
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 746
    :pswitch_3
    const-string v1, "forceTransformBackups"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->forceTransformBackups:Z

    .line 748
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    .line 749
    goto :goto_0

    .line 751
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 754
    :pswitch_4
    const-string v1, "futVer"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 756
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    .line 757
    goto :goto_0

    .line 759
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 762
    :pswitch_5
    const-string v1, "invokeArgsBytes"

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BYTE_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-class v4, [B

    invoke-interface {p2, v1, v3, v4}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readObjectArray(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->invokeArgsBytes:[[B

    .line 764
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    .line 765
    goto/16 :goto_0

    .line 767
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 770
    :pswitch_6
    const-string v1, "keys"

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->keys:Ljava/util/List;

    .line 772
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v2

    .line 773
    goto/16 :goto_0

    .line 775
    :cond_8
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 778
    :pswitch_7
    const-string v1, "nearEntryProcessorsBytes"

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BYTE_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearEntryProcessorsBytes:Ljava/util/List;

    .line 780
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    .line 781
    goto/16 :goto_0

    .line 783
    :cond_9
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 786
    :pswitch_8
    const-string v1, "nearExpireTimes"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/GridLongList;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    .line 788
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_a

    move v1, v2

    .line 789
    goto/16 :goto_0

    .line 791
    :cond_a
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 794
    :pswitch_9
    const-string v1, "nearKeys"

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearKeys:Ljava/util/List;

    .line 796
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_b

    move v1, v2

    .line 797
    goto/16 :goto_0

    .line 799
    :cond_b
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 802
    :pswitch_a
    const-string v1, "nearTtls"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/GridLongList;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearTtls:Lorg/apache/ignite/internal/util/GridLongList;

    .line 804
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_c

    move v1, v2

    .line 805
    goto/16 :goto_0

    .line 807
    :cond_c
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 810
    :pswitch_b
    const-string v1, "nearVals"

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearVals:Ljava/util/List;

    .line 812
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_d

    move v1, v2

    .line 813
    goto/16 :goto_0

    .line 815
    :cond_d
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 818
    :pswitch_c
    const-string v1, "nodeId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readUuid(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nodeId:Ljava/util/UUID;

    .line 820
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_e

    move v1, v2

    .line 821
    goto/16 :goto_0

    .line 823
    :cond_e
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 826
    :pswitch_d
    const-string v1, "subjId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readUuid(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->subjId:Ljava/util/UUID;

    .line 828
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_f

    move v1, v2

    .line 829
    goto/16 :goto_0

    .line 831
    :cond_f
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 836
    :pswitch_e
    const-string/jumbo v1, "syncMode"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByte(Ljava/lang/String;)B

    move-result v0

    .line 838
    .local v0, "syncModeOrd":B
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_10

    move v1, v2

    .line 839
    goto/16 :goto_0

    .line 841
    :cond_10
    invoke-static {v0}, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->fromOrdinal(I)Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->syncMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    .line 843
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 846
    .end local v0    # "syncModeOrd":B
    :pswitch_f
    const-string/jumbo v1, "taskNameHash"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->taskNameHash:I

    .line 848
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_11

    move v1, v2

    .line 849
    goto/16 :goto_0

    .line 851
    :cond_11
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 854
    :pswitch_10
    const-string/jumbo v1, "topVer"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 856
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_12

    move v1, v2

    .line 857
    goto/16 :goto_0

    .line 859
    :cond_12
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 862
    :pswitch_11
    const-string/jumbo v1, "ttls"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/GridLongList;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->ttls:Lorg/apache/ignite/internal/util/GridLongList;

    .line 864
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_13

    move v1, v2

    .line 865
    goto/16 :goto_0

    .line 867
    :cond_13
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 870
    :pswitch_12
    const-string/jumbo v1, "vals"

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->vals:Ljava/util/List;

    .line 872
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_14

    move v1, v2

    .line 873
    goto/16 :goto_0

    .line 875
    :cond_14
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 878
    :pswitch_13
    const-string/jumbo v1, "writeVer"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->writeVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 880
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_15

    move v1, v2

    .line 881
    goto/16 :goto_0

    .line 883
    :cond_15
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto/16 :goto_1

    .line 720
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

.method public size()I
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subjectId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->subjId:Ljava/util/UUID;

    return-object v0
.end method

.method public taskNameHash()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->taskNameHash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 902
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-object v0
.end method

.method public ttl(I)J
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 463
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->ttls:Lorg/apache/ignite/internal/util/GridLongList;

    if-eqz v0, :cond_2

    .line 464
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->ttls:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridLongList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 466
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->ttls:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridLongList;->get(I)J

    move-result-wide v0

    .line 469
    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public value(I)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1
    .param p1, "idx"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->vals:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->vals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 414
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->syncMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v1, 0x0

    .line 572
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 574
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 707
    :goto_0
    return v0

    .line 577
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v0

    if-nez v0, :cond_2

    .line 578
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->directType()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 579
    goto :goto_0

    .line 581
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 584
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 707
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 586
    :pswitch_0
    const-string v0, "conflictExpireTimes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->conflictExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 587
    goto :goto_0

    .line 589
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 592
    :pswitch_1
    const-string v0, "conflictVers"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->conflictVers:Ljava/util/List;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 593
    goto :goto_0

    .line 595
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 598
    :pswitch_2
    const-string v0, "entryProcessorsBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->entryProcessorsBytes:Ljava/util/List;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BYTE_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 599
    goto :goto_0

    .line 601
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 604
    :pswitch_3
    const-string v0, "forceTransformBackups"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->forceTransformBackups:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 605
    goto :goto_0

    .line 607
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 610
    :pswitch_4
    const-string v0, "futVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 611
    goto :goto_0

    .line 613
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 616
    :pswitch_5
    const-string v0, "invokeArgsBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->invokeArgsBytes:[[B

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BYTE_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeObjectArray(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 617
    goto :goto_0

    .line 619
    :cond_8
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 622
    :pswitch_6
    const-string v0, "keys"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->keys:Ljava/util/List;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 623
    goto/16 :goto_0

    .line 625
    :cond_9
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 628
    :pswitch_7
    const-string v0, "nearEntryProcessorsBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearEntryProcessorsBytes:Ljava/util/List;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BYTE_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 629
    goto/16 :goto_0

    .line 631
    :cond_a
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 634
    :pswitch_8
    const-string v0, "nearExpireTimes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    .line 635
    goto/16 :goto_0

    .line 637
    :cond_b
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 640
    :pswitch_9
    const-string v0, "nearKeys"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearKeys:Ljava/util/List;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    .line 641
    goto/16 :goto_0

    .line 643
    :cond_c
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 646
    :pswitch_a
    const-string v0, "nearTtls"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearTtls:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    .line 647
    goto/16 :goto_0

    .line 649
    :cond_d
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 652
    :pswitch_b
    const-string v0, "nearVals"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearVals:Ljava/util/List;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    .line 653
    goto/16 :goto_0

    .line 655
    :cond_e
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 658
    :pswitch_c
    const-string v0, "nodeId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nodeId:Ljava/util/UUID;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeUuid(Ljava/lang/String;Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    .line 659
    goto/16 :goto_0

    .line 661
    :cond_f
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 664
    :pswitch_d
    const-string v0, "subjId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->subjId:Ljava/util/UUID;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeUuid(Ljava/lang/String;Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    .line 665
    goto/16 :goto_0

    .line 667
    :cond_10
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 670
    :pswitch_e
    const-string/jumbo v2, "syncMode"

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->syncMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->syncMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    invoke-virtual {v0}, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    :goto_2
    invoke-interface {p2, v2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByte(Ljava/lang/String;B)Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    .line 671
    goto/16 :goto_0

    .line 670
    :cond_11
    const/4 v0, -0x1

    goto :goto_2

    .line 673
    :cond_12
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 676
    :pswitch_f
    const-string/jumbo v0, "taskNameHash"

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->taskNameHash:I

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    .line 677
    goto/16 :goto_0

    .line 679
    :cond_13
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 682
    :pswitch_10
    const-string/jumbo v0, "topVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v1

    .line 683
    goto/16 :goto_0

    .line 685
    :cond_14
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 688
    :pswitch_11
    const-string/jumbo v0, "ttls"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->ttls:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    .line 689
    goto/16 :goto_0

    .line 691
    :cond_15
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 694
    :pswitch_12
    const-string/jumbo v0, "vals"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->vals:Ljava/util/List;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_16

    move v0, v1

    .line 695
    goto/16 :goto_0

    .line 697
    :cond_16
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 700
    :pswitch_13
    const-string/jumbo v0, "writeVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->writeVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_17

    move v0, v1

    .line 701
    goto/16 :goto_0

    .line 703
    :cond_17
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto/16 :goto_1

    .line 584
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

.method public writeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->writeVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method
