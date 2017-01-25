.class Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskDiscoveryListener;
.super Ljava/lang/Object;
.source "GridTaskProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskDiscoveryListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1149
    const-class v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskDiscoveryListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)V
    .locals 0

    .prologue
    .line 1149
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$1;

    .prologue
    .line 1149
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskDiscoveryListener;-><init>(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 5
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 1152
    sget-boolean v3, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskDiscoveryListener;->$assertionsDisabled:Z

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

    .line 1154
    :cond_0
    check-cast p1, Lorg/apache/ignite/events/DiscoveryEvent;

    .end local p1    # "evt":Lorg/apache/ignite/events/Event;
    invoke-virtual {p1}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    .line 1156
    .local v1, "nodeId":Ljava/util/UUID;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$2000(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 1159
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasks:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$1000(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    .line 1160
    .local v2, "task":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->onNodeLeft(Ljava/util/UUID;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1163
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "task":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$2000(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$2000(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    .line 1165
    return-void
.end method
