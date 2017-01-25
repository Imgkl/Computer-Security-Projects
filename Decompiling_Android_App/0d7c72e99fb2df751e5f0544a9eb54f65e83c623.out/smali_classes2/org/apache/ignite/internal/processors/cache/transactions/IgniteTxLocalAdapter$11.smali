.class Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$11;
.super Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;
.source "IgniteTxLocalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->putAllAsync0(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;Ljava/util/Map;ZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

.field final synthetic val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field final synthetic val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field final synthetic val$keys:Ljava/util/Collection;

.field final synthetic val$loaded:Ljava/util/Set;

.field final synthetic val$retval:Z


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Set;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 0
    .param p2, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .prologue
    .line 2624
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$11;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$11;->val$keys:Ljava/util/Collection;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$11;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$11;->val$loaded:Ljava/util/Set;

    iput-boolean p6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$11;->val$retval:Z

    iput-object p7, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$11;->val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic postLock(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2624
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$11;->postLock(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    move-result-object v0

    return-object v0
.end method

.method public postLock(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 12
    .param p1, "ret"    # Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2628
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2629
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquired transaction lock for put on keys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$11;->val$keys:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2631
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$11;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$11;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$11;->val$keys:Ljava/util/Collection;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$11;->val$loaded:Ljava/util/Set;

    iget-boolean v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$11;->val$retval:Z

    const-wide/16 v8, -0x1

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$11;->val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v11, 0x1

    move-object v4, p1

    move v7, v5

    invoke-virtual/range {v0 .. v11}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->postLockWrite(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/Iterable;Ljava/util/Set;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;ZZZJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/util/Set;

    .line 2642
    return-object p1
.end method
