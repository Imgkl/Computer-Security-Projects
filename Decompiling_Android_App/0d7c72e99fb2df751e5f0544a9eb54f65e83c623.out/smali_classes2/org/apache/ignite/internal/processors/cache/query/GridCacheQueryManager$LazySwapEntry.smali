.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;
.super Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;
.source "GridCacheQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazySwapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager",
        "<TK;TV;>.Abstract",
        "LazySwapEntry;"
    }
.end annotation


# instance fields
.field private final e:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<[B[B>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<[B[B>;)V"
        }
    .end annotation

    .prologue
    .line 2340
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.LazySwapEntry;"
    .local p2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[B[B>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;)V

    .line 2341
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;->e:Ljava/util/Map$Entry;

    .line 2342
    return-void
.end method


# virtual methods
.method expireTime()J
    .locals 2

    .prologue
    .line 2366
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.LazySwapEntry;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->expireTime([B)J

    move-result-wide v0

    return-wide v0
.end method

.method protected keyBytes()[B
    .locals 1

    .prologue
    .line 2346
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.LazySwapEntry;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method timeToLive()J
    .locals 2

    .prologue
    .line 2361
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.LazySwapEntry;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->timeToLive([B)J

    move-result-wide v0

    return-wide v0
.end method

.method protected unmarshalValue()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2352
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.LazySwapEntry;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->getValue([B)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v1

    .line 2354
    .local v1, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<[BLjava/lang/Byte;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$2500(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v3

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$2400(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-interface {v3, v4, v5, v2}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->toCacheObject(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;B[B)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    .line 2356
    .local v0, "obj":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$2600(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 2371
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.LazySwapEntry;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->version([B)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    return-object v0
.end method
