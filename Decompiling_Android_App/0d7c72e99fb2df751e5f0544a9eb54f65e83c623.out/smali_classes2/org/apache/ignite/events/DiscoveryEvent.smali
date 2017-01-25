.class public Lorg/apache/ignite/events/DiscoveryEvent;
.super Lorg/apache/ignite/events/EventAdapter;
.source "DiscoveryEvent.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private evtNode:Lorg/apache/ignite/cluster/ClusterNode;

.field private topSnapshot:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field private topVer:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/apache/ignite/events/EventAdapter;-><init>()V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILorg/apache/ignite/cluster/ClusterNode;)V
    .locals 0
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "evtNode"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/events/EventAdapter;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;I)V

    .line 101
    iput-object p4, p0, Lorg/apache/ignite/events/DiscoveryEvent;->evtNode:Lorg/apache/ignite/cluster/ClusterNode;

    .line 102
    return-void
.end method


# virtual methods
.method public eventNode()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/ignite/events/DiscoveryEvent;->evtNode:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method public eventNode(Lorg/apache/ignite/cluster/ClusterNode;)V
    .locals 0
    .param p1, "evtNode"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 110
    iput-object p1, p0, Lorg/apache/ignite/events/DiscoveryEvent;->evtNode:Lorg/apache/ignite/cluster/ClusterNode;

    .line 111
    return-void
.end method

.method public shortDisplay()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/ignite/events/DiscoveryEvent;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": id8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/events/DiscoveryEvent;->evtNode:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/ignite/events/DiscoveryEvent;->evtNode:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->addresses()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 159
    const-class v0, Lorg/apache/ignite/events/DiscoveryEvent;

    const-string v2, "nodeId8"

    invoke-virtual {p0}, Lorg/apache/ignite/events/DiscoveryEvent;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "msg"

    invoke-virtual {p0}, Lorg/apache/ignite/events/DiscoveryEvent;->message()Ljava/lang/String;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {p0}, Lorg/apache/ignite/events/DiscoveryEvent;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "tstamp"

    invoke-virtual {p0}, Lorg/apache/ignite/events/DiscoveryEvent;->timestamp()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v1, p0

    invoke-static/range {v0 .. v9}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topologyNodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/ignite/events/DiscoveryEvent;->topSnapshot:Ljava/util/Collection;

    return-object v0
.end method

.method public topologySnapshot(JLjava/util/Collection;)V
    .locals 1
    .param p1, "topVer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p3, "topSnapshot":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iput-wide p1, p0, Lorg/apache/ignite/events/DiscoveryEvent;->topVer:J

    .line 154
    iput-object p3, p0, Lorg/apache/ignite/events/DiscoveryEvent;->topSnapshot:Ljava/util/Collection;

    .line 155
    return-void
.end method

.method public topologyVersion()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lorg/apache/ignite/events/DiscoveryEvent;->topVer:J

    return-wide v0
.end method
