.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$2;
.super Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateAdapter;
.source "GridNearCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->nearEntries()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

.field final synthetic val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 0

    .prologue
    .line 325
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$2;->val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 325
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter.2;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$2;->apply(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 2
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .line 327
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter.2;"
    move-object v0, p1

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;

    .line 329
    .local v0, "nearEntry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$2;->val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->valid(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v1

    return v1
.end method
