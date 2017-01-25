.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$11;
.super Ljava/lang/Object;
.source "GridCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/internal/GPC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->readThroughAllAsync(Ljava/util/Collection;ZZLorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/UUID;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

.field final synthetic val$keys:Ljava/util/Collection;

.field final synthetic val$tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

.field final synthetic val$vis:Lorg/apache/ignite/lang/IgniteBiInClosure;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    .locals 0

    .prologue
    .line 1654
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$11;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.11;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$11;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$11;->val$tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$11;->val$keys:Ljava/util/Collection;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$11;->val$vis:Lorg/apache/ignite/lang/IgniteBiInClosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1657
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$11;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.11;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$11;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$11;->val$tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$11;->val$keys:Ljava/util/Collection;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$11;->val$vis:Lorg/apache/ignite/lang/IgniteBiInClosure;

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->loadAllFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1663
    const/4 v1, 0x0

    return-object v1

    .line 1659
    :catch_0
    move-exception v0

    .line 1660
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/internal/util/lang/GridClosureException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/util/lang/GridClosureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
