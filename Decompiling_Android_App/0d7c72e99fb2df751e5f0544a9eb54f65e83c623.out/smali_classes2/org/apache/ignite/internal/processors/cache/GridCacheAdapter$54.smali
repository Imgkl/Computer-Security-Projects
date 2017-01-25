.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$54;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removex(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
        "<TK;TV;>.SyncOp<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

.field final synthetic val$key:Ljava/lang/Object;

.field final synthetic val$val:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2, "x0"    # Z

    .prologue
    .line 3351
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$54;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.54;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$54;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$54;->val$val:Ljava/lang/Object;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$54;->val$key:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic op(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3351
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$54;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.54;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$54;->op(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    move-result-object v0

    return-object v0
.end method

.method public op(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 6
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3354
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$54;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.54;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$54;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploymentEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3355
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$54;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$54;->val$val:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->registerClass(Ljava/lang/Object;)V

    .line 3357
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$54;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$54;->val$key:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$54;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$54;->val$val:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->equalsValArray(Ljava/lang/Object;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->removeAllAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3365
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$54;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.54;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove [key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$54;->val$key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", val="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$54;->val$val:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
