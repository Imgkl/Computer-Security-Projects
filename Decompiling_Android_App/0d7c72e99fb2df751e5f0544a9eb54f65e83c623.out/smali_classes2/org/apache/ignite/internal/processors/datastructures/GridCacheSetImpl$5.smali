.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$5;
.super Ljava/lang/Object;
.source "GridCacheSetImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->retryRemoveAll(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

.field final synthetic val$keys:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 397
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$5;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl.5;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$5;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$5;->val$keys:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$5;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl.5;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$5;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 399
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$5;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl.5;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$5;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCache;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$5;->val$keys:Ljava/util/Collection;

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCache;->removeAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 401
    const/4 v0, 0x0

    return-object v0
.end method
