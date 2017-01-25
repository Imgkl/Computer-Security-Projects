.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$22;
.super Ljava/lang/Object;
.source "GridCacheQueueProxy.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->remove()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;)V
    .locals 0

    .prologue
    .line 536
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$22;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy.22;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$22;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
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
    .line 538
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$22;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy.22;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$22;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
