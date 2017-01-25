.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$7;
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
        "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
        "Ljava/lang/Exception;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

.field final synthetic val$tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 783
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$7;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;)V
    .locals 0

    .prologue
    .line 783
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$7;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache.7;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$7;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$7;->val$tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 1
    .param p1, "ret"    # Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 786
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$7;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache.7;"
    if-eqz p2, :cond_0

    .line 787
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p2

    .line 789
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$7;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$7;->val$tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->empty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 791
    :cond_1
    return-object p2
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 783
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$7;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache.7;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Exception;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$7;->apply(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method
