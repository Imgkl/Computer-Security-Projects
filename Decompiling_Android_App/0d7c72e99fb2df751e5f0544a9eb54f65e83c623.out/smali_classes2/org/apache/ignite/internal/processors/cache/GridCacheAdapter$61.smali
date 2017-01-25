.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$61;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
        "<TK;TV;>.AsyncOp<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

.field final synthetic val$key:Ljava/lang/Object;

.field final synthetic val$val:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3568
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$61;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.61;"
    .local p2, "x0":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$61;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$61;->val$val:Ljava/lang/Object;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$61;->val$key:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public op(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 7
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3571
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$61;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.61;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$61;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploymentEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3573
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$61;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$61;->val$val:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->registerClass(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3580
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$61;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$61;->val$key:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$61;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$61;->val$val:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->equalsValArray(Ljava/lang/Object;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->removeAllAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->access$1000()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3575
    :catch_0
    move-exception v6

    .line 3576
    .local v6, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v0, v6}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3586
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$61;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.61;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeAsync [key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$61;->val$key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", val="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$61;->val$val:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
