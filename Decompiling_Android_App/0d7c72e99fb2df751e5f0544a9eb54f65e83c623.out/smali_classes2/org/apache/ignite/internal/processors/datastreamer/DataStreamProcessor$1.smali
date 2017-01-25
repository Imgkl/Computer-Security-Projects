.class Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$1;
.super Ljava/lang/Object;
.source "DataStreamProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;)V
    .locals 0

    .prologue
    .line 65
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$1;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 67
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$1;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor.1;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    check-cast p2, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;

    .end local p2    # "msg":Ljava/lang/Object;
    # invokes: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->processRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;)V
    invoke-static {v0, p1, p2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;)V

    .line 70
    return-void
.end method
