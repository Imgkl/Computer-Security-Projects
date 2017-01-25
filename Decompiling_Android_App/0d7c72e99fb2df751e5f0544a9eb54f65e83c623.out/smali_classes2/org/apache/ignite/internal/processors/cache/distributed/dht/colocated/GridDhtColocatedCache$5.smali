.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;
.super Ljava/lang/Object;
.source "GridDhtColocatedCache.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->lockAllAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Collection;ZZJJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C2",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Exception;",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Ljava/lang/Exception;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

.field final synthetic val$accessTtl:J

.field final synthetic val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field final synthetic val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field final synthetic val$keys:Ljava/util/Collection;

.field final synthetic val$retval:Z

.field final synthetic val$threadId:J

.field final synthetic val$timeout:J

.field final synthetic val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

.field final synthetic val$tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

.field final synthetic val$txRead:Z

.field final synthetic val$ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Collection;ZZJJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 5

    .prologue
    .line 653
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache.5;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->val$tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    iput-wide p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->val$threadId:J

    iput-object p6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->val$ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object p7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-object p8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->val$keys:Ljava/util/Collection;

    iput-boolean p9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->val$txRead:Z

    iput-boolean p10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->val$retval:Z

    move-wide/from16 v0, p11

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->val$timeout:J

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->val$accessTtl:J

    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 653
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache.5;"
    check-cast p2, Ljava/lang/Exception;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->apply(Ljava/lang/Object;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 17
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "exx"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .prologue
    .line 655
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache.5;"
    if-eqz p2, :cond_0

    .line 656
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFinishedFuture;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 658
    :goto_0
    return-object v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->val$tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->val$threadId:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->val$ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->val$keys:Ljava/util/Collection;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->val$txRead:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->val$retval:Z

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->val$timeout:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->val$accessTtl:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;->val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-object/from16 v16, v0

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->lockAllAsync0(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Collection;ZZJJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    invoke-static/range {v2 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Collection;ZZJJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    goto :goto_0
.end method
