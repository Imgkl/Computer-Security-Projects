.class Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2$1;
.super Ljava/lang/Object;
.source "DataStreamerImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2;->onEvent(Lorg/apache/ignite/events/Event;)V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2;

.field final synthetic val$buf:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2;Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;)V
    .locals 0

    .prologue
    .line 206
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2$1;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2$1;->this$1:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2$1;->val$buf:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2$1;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2$1;->val$buf:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->onNodeLeft()V

    .line 210
    const/4 v0, 0x0

    return-object v0
.end method
