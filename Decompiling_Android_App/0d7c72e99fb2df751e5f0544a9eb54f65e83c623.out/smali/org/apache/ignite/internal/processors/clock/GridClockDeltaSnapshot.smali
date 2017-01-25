.class public Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;
.super Ljava/lang/Object;
.source "GridClockDeltaSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$1;,
        Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$DeltaAverage;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final deltas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingDeltas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$DeltaAverage;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final ver:Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;Ljava/util/Map;)V
    .locals 1
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "deltas":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->ver:Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;

    .line 74
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->deltas:Ljava/util/Map;

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->pendingDeltas:Ljava/util/Map;

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;Ljava/util/UUID;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;I)V
    .locals 7
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;
    .param p2, "locNodeId"    # Ljava/util/UUID;
    .param p3, "discoSnap"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;
    .param p4, "avgSize"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-boolean v2, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->topologyVersion()J

    move-result-wide v2

    invoke-virtual {p3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;->topologyVersion()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 56
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->ver:Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;

    .line 58
    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {p3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;->topologyNodes()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3, v6}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->deltas:Ljava/util/Map;

    .line 60
    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {p3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;->topologyNodes()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3, v6}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->pendingDeltas:Ljava/util/Map;

    .line 62
    invoke-virtual {p3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;->topologyNodes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 63
    .local v1, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->pendingDeltas:Ljava/util/Map;

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    new-instance v4, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$DeltaAverage;

    const/4 v5, 0x0

    invoke-direct {v4, p4, v5}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$DeltaAverage;-><init>(ILorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$1;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 66
    .end local v1    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized awaitReady(J)V
    .locals 11
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 103
    .local v4, "start":J
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->ready()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 106
    .local v2, "now":J
    add-long v6, v4, p1

    sub-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gtz v1, :cond_1

    .line 117
    .end local v2    # "now":J
    :cond_0
    monitor-exit p0

    return-void

    .line 109
    .restart local v2    # "now":J
    :cond_1
    add-long v6, v4, p1

    sub-long/2addr v6, v2

    :try_start_2
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 112
    .end local v2    # "now":J
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 115
    new-instance v1, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;-><init>(Ljava/lang/InterruptedException;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "start":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public deltas()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->deltas:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized onDeltaReceived(Ljava/util/UUID;J)Z
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "timeDelta"    # J

    .prologue
    const/4 v1, 0x0

    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->pendingDeltas:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$DeltaAverage;

    .line 129
    .local v0, "avg":Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$DeltaAverage;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p2, p3}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$DeltaAverage;->onValue(J)V

    .line 132
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$DeltaAverage;->ready()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->pendingDeltas:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->deltas:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$DeltaAverage;->average()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->ready()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 143
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "avg":Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$DeltaAverage;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onNodeLeft(Ljava/util/UUID;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->pendingDeltas:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->deltas:Ljava/util/Map;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->ready()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_0
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pendingNodeIds()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->pendingDeltas:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ready()Z
    .locals 1

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->pendingDeltas:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const-class v0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public version()Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->ver:Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;

    return-object v0
.end method
