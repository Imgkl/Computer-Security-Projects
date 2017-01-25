.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$69;
.super Ljava/lang/Object;
.source "GridCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localIteratorHonorExpirePolicy()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteClosure",
        "<",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V
    .locals 2

    .prologue
    .line 4233
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$69;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.69;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$69;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4234
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$69;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$69;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->expiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$69;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 4233
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$69;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.69;"
    check-cast p1, Ljavax/cache/Cache$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$69;->apply(Ljavax/cache/Cache$Entry;)Ljavax/cache/Cache$Entry;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljavax/cache/Cache$Entry;)Ljavax/cache/Cache$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;)",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4238
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$69;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.69;"
    .local p1, "lazyEntry":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$69;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-interface {p1}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/CachePeekModes;->ONHEAP_ONLY:[Lorg/apache/ignite/cache/CachePeekMode;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$69;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localPeek(Ljava/lang/Object;[Lorg/apache/ignite/cache/CachePeekMode;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Ljava/lang/Object;

    move-result-object v1

    .line 4240
    .local v1, "val":Ljava/lang/Object;, "TV;"
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/CacheEntryImpl;

    invoke-interface {p1}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 4242
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v0

    .line 4243
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->convertToCacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
