.class Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$5;
.super Ljava/lang/Object;
.source "GridCacheSwapManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->remove(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI1",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

.field final synthetic val$key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

.field final synthetic val$qryMgr:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V
    .locals 0

    .prologue
    .line 933
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$5;->val$qryMgr:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$5;->val$key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 933
    check-cast p1, [B

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$5;->apply([B)V

    return-void
.end method

.method public apply([B)V
    .locals 7
    .param p1, "rmv"    # [B

    .prologue
    .line 935
    if-nez p1, :cond_1

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->unmarshalSwapEntry([B)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    invoke-static {v3, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;[B)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v3

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v1

    .line 941
    .local v1, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    if-eqz v1, :cond_0

    .line 944
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$5;->val$qryMgr:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$5;->val$key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v5, v5, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->valueBytes()[B

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onUnswap(Ljava/lang/Object;Ljava/lang/Object;[B)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 948
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    :catch_0
    move-exception v0

    .line 949
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v2, Lorg/apache/ignite/IgniteException;

    invoke-direct {v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
