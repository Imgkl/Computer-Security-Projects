.class Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10$1;
.super Ljava/lang/Object;
.source "GridCacheSwapManager.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;->onNext()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;

.field final synthetic val$cur0:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 1411
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10$1;->val$cur0:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1414
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v3, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10$1;->val$cur0:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject([B)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v1

    .line 1416
    .local v1, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1418
    .end local v1    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :catch_0
    move-exception v0

    .line 1419
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v2, Lorg/apache/ignite/IgniteException;

    invoke-direct {v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getValue()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1425
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;

    iget-object v3, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10$1;->val$cur0:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->unmarshalSwapEntry([B)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    invoke-static {v3, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;[B)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v0

    .line 1427
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    invoke-static {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    .line 1429
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1431
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    :catch_0
    move-exception v1

    .line 1432
    .local v1, "ex":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v2, Lorg/apache/ignite/IgniteException;

    invoke-direct {v2, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1437
    .local p1, "val":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
