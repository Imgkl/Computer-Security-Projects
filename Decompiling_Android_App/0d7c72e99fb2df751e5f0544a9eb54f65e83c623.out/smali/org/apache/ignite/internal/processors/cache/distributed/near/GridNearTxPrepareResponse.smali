.class public Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;
.super Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;
.source "GridNearTxPrepareResponse.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private dhtVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private filterFailedKeys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .end annotation
.end field

.field private futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private invalidParts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = I
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private miniId:Lorg/apache/ignite/lang/IgniteUuid;

.field private ownedValKeys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private ownedValVals:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private ownedVals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private pending:Ljava/util/Collection;
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

.field private retVal:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;-><init>()V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "xid"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "futId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "miniId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "dhtVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p6, "retVal"    # Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .param p7, "err"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p5, "invalidParts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p7}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Throwable;)V

    .line 110
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 111
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 112
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 114
    :cond_2
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 115
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 116
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->dhtVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 117
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->invalidParts:Ljava/util/Collection;

    .line 118
    iput-object p6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->retVal:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .line 119
    return-void
.end method


# virtual methods
.method public addOwnedValue(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    .locals 2
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .prologue
    .line 168
    if-nez p3, :cond_0

    .line 177
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedVals:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 172
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedVals:Ljava/util/Map;

    .line 174
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;

    invoke-direct {v0, p3, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 176
    .local v0, "oVal":Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedVals:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public dhtVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->dhtVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 469
    const/16 v0, 0x38

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 474
    const/16 v0, 0x13

    return v0
.end method

.method public filterFailedKeys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->filterFailedKeys:Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->filterFailedKeys:Ljava/util/Collection;

    goto :goto_0
.end method

.method public filterFailedKeys(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "filterFailedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->filterFailedKeys:Ljava/util/Collection;

    .line 200
    return-void
.end method

.method public finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V
    .locals 8
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V

    .line 264
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedValKeys:Ljava/util/Collection;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedVals:Ljava/util/Map;

    if-nez v6, :cond_1

    .line 265
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedValKeys:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedVals:Ljava/util/Map;

    .line 267
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedValKeys:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedValVals:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    if-eq v6, v7, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 269
    :cond_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedValKeys:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 271
    .local v3, "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedValVals:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 273
    .local v5, "valIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 274
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .line 276
    .local v2, "key":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->cacheId()I

    move-result v6

    invoke-virtual {p1, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 278
    .local v0, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;

    .line 280
    .local v4, "val":Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;
    invoke-virtual {v2, v0, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 282
    invoke-virtual {v4, v0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 284
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedVals:Ljava/util/Map;

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 288
    .end local v0    # "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v2    # "key":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .end local v3    # "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .end local v4    # "val":Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;
    .end local v5    # "valIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;>;"
    :cond_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->retVal:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->retVal:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->cacheId()I

    move-result v6

    if-eqz v6, :cond_3

    .line 289
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->retVal:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->cacheId()I

    move-result v6

    invoke-virtual {p1, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 291
    .restart local v0    # "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    if-nez v0, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->retVal:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->cacheId()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(I)V

    throw v6

    .line 293
    :cond_2
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->retVal:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual {v6, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 296
    .end local v0    # "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    :cond_3
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->filterFailedKeys:Ljava/util/Collection;

    if-eqz v6, :cond_4

    .line 297
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->filterFailedKeys:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .line 298
    .restart local v2    # "key":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->cacheId()I

    move-result v6

    invoke-virtual {p1, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 300
    .restart local v0    # "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v2, v0, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    goto :goto_1

    .line 303
    .end local v0    # "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    :cond_4
    return-void
.end method

.method public futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public hasOwnedValue(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Z
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedVals:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedVals:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidPartitions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->invalidParts:Ljava/util/Collection;

    return-object v0
.end method

.method public miniId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public ownedValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedVals:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedVals:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public pending()Ljava/util/Collection;
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
    .line 127
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->pending:Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->pending:Ljava/util/Collection;

    goto :goto_0
.end method

.method public pending(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "pending":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->pending:Ljava/util/Collection;

    .line 137
    return-void
.end method

.method public prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
    .locals 7
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 229
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedVals:Ljava/util/Map;

    if-eqz v5, :cond_0

    .line 230
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedVals:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedValKeys:Ljava/util/Collection;

    .line 232
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedVals:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedValVals:Ljava/util/Collection;

    .line 234
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedVals:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 235
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->cacheId()I

    move-result v5

    invoke-virtual {p1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 237
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 239
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    goto :goto_0

    .line 243
    .end local v0    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->retVal:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->retVal:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->cacheId()I

    move-result v5

    if-eqz v5, :cond_2

    .line 244
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->retVal:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->cacheId()I

    move-result v5

    invoke-virtual {p1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    .line 246
    .local v1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-nez v1, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->retVal:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->cacheId()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(I)V

    throw v5

    .line 248
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->retVal:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual {v5, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 251
    .end local v1    # "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->filterFailedKeys:Ljava/util/Collection;

    if-eqz v5, :cond_3

    .line 252
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->filterFailedKeys:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .line 253
    .local v4, "key":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->cacheId()I

    move-result v5

    invoke-virtual {p1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    .line 255
    .restart local v1    # "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v4, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    goto :goto_1

    .line 258
    .end local v1    # "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    :cond_3
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 381
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 383
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 464
    :goto_0
    return v0

    .line 386
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 387
    goto :goto_0

    .line 389
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 464
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 391
    :pswitch_0
    const-string v0, "dhtVer"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->dhtVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 393
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 394
    goto :goto_0

    .line 396
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 399
    :pswitch_1
    const-string v0, "filterFailedKeys"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->filterFailedKeys:Ljava/util/Collection;

    .line 401
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 402
    goto :goto_0

    .line 404
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 407
    :pswitch_2
    const-string v0, "futId"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 409
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 410
    goto :goto_0

    .line 412
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 415
    :pswitch_3
    const-string v0, "invalidParts"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->INT:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->invalidParts:Ljava/util/Collection;

    .line 417
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 418
    goto :goto_0

    .line 420
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 423
    :pswitch_4
    const-string v0, "miniId"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 425
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 426
    goto :goto_0

    .line 428
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 431
    :pswitch_5
    const-string v0, "ownedValKeys"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedValKeys:Ljava/util/Collection;

    .line 433
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 434
    goto/16 :goto_0

    .line 436
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 439
    :pswitch_6
    const-string v0, "ownedValVals"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedValVals:Ljava/util/Collection;

    .line 441
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 442
    goto/16 :goto_0

    .line 444
    :cond_8
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 447
    :pswitch_7
    const-string v0, "pending"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->pending:Ljava/util/Collection;

    .line 449
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 450
    goto/16 :goto_0

    .line 452
    :cond_9
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 455
    :pswitch_8
    const-string v0, "retVal"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->retVal:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .line 457
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 458
    goto/16 :goto_0

    .line 460
    :cond_a
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto/16 :goto_1

    .line 389
    :pswitch_data_0
    .packed-switch 0xa
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

.method public returnValue()Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->retVal:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 479
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 307
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 309
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return v0

    .line 312
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 313
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 319
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 376
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 321
    :pswitch_0
    const-string v1, "dhtVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->dhtVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 327
    :pswitch_1
    const-string v1, "filterFailedKeys"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->filterFailedKeys:Ljava/util/Collection;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 333
    :pswitch_2
    const-string v1, "futId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 339
    :pswitch_3
    const-string v1, "invalidParts"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->invalidParts:Ljava/util/Collection;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->INT:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 345
    :pswitch_4
    const-string v1, "miniId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 351
    :pswitch_5
    const-string v1, "ownedValKeys"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedValKeys:Ljava/util/Collection;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 357
    :pswitch_6
    const-string v1, "ownedValVals"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedValVals:Ljava/util/Collection;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 363
    :pswitch_7
    const-string v1, "pending"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->pending:Ljava/util/Collection;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 369
    :pswitch_8
    const-string v1, "retVal"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->retVal:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto/16 :goto_1

    .line 319
    :pswitch_data_0
    .packed-switch 0xa
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
