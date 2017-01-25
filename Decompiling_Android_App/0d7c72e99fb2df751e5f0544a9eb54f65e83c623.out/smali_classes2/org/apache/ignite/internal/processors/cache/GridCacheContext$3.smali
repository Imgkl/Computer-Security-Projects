.class Lorg/apache/ignite/internal/processors/cache/GridCacheContext$3;
.super Ljava/lang/Object;
.source "GridCacheContext.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/internal/GPR;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectSafe(Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field final synthetic val$flags:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

.field final synthetic val$prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;[Lorg/apache/ignite/internal/processors/cache/CacheFlag;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1456
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext$3;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$3;->val$prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$3;->val$flags:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$3;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1458
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext$3;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext.3;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v1

    .line 1460
    .local v1, "oldPrj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$3;->val$prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1462
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$3;->val$flags:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forceFlags([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    move-result-object v0

    .line 1465
    .local v0, "oldFlags":[Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$3;->val$r:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1468
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1470
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forceFlags([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .line 1472
    return-void

    .line 1468
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1470
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forceFlags([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    throw v2
.end method
