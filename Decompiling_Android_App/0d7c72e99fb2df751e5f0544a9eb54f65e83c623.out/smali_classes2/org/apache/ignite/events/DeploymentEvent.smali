.class public Lorg/apache/ignite/events/DeploymentEvent;
.super Lorg/apache/ignite/events/EventAdapter;
.source "DeploymentEvent.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private alias:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/apache/ignite/events/EventAdapter;-><init>()V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;I)V
    .locals 0
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/events/EventAdapter;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;I)V

    .line 90
    return-void
.end method


# virtual methods
.method public alias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/ignite/events/DeploymentEvent;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public alias(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/apache/ignite/events/DeploymentEvent;->alias:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public shortDisplay()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/ignite/events/DeploymentEvent;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/ignite/events/DeploymentEvent;->alias:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/ignite/events/DeploymentEvent;->alias:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 112
    const-class v0, Lorg/apache/ignite/events/DeploymentEvent;

    const-string v2, "nodeId8"

    invoke-virtual {p0}, Lorg/apache/ignite/events/DeploymentEvent;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "msg"

    invoke-virtual {p0}, Lorg/apache/ignite/events/DeploymentEvent;->message()Ljava/lang/String;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {p0}, Lorg/apache/ignite/events/DeploymentEvent;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "tstamp"

    invoke-virtual {p0}, Lorg/apache/ignite/events/DeploymentEvent;->timestamp()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v1, p0

    invoke-static/range {v0 .. v9}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
