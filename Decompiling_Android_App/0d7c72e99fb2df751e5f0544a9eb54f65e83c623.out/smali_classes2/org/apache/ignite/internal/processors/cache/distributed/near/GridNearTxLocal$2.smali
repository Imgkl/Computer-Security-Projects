.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$2;
.super Ljava/lang/Object;
.source "GridNearTxLocal.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->loadMissing(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZZLjava/util/Collection;ZZLorg/apache/ignite/lang/IgniteBiInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;
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
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

.field final synthetic val$c:Lorg/apache/ignite/lang/IgniteBiInClosure;

.field final synthetic val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field final synthetic val$keys:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$2;->val$keys:Ljava/util/Collection;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$2;->val$c:Lorg/apache/ignite/lang/IgniteBiInClosure;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$2;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 339
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$2;->val$keys:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 340
    .local v2, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$2;->val$c:Lorg/apache/ignite/lang/IgniteBiInClosure;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$2;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/apache/ignite/lang/IgniteBiInClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->setRollbackOnly()Z

    .line 347
    new-instance v4, Lorg/apache/ignite/internal/util/lang/GridClosureException;

    invoke-direct {v4, v0}, Lorg/apache/ignite/internal/util/lang/GridClosureException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 342
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    const/4 v4, 0x1

    :try_start_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 332
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$2;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
