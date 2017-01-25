.class Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$1;
.super Ljava/lang/Object;
.source "DataStreamerImpl.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteInClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    const-class v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)V
    .locals 0

    .prologue
    .line 123
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$1;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$1;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 123
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$1;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl.1;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$1;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$1;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl.1;"
    .local p1, "t":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$1;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$100(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 127
    .local v0, "rmv":Z
    sget-boolean v1, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$1;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 128
    :cond_0
    return-void
.end method
