.class Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer$2;
.super Ljava/lang/Object;
.source "DataStreamerImpl.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteInClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->submit(Ljava/util/Collection;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;)V
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
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;

.field final synthetic val$curFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1091
    const-class v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;)V
    .locals 0

    .prologue
    .line 1091
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer$2;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer$2;->this$1:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer$2;->val$curFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1091
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer$2;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer.2;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer$2;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1094
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer$2;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer.2;"
    .local p1, "t":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer$2;->this$1:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->access$1700(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 1096
    .local v1, "rmv":Z
    sget-boolean v2, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer$2;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    .end local v1    # "rmv":Z
    :catch_0
    move-exception v0

    .line 1101
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer$2;->val$curFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    .line 1103
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_0
    return-void

    .line 1098
    .restart local v1    # "rmv":Z
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer$2;->val$curFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
