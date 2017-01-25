.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3$1;
.super Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateAdapter;
.source "GridNearCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3;->apply(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3;)V
    .locals 0

    .prologue
    .line 359
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3$1;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3;

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 359
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3.1;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3$1;->apply(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .line 361
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3$1;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3;->val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/F;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    return v0
.end method
