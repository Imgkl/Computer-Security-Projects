.class Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorNodeEventsCollectorTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorNodeEventsCollectorJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;",
        "Ljava/util/Collection",
        "<+",
        "Lorg/apache/ignite/internal/visor/event/VisorGridEvent;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    const-class v0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;Z)V
    .locals 0
    .param p1, "arg"    # Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;
    .param p2, "debug"    # Z

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 188
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;ZLorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$1;

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;-><init>(Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;Lorg/apache/ignite/events/Event;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;
    .param p1, "x1"    # Lorg/apache/ignite/events/Event;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;->filterByTaskName(Lorg/apache/ignite/events/Event;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;Lorg/apache/ignite/events/Event;Lorg/apache/ignite/lang/IgniteUuid;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;
    .param p1, "x1"    # Lorg/apache/ignite/events/Event;
    .param p2, "x2"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;->filterByTaskSessionId(Lorg/apache/ignite/events/Event;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v0

    return v0
.end method

.method private containsInTaskName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "taskName"    # Ljava/lang/String;
    .param p2, "taskClsName"    # Ljava/lang/String;
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    .line 198
    sget-boolean v1, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 199
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 201
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 202
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 204
    .local v0, "idx":I
    if-ltz v0, :cond_2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "taskName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 207
    .end local v0    # "idx":I
    :goto_0
    return v1

    .restart local p1    # "taskName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method private filterByTaskName(Lorg/apache/ignite/events/Event;Ljava/lang/String;)Z
    .locals 6
    .param p1, "e"    # Lorg/apache/ignite/events/Event;
    .param p2, "taskName"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "compareTaskName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lorg/apache/ignite/events/TaskEvent;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 221
    check-cast v3, Lorg/apache/ignite/events/TaskEvent;

    .line 223
    .local v3, "te":Lorg/apache/ignite/events/TaskEvent;
    invoke-virtual {v3}, Lorg/apache/ignite/events/TaskEvent;->taskName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/ignite/events/TaskEvent;->taskClassName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, v0}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;->containsInTaskName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 238
    .end local v3    # "te":Lorg/apache/ignite/events/TaskEvent;
    :goto_0
    return v4

    .line 226
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lorg/apache/ignite/events/JobEvent;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, p1

    .line 227
    check-cast v2, Lorg/apache/ignite/events/JobEvent;

    .line 229
    .local v2, "je":Lorg/apache/ignite/events/JobEvent;
    invoke-virtual {v2}, Lorg/apache/ignite/events/JobEvent;->taskName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/ignite/events/JobEvent;->taskName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, v0}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;->containsInTaskName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 232
    .end local v2    # "je":Lorg/apache/ignite/events/JobEvent;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lorg/apache/ignite/events/DeploymentEvent;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, p1

    .line 233
    check-cast v1, Lorg/apache/ignite/events/DeploymentEvent;

    .line 235
    .local v1, "de":Lorg/apache/ignite/events/DeploymentEvent;
    invoke-virtual {v1}, Lorg/apache/ignite/events/DeploymentEvent;->alias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    goto :goto_0

    .line 238
    .end local v1    # "de":Lorg/apache/ignite/events/DeploymentEvent;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private filterByTaskSessionId(Lorg/apache/ignite/events/Event;Lorg/apache/ignite/lang/IgniteUuid;)Z
    .locals 4
    .param p1, "e"    # Lorg/apache/ignite/events/Event;
    .param p2, "taskSesId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 248
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/apache/ignite/events/TaskEvent;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 249
    check-cast v1, Lorg/apache/ignite/events/TaskEvent;

    .line 251
    .local v1, "te":Lorg/apache/ignite/events/TaskEvent;
    invoke-virtual {v1}, Lorg/apache/ignite/events/TaskEvent;->taskSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 260
    .end local v1    # "te":Lorg/apache/ignite/events/TaskEvent;
    :goto_0
    return v2

    .line 254
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/apache/ignite/events/JobEvent;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 255
    check-cast v0, Lorg/apache/ignite/events/JobEvent;

    .line 257
    .local v0, "je":Lorg/apache/ignite/events/JobEvent;
    invoke-virtual {v0}, Lorg/apache/ignite/events/JobEvent;->taskSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 260
    .end local v0    # "je":Lorg/apache/ignite/events/JobEvent;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 175
    check-cast p1, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;->run(Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected run(Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;)Ljava/util/Collection;
    .locals 31
    .param p1, "arg"    # Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/internal/visor/event/VisorGridEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;->timeArgument()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 v6, 0x0

    .line 267
    .local v6, "startEvtTime":J
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->nodeLocalMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v27

    .line 269
    .local v27, "nl":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;->keyOrder()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;->keyOrder()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;->keyOrder()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 272
    .local v4, "startEvtOrder":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteEx;->events()Lorg/apache/ignite/IgniteEvents;

    move-result-object v9

    new-instance v2, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob$1;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob$1;-><init>(Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;Ljava/lang/Long;Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;J)V

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-interface {v9, v2, v3}, Lorg/apache/ignite/IgniteEvents;->localQuery(Lorg/apache/ignite/lang/IgnitePredicate;[I)Ljava/util/Collection;

    move-result-object v23

    .line 282
    .local v23, "evts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/events/Event;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->size()I

    move-result v2

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 284
    .local v29, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/event/VisorGridEvent;>;"
    move-object/from16 v26, v4

    .line 286
    .local v26, "maxOrder":Ljava/lang/Long;
    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/ignite/events/Event;

    .line 287
    .local v22, "e":Lorg/apache/ignite/events/Event;
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/events/Event;->type()I

    move-result v10

    .line 288
    .local v10, "tid":I
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/events/Event;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v11

    .line 289
    .local v11, "id":Lorg/apache/ignite/lang/IgniteUuid;
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/events/Event;->name()Ljava/lang/String;

    move-result-object v12

    .line 290
    .local v12, "name":Ljava/lang/String;
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/events/Event;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v13

    .line 291
    .local v13, "nid":Ljava/util/UUID;
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/events/Event;->timestamp()J

    move-result-wide v14

    .line 292
    .local v14, "t":J
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/events/Event;->message()Ljava/lang/String;

    move-result-object v16

    .line 293
    .local v16, "msg":Ljava/lang/String;
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/events/Event;->shortDisplay()Ljava/lang/String;

    move-result-object v17

    .line 295
    .local v17, "shortDisplay":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/events/Event;->localOrder()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    .line 297
    move-object/from16 v0, v22

    instance-of v2, v0, Lorg/apache/ignite/events/TaskEvent;

    if-eqz v2, :cond_2

    move-object/from16 v30, v22

    .line 298
    check-cast v30, Lorg/apache/ignite/events/TaskEvent;

    .line 300
    .local v30, "te":Lorg/apache/ignite/events/TaskEvent;
    new-instance v9, Lorg/apache/ignite/internal/visor/event/VisorGridTaskEvent;

    invoke-virtual/range {v30 .. v30}, Lorg/apache/ignite/events/TaskEvent;->taskName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v30 .. v30}, Lorg/apache/ignite/events/TaskEvent;->taskClassName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v30 .. v30}, Lorg/apache/ignite/events/TaskEvent;->taskSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v20

    invoke-virtual/range {v30 .. v30}, Lorg/apache/ignite/events/TaskEvent;->internal()Z

    move-result v21

    invoke-direct/range {v9 .. v21}, Lorg/apache/ignite/internal/visor/event/VisorGridTaskEvent;-><init>(ILorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/UUID;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Z)V

    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 265
    .end local v4    # "startEvtOrder":Ljava/lang/Long;
    .end local v6    # "startEvtTime":J
    .end local v10    # "tid":I
    .end local v11    # "id":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "nid":Ljava/util/UUID;
    .end local v14    # "t":J
    .end local v16    # "msg":Ljava/lang/String;
    .end local v17    # "shortDisplay":Ljava/lang/String;
    .end local v22    # "e":Lorg/apache/ignite/events/Event;
    .end local v23    # "evts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/events/Event;>;"
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v26    # "maxOrder":Ljava/lang/Long;
    .end local v27    # "nl":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v29    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/event/VisorGridEvent;>;"
    .end local v30    # "te":Lorg/apache/ignite/events/TaskEvent;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;->timeArgument()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sub-long v6, v2, v20

    goto/16 :goto_0

    .line 269
    .restart local v6    # "startEvtTime":J
    .restart local v27    # "nl":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_1
    const-wide/16 v2, -0x1

    goto/16 :goto_1

    .line 303
    .restart local v4    # "startEvtOrder":Ljava/lang/Long;
    .restart local v10    # "tid":I
    .restart local v11    # "id":Lorg/apache/ignite/lang/IgniteUuid;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "nid":Ljava/util/UUID;
    .restart local v14    # "t":J
    .restart local v16    # "msg":Ljava/lang/String;
    .restart local v17    # "shortDisplay":Ljava/lang/String;
    .restart local v22    # "e":Lorg/apache/ignite/events/Event;
    .restart local v23    # "evts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/events/Event;>;"
    .restart local v24    # "i$":Ljava/util/Iterator;
    .restart local v26    # "maxOrder":Ljava/lang/Long;
    .restart local v29    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/event/VisorGridEvent;>;"
    :cond_2
    move-object/from16 v0, v22

    instance-of v2, v0, Lorg/apache/ignite/events/JobEvent;

    if-eqz v2, :cond_3

    move-object/from16 v25, v22

    .line 304
    check-cast v25, Lorg/apache/ignite/events/JobEvent;

    .line 306
    .local v25, "je":Lorg/apache/ignite/events/JobEvent;
    new-instance v9, Lorg/apache/ignite/internal/visor/event/VisorGridJobEvent;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/events/JobEvent;->taskName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/events/JobEvent;->taskClassName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/events/JobEvent;->taskSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v20

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/events/JobEvent;->jobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v21

    invoke-direct/range {v9 .. v21}, Lorg/apache/ignite/internal/visor/event/VisorGridJobEvent;-><init>(ILorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/UUID;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V

    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 309
    .end local v25    # "je":Lorg/apache/ignite/events/JobEvent;
    :cond_3
    move-object/from16 v0, v22

    instance-of v2, v0, Lorg/apache/ignite/events/DeploymentEvent;

    if-eqz v2, :cond_4

    move-object/from16 v8, v22

    .line 310
    check-cast v8, Lorg/apache/ignite/events/DeploymentEvent;

    .line 312
    .local v8, "de":Lorg/apache/ignite/events/DeploymentEvent;
    new-instance v9, Lorg/apache/ignite/internal/visor/event/VisorGridDeploymentEvent;

    invoke-virtual {v8}, Lorg/apache/ignite/events/DeploymentEvent;->alias()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v9 .. v18}, Lorg/apache/ignite/internal/visor/event/VisorGridDeploymentEvent;-><init>(ILorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/UUID;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 314
    .end local v8    # "de":Lorg/apache/ignite/events/DeploymentEvent;
    :cond_4
    move-object/from16 v0, v22

    instance-of v2, v0, Lorg/apache/ignite/events/DiscoveryEvent;

    if-eqz v2, :cond_5

    move-object/from16 v8, v22

    .line 315
    check-cast v8, Lorg/apache/ignite/events/DiscoveryEvent;

    .line 317
    .local v8, "de":Lorg/apache/ignite/events/DiscoveryEvent;
    invoke-virtual {v8}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v28

    .line 319
    .local v28, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface/range {v28 .. v28}, Lorg/apache/ignite/cluster/ClusterNode;->addresses()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 321
    .local v19, "addr":Ljava/lang/String;
    new-instance v9, Lorg/apache/ignite/internal/visor/event/VisorGridDiscoveryEvent;

    invoke-interface/range {v28 .. v28}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v18

    invoke-interface/range {v28 .. v28}, Lorg/apache/ignite/cluster/ClusterNode;->isDaemon()Z

    move-result v20

    invoke-direct/range {v9 .. v20}, Lorg/apache/ignite/internal/visor/event/VisorGridDiscoveryEvent;-><init>(ILorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/UUID;JLjava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Z)V

    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 325
    .end local v8    # "de":Lorg/apache/ignite/events/DiscoveryEvent;
    .end local v19    # "addr":Ljava/lang/String;
    .end local v28    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_5
    new-instance v9, Lorg/apache/ignite/internal/visor/event/VisorGridEvent;

    invoke-direct/range {v9 .. v17}, Lorg/apache/ignite/internal/visor/event/VisorGridEvent;-><init>(ILorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/UUID;JLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 329
    .end local v10    # "tid":I
    .end local v11    # "id":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "nid":Ljava/util/UUID;
    .end local v14    # "t":J
    .end local v16    # "msg":Ljava/lang/String;
    .end local v17    # "shortDisplay":Ljava/lang/String;
    .end local v22    # "e":Lorg/apache/ignite/events/Event;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;->keyOrder()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface/range {v29 .. v29}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 330
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;->keyOrder()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_7
    return-object v29
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    const-class v0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
