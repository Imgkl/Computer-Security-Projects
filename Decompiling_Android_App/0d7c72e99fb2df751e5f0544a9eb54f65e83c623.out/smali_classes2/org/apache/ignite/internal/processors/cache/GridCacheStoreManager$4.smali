.class Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$4;
.super Ljava/lang/Object;
.source "GridCacheStoreManager.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteBiInClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->loadCache(Lorg/apache/ignite/internal/util/lang/GridInClosure3;[Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteBiInClosure",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

.field final synthetic val$vis:Lorg/apache/ignite/internal/util/lang/GridInClosure3;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;Lorg/apache/ignite/internal/util/lang/GridInClosure3;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$4;->val$vis:Lorg/apache/ignite/internal/util/lang/GridInClosure3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 492
    const/4 v3, 0x0

    .line 494
    .local v3, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->locStore:Z
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, p2

    .line 495
    check-cast v1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 497
    .local v1, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    .line 498
    .local v2, "v":Ljava/lang/Object;
    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    check-cast v3, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 503
    .end local v1    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .restart local v3    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :goto_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    .line 505
    .local v0, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$4;->val$vis:Lorg/apache/ignite/internal/util/lang/GridInClosure3;

    invoke-interface {v4, v0, v2, v3}, Lorg/apache/ignite/internal/util/lang/GridInClosure3;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 506
    return-void

    .line 501
    .end local v0    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v2    # "v":Ljava/lang/Object;
    :cond_0
    move-object v2, p2

    .restart local v2    # "v":Ljava/lang/Object;
    goto :goto_0
.end method
