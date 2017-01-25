.class public Lorg/apache/ignite/internal/visor/util/VisorEventMapper;
.super Ljava/lang/Object;
.source "VisorEventMapper.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteClosure;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteClosure",
        "<",
        "Lorg/apache/ignite/events/Event;",
        "Lorg/apache/ignite/internal/visor/event/VisorGridEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, Lorg/apache/ignite/events/Event;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/util/VisorEventMapper;->apply(Lorg/apache/ignite/events/Event;)Lorg/apache/ignite/internal/visor/event/VisorGridEvent;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/events/Event;)Lorg/apache/ignite/internal/visor/event/VisorGridEvent;
    .locals 10
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 73
    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->timestamp()J

    move-result-wide v6

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->message()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->shortDisplay()Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lorg/apache/ignite/internal/visor/util/VisorEventMapper;->map(Lorg/apache/ignite/events/Event;ILorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/UUID;JLjava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/internal/visor/event/VisorGridEvent;

    move-result-object v0

    return-object v0
.end method

.method protected map(Lorg/apache/ignite/events/Event;ILorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/UUID;JLjava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/internal/visor/event/VisorGridEvent;
    .locals 18
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;
    .param p2, "type"    # I
    .param p3, "id"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "nid"    # Ljava/util/UUID;
    .param p6, "ts"    # J
    .param p8, "msg"    # Ljava/lang/String;
    .param p9, "shortDisplay"    # Ljava/lang/String;

    .prologue
    .line 48
    move-object/from16 v0, p1

    instance-of v3, v0, Lorg/apache/ignite/events/TaskEvent;

    if-eqz v3, :cond_0

    move-object/from16 v17, p1

    .line 49
    check-cast v17, Lorg/apache/ignite/events/TaskEvent;

    .line 51
    .local v17, "te":Lorg/apache/ignite/events/TaskEvent;
    new-instance v3, Lorg/apache/ignite/internal/visor/event/VisorGridTaskEvent;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/events/TaskEvent;->taskName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/events/TaskEvent;->taskClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/events/TaskEvent;->taskSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v14

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/events/TaskEvent;->internal()Z

    move-result v15

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v3 .. v15}, Lorg/apache/ignite/internal/visor/event/VisorGridTaskEvent;-><init>(ILorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/UUID;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Z)V

    .line 68
    .end local v17    # "te":Lorg/apache/ignite/events/TaskEvent;
    :goto_0
    return-object v3

    .line 55
    :cond_0
    move-object/from16 v0, p1

    instance-of v3, v0, Lorg/apache/ignite/events/JobEvent;

    if-eqz v3, :cond_1

    move-object/from16 v16, p1

    .line 56
    check-cast v16, Lorg/apache/ignite/events/JobEvent;

    .line 58
    .local v16, "je":Lorg/apache/ignite/events/JobEvent;
    new-instance v3, Lorg/apache/ignite/internal/visor/event/VisorGridJobEvent;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/events/JobEvent;->taskName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/events/JobEvent;->taskClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/events/JobEvent;->taskSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v14

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/events/JobEvent;->jobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v15

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v3 .. v15}, Lorg/apache/ignite/internal/visor/event/VisorGridJobEvent;-><init>(ILorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/UUID;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V

    goto :goto_0

    .line 62
    .end local v16    # "je":Lorg/apache/ignite/events/JobEvent;
    :cond_1
    move-object/from16 v0, p1

    instance-of v3, v0, Lorg/apache/ignite/events/DeploymentEvent;

    if-eqz v3, :cond_2

    move-object/from16 v2, p1

    .line 63
    check-cast v2, Lorg/apache/ignite/events/DeploymentEvent;

    .line 65
    .local v2, "de":Lorg/apache/ignite/events/DeploymentEvent;
    new-instance v3, Lorg/apache/ignite/internal/visor/event/VisorGridDeploymentEvent;

    invoke-virtual {v2}, Lorg/apache/ignite/events/DeploymentEvent;->alias()Ljava/lang/String;

    move-result-object v12

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v3 .. v12}, Lorg/apache/ignite/internal/visor/event/VisorGridDeploymentEvent;-><init>(ILorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/UUID;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v2    # "de":Lorg/apache/ignite/events/DeploymentEvent;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
