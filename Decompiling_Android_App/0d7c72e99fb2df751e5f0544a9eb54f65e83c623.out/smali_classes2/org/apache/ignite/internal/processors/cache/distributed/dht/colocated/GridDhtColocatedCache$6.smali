.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$6;
.super Ljava/lang/Object;
.source "GridDhtColocatedCache.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->lockAllAsync0(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Collection;ZZJJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
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
        "Ljava/lang/Boolean;",
        "Ljava/lang/Exception;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

.field final synthetic val$ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 0

    .prologue
    .line 757
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$6;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache.6;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$6;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$6;->val$ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Boolean;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 1
    .param p1, "b"    # Ljava/lang/Boolean;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 759
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$6;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache.6;"
    if-eqz p2, :cond_1

    .line 760
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p2

    .line 764
    :cond_0
    :goto_0
    return-object p2

    .line 761
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    new-instance p2, Lorg/apache/ignite/internal/processors/cache/GridCacheLockTimeoutException;

    .end local p2    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$6;->val$ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-direct {p2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheLockTimeoutException;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .restart local p2    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 757
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$6;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache.6;"
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Exception;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$6;->apply(Ljava/lang/Boolean;Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method
