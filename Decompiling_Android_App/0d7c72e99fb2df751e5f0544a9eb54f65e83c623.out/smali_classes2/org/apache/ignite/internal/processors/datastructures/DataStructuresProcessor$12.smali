.class Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$12;
.super Lorg/apache/ignite/internal/util/typedef/CIX1;
.source "DataStructuresProcessor.java"


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
        "Lorg/apache/ignite/internal/util/typedef/CIX1",
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
    .line 722
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$12;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$12;->val$cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$12;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CIX1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyx(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 722
    check-cast p1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$12;->applyx(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;)V

    return-void
.end method

.method public applyx(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;)V
    .locals 9
    .param p1, "hdr"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 724
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    :goto_0
    return-void

    .line 727
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$12;->val$cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$12;->val$name:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->collocated()Z

    move-result v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->head()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->tail()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->removeKeys(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;ZJJI)V

    goto :goto_0
.end method
