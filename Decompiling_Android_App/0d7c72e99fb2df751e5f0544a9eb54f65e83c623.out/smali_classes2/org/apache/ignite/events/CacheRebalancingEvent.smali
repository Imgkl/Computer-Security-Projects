.class public Lorg/apache/ignite/events/CacheRebalancingEvent;
.super Lorg/apache/ignite/events/EventAdapter;
.source "CacheRebalancingEvent.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private cacheName:Ljava/lang/String;

.field private discoEvtType:I

.field private discoNode:Lorg/apache/ignite/cluster/ClusterNode;

.field private discoTs:J

.field private part:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;IILorg/apache/ignite/cluster/ClusterNode;IJ)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "part"    # I
    .param p6, "discoNode"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p7, "discoEvtType"    # I
    .param p8, "discoTs"    # J

    .prologue
    .line 105
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/ignite/events/EventAdapter;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;I)V

    .line 106
    iput-object p1, p0, Lorg/apache/ignite/events/CacheRebalancingEvent;->cacheName:Ljava/lang/String;

    .line 107
    iput p5, p0, Lorg/apache/ignite/events/CacheRebalancingEvent;->part:I

    .line 108
    iput-object p6, p0, Lorg/apache/ignite/events/CacheRebalancingEvent;->discoNode:Lorg/apache/ignite/cluster/ClusterNode;

    .line 109
    iput p7, p0, Lorg/apache/ignite/events/CacheRebalancingEvent;->discoEvtType:I

    .line 110
    iput-wide p8, p0, Lorg/apache/ignite/events/CacheRebalancingEvent;->discoTs:J

    .line 111
    return-void
.end method


# virtual methods
.method public cacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/ignite/events/CacheRebalancingEvent;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public discoveryEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lorg/apache/ignite/events/CacheRebalancingEvent;->discoEvtType:I

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridEventName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public discoveryEventType()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lorg/apache/ignite/events/CacheRebalancingEvent;->discoEvtType:I

    return v0
.end method

.method public discoveryNode()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/ignite/events/CacheRebalancingEvent;->discoNode:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method public discoveryTimestamp()J
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lorg/apache/ignite/events/CacheRebalancingEvent;->discoTs:J

    return-wide v0
.end method

.method public partition()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lorg/apache/ignite/events/CacheRebalancingEvent;->part:I

    return v0
.end method

.method public shortDisplay()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/ignite/events/CacheRebalancingEvent;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": cache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/events/CacheRebalancingEvent;->cacheName:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->mask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/events/CacheRebalancingEvent;->discoveryEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .prologue
    .line 177
    const-class v0, Lorg/apache/ignite/events/CacheRebalancingEvent;

    const-string v2, "discoEvtName"

    invoke-virtual {p0}, Lorg/apache/ignite/events/CacheRebalancingEvent;->discoveryEventName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "nodeId8"

    invoke-virtual {p0}, Lorg/apache/ignite/events/CacheRebalancingEvent;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "msg"

    invoke-virtual {p0}, Lorg/apache/ignite/events/CacheRebalancingEvent;->message()Ljava/lang/String;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {p0}, Lorg/apache/ignite/events/CacheRebalancingEvent;->name()Ljava/lang/String;

    move-result-object v9

    const-string v10, "tstamp"

    invoke-virtual {p0}, Lorg/apache/ignite/events/CacheRebalancingEvent;->timestamp()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object v1, p0

    invoke-static/range {v0 .. v11}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
