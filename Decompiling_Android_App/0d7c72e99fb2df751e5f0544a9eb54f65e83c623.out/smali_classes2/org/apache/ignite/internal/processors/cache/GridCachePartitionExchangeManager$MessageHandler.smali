.class abstract Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$MessageHandler;
.super Ljava/lang/Object;
.source "GridCachePartitionExchangeManager.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteBiInClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MessageHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteBiInClosure",
        "<",
        "Ljava/util/UUID;",
        "TM;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)V
    .locals 0

    .prologue
    .line 1106
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$MessageHandler;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>.MessageHandler<TM;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$MessageHandler;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;

    .prologue
    .line 1106
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$MessageHandler;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>.MessageHandler<TM;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$MessageHandler;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1106
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$MessageHandler;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>.MessageHandler<TM;>;"
    check-cast p1, Ljava/util/UUID;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$MessageHandler;->apply(Ljava/util/UUID;Ljava/lang/Object;)V

    return-void
.end method

.method public apply(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "TM;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$MessageHandler;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>.MessageHandler<TM;>;"
    .local p2, "msg":Ljava/lang/Object;, "TM;"
    const/16 v4, 0x5d

    .line 1112
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$MessageHandler;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    .line 1114
    .local v0, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v0, :cond_1

    .line 1115
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$MessageHandler;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1116
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$MessageHandler;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received message from failed node [node="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1125
    :cond_0
    :goto_0
    return-void

    .line 1121
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$MessageHandler;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1122
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$MessageHandler;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received message from node [node="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1124
    :cond_2
    invoke-virtual {p0, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$MessageHandler;->onMessage(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract onMessage(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "TM;)V"
        }
    .end annotation
.end method