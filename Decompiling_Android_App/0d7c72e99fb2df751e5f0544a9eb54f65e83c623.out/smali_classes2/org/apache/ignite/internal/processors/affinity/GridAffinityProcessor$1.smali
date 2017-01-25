.class Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;
.super Ljava/lang/Object;
.source "GridAffinityProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 14
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    const/16 v3, 0xc

    const/16 v2, 0xb

    .line 69
    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v8

    .line 71
    .local v8, "evtType":I
    sget-boolean v1, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-eq v8, v3, :cond_0

    if-eq v8, v2, :cond_0

    const/16 v1, 0xa

    if-eq v8, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 73
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->affMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$000(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v7, p1

    .line 76
    check-cast v7, Lorg/apache/ignite/events/DiscoveryEvent;

    .line 79
    .local v7, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    if-eq v8, v3, :cond_3

    if-ne v8, v2, :cond_1

    .line 80
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$100(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cacheNames()Ljava/util/Collection;

    move-result-object v0

    .line 82
    .local v0, "caches":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 84
    .local v6, "rmv":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->affMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$000(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;

    .line 85
    .local v10, "key":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;
    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;->cacheName:Ljava/lang/String;
    invoke-static {v10}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;->access$200(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-static {v10}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;->access$300(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v2

    invoke-virtual {v7}, Lorg/apache/ignite/events/DiscoveryEvent;->topologyVersion()J

    move-result-wide v4

    const-wide/16 v12, 0xa

    sub-long/2addr v4, v12

    cmp-long v1, v2, v4

    if-gez v1, :cond_4

    .line 86
    :cond_5
    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 89
    .end local v10    # "key":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;
    :cond_6
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$500(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v11

    new-instance v1, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1$1;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$400(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/lang/IgniteUuid;->fromUuid(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1$1;-><init>(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;Lorg/apache/ignite/lang/IgniteUuid;JLjava/util/Collection;)V

    invoke-virtual {v11, v1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    goto :goto_0
.end method
