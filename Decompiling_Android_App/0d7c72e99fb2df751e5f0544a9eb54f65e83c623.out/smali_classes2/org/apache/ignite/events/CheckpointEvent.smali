.class public Lorg/apache/ignite/events/CheckpointEvent;
.super Lorg/apache/ignite/events/EventAdapter;
.source "CheckpointEvent.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private cpKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lorg/apache/ignite/events/CheckpointEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/events/CheckpointEvent;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/apache/ignite/events/EventAdapter;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "cpKey"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/events/EventAdapter;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;I)V

    .line 84
    iput-object p4, p0, Lorg/apache/ignite/events/CheckpointEvent;->cpKey:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    sget-boolean v0, Lorg/apache/ignite/events/CheckpointEvent;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/events/CheckpointEvent;->cpKey:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/events/CheckpointEvent;->cpKey:Ljava/lang/String;

    return-object v0
.end method

.method public key(Ljava/lang/String;)V
    .locals 1
    .param p1, "cpKey"    # Ljava/lang/String;

    .prologue
    .line 109
    sget-boolean v0, Lorg/apache/ignite/events/CheckpointEvent;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 111
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/events/CheckpointEvent;->cpKey:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public shortDisplay()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/ignite/events/CheckpointEvent;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": cpKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/events/CheckpointEvent;->cpKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 116
    const-class v0, Lorg/apache/ignite/events/CheckpointEvent;

    const-string v2, "nodeId8"

    invoke-virtual {p0}, Lorg/apache/ignite/events/CheckpointEvent;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "msg"

    invoke-virtual {p0}, Lorg/apache/ignite/events/CheckpointEvent;->message()Ljava/lang/String;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {p0}, Lorg/apache/ignite/events/CheckpointEvent;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "tstamp"

    invoke-virtual {p0}, Lorg/apache/ignite/events/CheckpointEvent;->timestamp()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v1, p0

    invoke-static/range {v0 .. v9}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
