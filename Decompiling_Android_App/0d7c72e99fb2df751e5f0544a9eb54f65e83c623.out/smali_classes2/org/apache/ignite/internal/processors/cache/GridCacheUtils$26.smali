.class final Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$26;
.super Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateAdapter;
.source "GridCacheUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->cachePrimary(Lorg/apache/ignite/cache/affinity/Affinity;Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aff:Lorg/apache/ignite/cache/affinity/Affinity;

.field final synthetic val$n:Lorg/apache/ignite/cluster/ClusterNode;


# direct methods
.method constructor <init>(Lorg/apache/ignite/cache/affinity/Affinity;Lorg/apache/ignite/cluster/ClusterNode;)V
    .locals 0

    .prologue
    .line 1773
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$26;->val$aff:Lorg/apache/ignite/cache/affinity/Affinity;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$26;->val$n:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1773
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$26;->apply(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 5
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .line 1775
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$26;->val$aff:Lorg/apache/ignite/cache/affinity/Affinity;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$26;->val$n:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/cache/affinity/Affinity;->isPrimary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
