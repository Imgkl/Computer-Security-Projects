.class Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$3;
.super Ljava/lang/Object;
.source "GridLocalAtomicCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->getAllAsync(Ljava/util/Collection;ZZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/lang/String;ZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;
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
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;

.field final synthetic val$clone:Z

.field final synthetic val$deserializePortable:Z

.field final synthetic val$keys:Ljava/util/Collection;

.field final synthetic val$skipVals:Z

.field final synthetic val$storeEnabled:Z

.field final synthetic val$swapOrOffheap:Z

.field final synthetic val$taskName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;Ljava/util/Collection;ZZZLjava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 542
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$3;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$3;->this$0:Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$3;->val$keys:Ljava/util/Collection;

    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$3;->val$swapOrOffheap:Z

    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$3;->val$storeEnabled:Z

    iput-boolean p5, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$3;->val$clone:Z

    iput-object p6, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$3;->val$taskName:Ljava/lang/String;

    iput-boolean p7, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$3;->val$deserializePortable:Z

    iput-boolean p8, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$3;->val$skipVals:Z

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
    .line 542
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$3;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache.3;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$3;->call()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 544
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$3;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache.3;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$3;->this$0:Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$3;->val$keys:Ljava/util/Collection;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$3;->val$swapOrOffheap:Z

    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$3;->val$storeEnabled:Z

    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$3;->val$clone:Z

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$3;->val$taskName:Ljava/lang/String;

    iget-boolean v6, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$3;->val$deserializePortable:Z

    iget-boolean v7, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$3;->val$skipVals:Z

    # invokes: Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->getAllInternal(Ljava/util/Collection;ZZZLjava/lang/String;ZZ)Ljava/util/Map;
    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->access$000(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;Ljava/util/Collection;ZZZLjava/lang/String;ZZ)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
