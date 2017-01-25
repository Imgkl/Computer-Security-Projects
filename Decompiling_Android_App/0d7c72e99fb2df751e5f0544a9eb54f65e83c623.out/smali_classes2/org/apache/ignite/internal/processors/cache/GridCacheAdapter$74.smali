.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$74;
.super Ljava/lang/Object;
.source "GridCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->saveFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;Lorg/apache/ignite/internal/IgniteInternalFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

.field final synthetic val$holder:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;)V
    .locals 0

    .prologue
    .line 4717
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$74;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.74;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$74;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$74;->val$holder:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 4717
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$74;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.74;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$74;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 4719
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$74;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.74;"
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$74;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOpRelease()V

    .line 4721
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$74;->val$holder:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->tryLock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4731
    :goto_0
    return-void

    .line 4725
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$74;->val$holder:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->future()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 4726
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$74;->val$holder:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->future(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4729
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$74;->val$holder:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$74;->val$holder:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->unlock()V

    throw v0
.end method
