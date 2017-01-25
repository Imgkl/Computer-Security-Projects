.class Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer$1;
.super Ljava/lang/Object;
.source "DataStreamerImpl.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteInClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;
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


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;)V
    .locals 0

    .prologue
    .line 934
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer$1;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer$1;->this$1:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 934
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer$1;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer.1;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer$1;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 1
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
    .line 936
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer$1;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer.1;"
    .local p1, "t":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer$1;->this$1:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->access$1000(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 937
    return-void
.end method
