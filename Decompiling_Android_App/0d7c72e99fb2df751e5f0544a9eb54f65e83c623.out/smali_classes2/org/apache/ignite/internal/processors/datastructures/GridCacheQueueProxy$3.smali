.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$3;
.super Ljava/lang/Object;
.source "GridCacheQueueProxy.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->offer(Ljava/lang/Object;)Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;

.field final synthetic val$item:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 109
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$3;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$3;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$3;->val$item:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$3;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy.3;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$3;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$3;->val$item:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->offer(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    .line 109
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$3;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy.3;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$3;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
