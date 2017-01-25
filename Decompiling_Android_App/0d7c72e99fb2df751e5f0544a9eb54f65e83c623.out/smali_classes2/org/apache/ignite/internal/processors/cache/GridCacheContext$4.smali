.class Lorg/apache/ignite/internal/processors/cache/GridCacheContext$4;
.super Ljava/lang/Object;
.source "GridCacheContext.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/internal/GPC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectSafe(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/internal/GPC",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field final synthetic val$flags:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

.field final synthetic val$prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

.field final synthetic val$r:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;[Lorg/apache/ignite/internal/processors/cache/CacheFlag;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 1498
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext$4;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext.4;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$4;->val$prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$4;->val$flags:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$4;->val$r:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1500
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext$4;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext.4;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v1

    .line 1502
    .local v1, "oldPrj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$4;->val$prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1504
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$4;->val$flags:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forceFlags([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    move-result-object v0

    .line 1507
    .local v0, "oldFlags":[Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$4;->val$r:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1510
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1512
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forceFlags([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    return-object v2

    .line 1510
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1512
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forceFlags([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    throw v2
.end method
