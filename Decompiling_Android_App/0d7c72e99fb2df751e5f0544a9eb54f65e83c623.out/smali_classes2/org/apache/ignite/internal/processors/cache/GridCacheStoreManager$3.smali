.class Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$3;
.super Ljava/lang/Object;
.source "GridCacheStoreManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->loadAllFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;Lorg/apache/ignite/internal/util/lang/GridInClosure3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI2",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

.field final synthetic val$convert:Z

.field final synthetic val$verVis:Lorg/apache/ignite/internal/util/lang/GridInClosure3;

.field final synthetic val$vis:Lorg/apache/ignite/lang/IgniteBiInClosure;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;ZLorg/apache/ignite/lang/IgniteBiInClosure;Lorg/apache/ignite/internal/util/lang/GridInClosure3;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    iput-boolean p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$3;->val$convert:Z

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$3;->val$vis:Lorg/apache/ignite/lang/IgniteBiInClosure;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$3;->val$verVis:Lorg/apache/ignite/internal/util/lang/GridInClosure3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 424
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$3;->val$convert:Z

    if-eqz v2, :cond_1

    .line 425
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->convert(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v2, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 427
    .local v0, "v":Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$3;->val$vis:Lorg/apache/ignite/lang/IgniteBiInClosure;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/ignite/lang/IgniteBiInClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 435
    .end local v0    # "v":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p2

    .line 430
    check-cast v1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 432
    .local v1, "v":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    if-eqz v1, :cond_0

    .line 433
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$3;->val$verVis:Lorg/apache/ignite/internal/util/lang/GridInClosure3;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/apache/ignite/internal/util/lang/GridInClosure3;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
