.class Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$1;
.super Ljava/lang/Object;
.source "IgniteTxLocalAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/internal/GPC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->loadMissing(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZZLjava/util/Collection;ZZLorg/apache/ignite/lang/IgniteBiInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/internal/GPC",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

.field final synthetic val$c:Lorg/apache/ignite/lang/IgniteBiInClosure;

.field final synthetic val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field final synthetic val$keys:Ljava/util/Collection;

.field final synthetic val$readThrough:Z


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;ZLorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    iput-boolean p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$1;->val$readThrough:Z

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$1;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$1;->val$keys:Ljava/util/Collection;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$1;->val$c:Lorg/apache/ignite/lang/IgniteBiInClosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 383
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$1;->val$readThrough:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$1;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->readThrough()Z

    move-result v2

    if-nez v2, :cond_2

    .line 384
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$1;->val$keys:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 385
    .local v1, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$1;->val$c:Lorg/apache/ignite/lang/IgniteBiInClosure;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/apache/ignite/lang/IgniteBiInClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 387
    .end local v1    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 390
    .end local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    return-object v2

    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$1;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$1;->val$keys:Ljava/util/Collection;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$1;->val$c:Lorg/apache/ignite/lang/IgniteBiInClosure;

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->loadAllFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
