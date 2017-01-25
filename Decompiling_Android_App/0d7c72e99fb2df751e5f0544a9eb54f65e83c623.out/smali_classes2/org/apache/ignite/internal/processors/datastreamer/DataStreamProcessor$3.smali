.class Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$3;
.super Ljava/lang/Object;
.source "DataStreamProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->dataStreamer(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<*>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

.field final synthetic val$ldr:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const-class v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$3;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)V
    .locals 0

    .prologue
    .line 154
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$3;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$3;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$3;->val$ldr:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 154
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$3;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor.3;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$3;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$3;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor.3;"
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$3;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->ldrs:Ljava/util/Collection;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->access$300(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;)Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$3;->val$ldr:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-interface {v1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 158
    .local v0, "b":Z
    sget-boolean v1, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$3;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loader has not been added to set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$3;->val$ldr:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 160
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$3;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->access$400(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$3;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->access$500(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loader has been completed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$3;->val$ldr:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 162
    :cond_1
    return-void
.end method
