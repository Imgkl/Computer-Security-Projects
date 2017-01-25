.class Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;
.super Ljava/lang/Object;
.source "DataStreamerImpl.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteInClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->load0(Ljava/util/Collection;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;Ljava/util/Collection;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteInClosure",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<*>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

.field final synthetic val$activeKeys:Ljava/util/Collection;

.field final synthetic val$entriesForNode:Ljava/util/Collection;

.field final synthetic val$nodeId:Ljava/util/UUID;

.field final synthetic val$remaps:I

.field final synthetic val$resFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 587
    const-class v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;Ljava/util/UUID;I)V
    .locals 0

    .prologue
    .line 587
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl.5;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->val$activeKeys:Ljava/util/Collection;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->val$entriesForNode:Ljava/util/Collection;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->val$resFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->val$nodeId:Ljava/util/UUID;

    iput p6, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->val$remaps:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 587
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl.5;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 590
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl.5;"
    .local p1, "t":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 592
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->val$activeKeys:Ljava/util/Collection;

    if-eqz v3, :cond_3

    .line 593
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->val$entriesForNode:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;

    .line 594
    .local v0, "e":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->val$activeKeys:Ljava/util/Collection;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->getKey()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 607
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 608
    .local v1, "e1":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 609
    invoke-static {}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Future finished with error [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->val$nodeId:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", err="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 611
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$700(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 612
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->val$resFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data streamer has been cancelled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    .line 622
    .end local v1    # "e1":Lorg/apache/ignite/IgniteCheckedException;
    :cond_1
    :goto_1
    return-void

    .line 596
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->val$activeKeys:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 597
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->val$resFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    goto :goto_1

    .line 600
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    sget-boolean v3, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->val$entriesForNode:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 604
    :cond_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->val$resFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 615
    .restart local v1    # "e1":Lorg/apache/ignite/IgniteCheckedException;
    :cond_5
    iget v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->val$remaps:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$800(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)I

    move-result v4

    if-le v3, v4, :cond_6

    .line 616
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->val$resFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to finish operation (too many remaps): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->val$remaps:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    goto :goto_1

    .line 620
    :cond_6
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->val$entriesForNode:Ljava/util/Collection;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->val$resFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->val$activeKeys:Ljava/util/Collection;

    iget v7, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;->val$remaps:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$900(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;Ljava/util/Collection;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;Ljava/util/Collection;I)V

    goto :goto_1
.end method
