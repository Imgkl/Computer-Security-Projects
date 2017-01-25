.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$21;
.super Ljava/lang/Object;
.source "GridCacheQueueProxy.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->drainTo(Ljava/util/Collection;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;

.field final synthetic val$c:Ljava/util/Collection;

.field final synthetic val$maxElements:I


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;Ljava/util/Collection;I)V
    .locals 0

    .prologue
    .line 514
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$21;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy.21;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$21;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$21;->val$c:Ljava/util/Collection;

    iput p3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$21;->val$maxElements:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 516
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$21;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy.21;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$21;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$21;->val$c:Ljava/util/Collection;

    iget v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$21;->val$maxElements:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 514
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$21;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy.21;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$21;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
