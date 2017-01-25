.class Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2;
.super Ljava/lang/Object;
.source "DataStreamerImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;Ljava/util/concurrent/DelayQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

.field final synthetic val$ctx:Lorg/apache/ignite/internal/GridKernalContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    const-class v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 0

    .prologue
    .line 191
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 6
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 193
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl.2;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    move-object v1, p1

    .line 195
    check-cast v1, Lorg/apache/ignite/events/DiscoveryEvent;

    .line 197
    .local v1, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    invoke-virtual {v1}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    .line 200
    .local v2, "id":Ljava/util/UUID;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$200(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;

    .line 202
    .local v0, "buf":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.Buffer;"
    if-eqz v0, :cond_1

    .line 205
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v3

    new-instance v4, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2$1;

    invoke-direct {v4, p0, v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2$1;-><init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2;Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 216
    :cond_1
    return-void
.end method
