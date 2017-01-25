.class public Lorg/apache/ignite/events/TaskEvent;
.super Lorg/apache/ignite/events/EventAdapter;
.source "TaskEvent.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final internal:Z

.field private final sesId:Lorg/apache/ignite/lang/IgniteUuid;

.field private final subjId:Ljava/util/UUID;

.field private final taskClsName:Ljava/lang/String;

.field private final taskName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;)V
    .locals 0
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "sesId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p5, "taskName"    # Ljava/lang/String;
    .param p6, "taskClsName"    # Ljava/lang/String;
    .param p7, "internal"    # Z
    .param p8, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/events/EventAdapter;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;I)V

    .line 104
    iput-object p4, p0, Lorg/apache/ignite/events/TaskEvent;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 105
    iput-object p5, p0, Lorg/apache/ignite/events/TaskEvent;->taskName:Ljava/lang/String;

    .line 106
    iput-object p6, p0, Lorg/apache/ignite/events/TaskEvent;->taskClsName:Ljava/lang/String;

    .line 107
    iput-boolean p7, p0, Lorg/apache/ignite/events/TaskEvent;->internal:Z

    .line 108
    iput-object p8, p0, Lorg/apache/ignite/events/TaskEvent;->subjId:Ljava/util/UUID;

    .line 109
    return-void
.end method


# virtual methods
.method public internal()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/apache/ignite/events/TaskEvent;->internal:Z

    return v0
.end method

.method public shortDisplay()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/ignite/events/TaskEvent;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": taskName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/events/TaskEvent;->taskName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public subjectId()Ljava/util/UUID;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/ignite/events/TaskEvent;->subjId:Ljava/util/UUID;

    return-object v0
.end method

.method public taskClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/ignite/events/TaskEvent;->taskClsName:Ljava/lang/String;

    return-object v0
.end method

.method public taskName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/ignite/events/TaskEvent;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public taskSessionId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/ignite/events/TaskEvent;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 162
    const-class v0, Lorg/apache/ignite/events/TaskEvent;

    const-string v2, "nodeId8"

    invoke-virtual {p0}, Lorg/apache/ignite/events/TaskEvent;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "msg"

    invoke-virtual {p0}, Lorg/apache/ignite/events/TaskEvent;->message()Ljava/lang/String;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {p0}, Lorg/apache/ignite/events/TaskEvent;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "tstamp"

    invoke-virtual {p0}, Lorg/apache/ignite/events/TaskEvent;->timestamp()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v1, p0

    invoke-static/range {v0 .. v9}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
