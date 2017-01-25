.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$6;
.super Ljava/lang/Object;
.source "GridCacheSetImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->retryPutAll(Ljava/util/Map;)V
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

.field final synthetic val$keys:Ljava/util/Map;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 410
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$6;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl.6;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$6;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$6;->val$keys:Ljava/util/Map;

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
    .line 410
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$6;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl.6;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$6;->call()Ljava/lang/Void;

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
    .line 412
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$6;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl.6;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$6;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCache;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$6;->val$keys:Ljava/util/Map;

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCache;->putAll(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 414
    const/4 v0, 0x0

    return-object v0
.end method
