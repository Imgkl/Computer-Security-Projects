.class final Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;
.super Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateAdapter;
.source "GridCacheConcurrentMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 93
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;->apply(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 1
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .line 95
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isInternal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
