.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$66;
.super Lorg/apache/ignite/internal/util/typedef/CIX2;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localLoadAndUpdate(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/typedef/CIX2",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

.field final synthetic val$col:Ljava/util/Collection;

.field final synthetic val$ldr:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)V
    .locals 0

    .prologue
    .line 4000
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$66;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.66;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$66;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$66;->val$col:Ljava/util/Collection;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$66;->val$ldr:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CIX2;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyx(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 4000
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$66;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.66;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$66;->applyx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;)V

    return-void
.end method

.method public applyx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 4002
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$66;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.66;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$66;->val$col:Ljava/util/Collection;

    new-instance v1, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$66;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4004
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$66;->val$col:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$66;->val$ldr:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->perNodeBufferSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4005
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$66;->val$ldr:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$66;->val$col:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->addDataInternal(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgniteFuture;

    .line 4007
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$66;->val$col:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 4009
    :cond_0
    return-void
.end method
