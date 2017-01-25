.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3;
.super Ljava/lang/Object;
.source "GridNearCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->primaryEntrySet([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;",
        "Ljava/util/Collection",
        "<",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

.field final synthetic val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 0

    .prologue
    .line 354
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3;->val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 354
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter.3;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3;->apply(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;)Ljava/util/Collection;
    .locals 5
    .param p1, "p"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter.3;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 356
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->entries()Ljava/util/Collection;

    move-result-object v0

    .line 358
    .local v0, "entries0":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3;->val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    new-array v1, v3, [Lorg/apache/ignite/lang/IgnitePredicate;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3$1;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3;)V

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    .line 365
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3$2;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3$2;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3;)V

    new-array v2, v3, [Lorg/apache/ignite/lang/IgnitePredicate;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3$3;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3$3;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3;)V

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method
