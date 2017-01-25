.class public Lorg/apache/ignite/events/JobEvent;
.super Lorg/apache/ignite/events/EventAdapter;
.source "JobEvent.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private jobId:Lorg/apache/ignite/lang/IgniteUuid;

.field private sesId:Lorg/apache/ignite/lang/IgniteUuid;

.field private taskClsName:Ljava/lang/String;

.field private taskName:Ljava/lang/String;

.field private taskNode:Lorg/apache/ignite/cluster/ClusterNode;

.field private taskSubjId:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lorg/apache/ignite/events/JobEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/events/JobEvent;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lorg/apache/ignite/events/EventAdapter;-><init>()V

    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;I)V
    .locals 0
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/events/EventAdapter;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;I)V

    .line 112
    return-void
.end method


# virtual methods
.method public jobId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/ignite/events/JobEvent;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public jobId(Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 1
    .param p1, "jobId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 187
    sget-boolean v0, Lorg/apache/ignite/events/JobEvent;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 189
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/events/JobEvent;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 190
    return-void
.end method

.method public shortDisplay()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/ignite/events/JobEvent;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": taskName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/events/JobEvent;->taskName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public taskClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/ignite/events/JobEvent;->taskClsName:Ljava/lang/String;

    return-object v0
.end method

.method public taskClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskClsName"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lorg/apache/ignite/events/JobEvent;->taskClsName:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public taskName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/ignite/events/JobEvent;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public taskName(Ljava/lang/String;)V
    .locals 1
    .param p1, "taskName"    # Ljava/lang/String;

    .prologue
    .line 156
    sget-boolean v0, Lorg/apache/ignite/events/JobEvent;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 158
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/events/JobEvent;->taskName:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public taskNode()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/ignite/events/JobEvent;->taskNode:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method public taskNode(Lorg/apache/ignite/cluster/ClusterNode;)V
    .locals 0
    .param p1, "taskNode"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 207
    iput-object p1, p0, Lorg/apache/ignite/events/JobEvent;->taskNode:Lorg/apache/ignite/cluster/ClusterNode;

    .line 208
    return-void
.end method

.method public taskSessionId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/ignite/events/JobEvent;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public taskSessionId(Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 1
    .param p1, "sesId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 176
    sget-boolean v0, Lorg/apache/ignite/events/JobEvent;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 178
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/events/JobEvent;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 179
    return-void
.end method

.method public taskSubjectId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/ignite/events/JobEvent;->taskSubjId:Ljava/util/UUID;

    return-object v0
.end method

.method public taskSubjectId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "taskSubjId"    # Ljava/util/UUID;

    .prologue
    .line 225
    iput-object p1, p0, Lorg/apache/ignite/events/JobEvent;->taskSubjId:Ljava/util/UUID;

    .line 226
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 230
    const-class v0, Lorg/apache/ignite/events/JobEvent;

    const-string v2, "nodeId8"

    invoke-virtual {p0}, Lorg/apache/ignite/events/JobEvent;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "msg"

    invoke-virtual {p0}, Lorg/apache/ignite/events/JobEvent;->message()Ljava/lang/String;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {p0}, Lorg/apache/ignite/events/JobEvent;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "tstamp"

    invoke-virtual {p0}, Lorg/apache/ignite/events/JobEvent;->timestamp()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v1, p0

    invoke-static/range {v0 .. v9}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
