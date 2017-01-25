.class Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$11;
.super Ljava/lang/Object;
.source "DataStructuresProcessor.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->removeQueue(Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteCallable",
        "<",
        "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

.field final synthetic val$cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$11;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$11;->val$cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$11;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 716
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$11;->call()Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 718
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$11;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$11;->val$cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$11;->val$name:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;-><init>(Ljava/lang/String;)V

    # invokes: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->retryRemove(Lorg/apache/ignite/internal/processors/cache/GridCache;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$1500(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Lorg/apache/ignite/internal/processors/cache/GridCache;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    return-object v0
.end method
