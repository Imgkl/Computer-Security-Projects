.class public Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;
.super Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;
.source "GridTaskCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$5;,
        Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;,
        Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DFLT_MAX_TASK_RESULTS:I = 0x2800

.field private static final SUPPORTED_COMMANDS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final maxTaskResults:I

.field private final taskDescs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final topicIdGen:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    const-class v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->$assertionsDisabled:Z

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    sget-object v3, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->EXE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v3, v0, v2

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->RESULT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->NOOP:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sealList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->SUPPORTED_COMMANDS:Ljava/util/Collection;

    return-void

    :cond_0
    move v0, v2

    .line 59
    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 6
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 67
    const-string v0, "IGNITE_REST_MAX_TASK_RESULTS"

    const/16 v1, 0x2800

    invoke-static {v0, v1}, Lorg/apache/ignite/IgniteSystemProperties;->getInteger(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->maxTaskResults:I

    .line 70
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->maxTaskResults:I

    const/16 v2, 0x10

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x4

    sget-object v5, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->PER_SEGMENT_Q:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;-><init>(IIFILorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->taskDescs:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->topicIdGen:Ljava/util/concurrent/atomic/AtomicLong;

    .line 82
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_REST:Lorg/apache/ignite/internal/GridTopic;

    new-instance v2, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$1;

    invoke-direct {v2, p0, p1}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$1;-><init>(Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;Lorg/apache/ignite/internal/GridKernalContext;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->taskDescs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method private handleAsyncUnsafe(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 35
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 153
    sget-boolean v5, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    move-object/from16 v0, p1

    instance-of v5, v0, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid command for topology handler: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 155
    :cond_0
    sget-boolean v5, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    sget-object v5, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->SUPPORTED_COMMANDS:Ljava/util/Collection;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->command()Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 157
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 158
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Handling task REST request: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v25, p1

    .line 160
    check-cast v25, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;

    .line 162
    .local v25, "req0":Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;
    new-instance v19, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct/range {v19 .. v19}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 164
    .local v19, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    new-instance v18, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    invoke-direct/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;-><init>()V

    .line 166
    .local v18, "res":Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    new-instance v17, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;

    invoke-direct/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;-><init>()V

    .line 169
    .local v17, "taskRestRes":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v11, 0x7e

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->setId(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->destinationId()Ljava/util/UUID;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->destinationId()Ljava/util/UUID;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->destinationId()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    if-nez v5, :cond_4

    :cond_3
    const/16 v16, 0x1

    .line 174
    .local v16, "locExec":Z
    :goto_0
    sget-object v5, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$5;->$SwitchMap$org$apache$ignite$internal$processors$rest$GridRestCommand:[I

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->command()Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ordinal()I

    move-result v11

    aget v5, v5, v11

    packed-switch v5, :pswitch_data_0

    .line 369
    sget-boolean v5, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->$assertionsDisabled:Z

    if-nez v5, :cond_7

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid command for task handler: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 171
    .end local v16    # "locExec":Z
    :cond_4
    const/16 v16, 0x0

    goto :goto_0

    .line 176
    .restart local v16    # "locExec":Z
    :pswitch_0
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->async()Z

    move-result v15

    .line 178
    .local v15, "async":Z
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->taskName()Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "name":Ljava/lang/String;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 181
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    const-string v11, "name"

    invoke-static {v11}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->missingParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 183
    :cond_5
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->params()Ljava/util/List;

    move-result-object v7

    .line 185
    .local v7, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->timeout()J

    move-result-wide v8

    .line 187
    .local v8, "timeout":J
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->clientId()Ljava/util/UUID;

    move-result-object v10

    .line 191
    .local v10, "clientId":Ljava/util/UUID;
    if-eqz v16, :cond_b

    .line 192
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v5

    sget-object v11, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBJ_ID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-virtual {v5, v11, v10}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContextIfNotNull(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v5

    sget-object v11, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_TIMEOUT:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 195
    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_9

    const/4 v5, 0x0

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 197
    .local v4, "arg":Ljava/lang/Object;
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v5

    invoke-virtual {v5, v6, v4}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execute(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v30

    .line 211
    .end local v4    # "arg":Ljava/lang/Object;
    .local v30, "taskFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    :goto_2
    if-eqz v15, :cond_6

    .line 212
    if-eqz v16, :cond_c

    move-object/from16 v5, v30

    .line 213
    check-cast v5, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->getTaskSession()Lorg/apache/ignite/compute/ComputeTaskSession;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/compute/ComputeTaskSession;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v32

    .line 215
    .local v32, "tid":Lorg/apache/ignite/lang/IgniteUuid;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->taskDescs:Ljava/util/Map;

    new-instance v11, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v34

    invoke-direct {v11, v12, v13, v14, v0}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;-><init>(ZLjava/lang/Object;Ljava/lang/Throwable;Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$1;)V

    move-object/from16 v0, v32

    invoke-interface {v5, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/lang/IgniteUuid;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v11, 0x7e

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->setId(Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->setResponse(Ljava/lang/Object;)V

    .line 224
    .end local v32    # "tid":Lorg/apache/ignite/lang/IgniteUuid;
    :goto_3
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z

    .line 227
    :cond_6
    new-instance v11, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;

    move-object/from16 v12, p0

    move-object v13, v6

    move-object/from16 v14, p1

    invoke-direct/range {v11 .. v19}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;-><init>(Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;Ljava/lang/String;Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;ZZLorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;Lorg/apache/ignite/internal/processors/rest/GridRestResponse;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;)V

    move-object/from16 v0, v30

    invoke-interface {v0, v11}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 372
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v8    # "timeout":J
    .end local v10    # "clientId":Ljava/util/UUID;
    .end local v15    # "async":Z
    .end local v30    # "taskFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 373
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Handled task REST request [res="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", req="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 375
    :cond_8
    return-object v19

    .line 195
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v8    # "timeout":J
    .restart local v10    # "clientId":Ljava/util/UUID;
    .restart local v15    # "async":Z
    :cond_9
    invoke-interface {v7}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 202
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->destinationId()Ljava/util/UUID;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/ignite/internal/util/typedef/F;->nodeForNodeId(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v11

    invoke-interface {v5, v11}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v24

    .line 204
    .local v24, "prj":Lorg/apache/ignite/cluster/ClusterGroup;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v5

    sget-object v11, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_NO_FAILOVER:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v12

    sget-object v13, Lorg/apache/ignite/internal/GridClosureCallMode;->BALANCE:Lorg/apache/ignite/internal/GridClosureCallMode;

    new-instance v5, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;-><init>(Ljava/lang/String;Ljava/util/List;JLjava/util/UUID;Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$1;)V

    invoke-interface/range {v24 .. v24}, Lorg/apache/ignite/cluster/ClusterGroup;->nodes()Ljava/util/Collection;

    move-result-object v11

    invoke-virtual {v12, v13, v5, v11}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v30

    .restart local v30    # "taskFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    goto/16 :goto_2

    .line 222
    .end local v24    # "prj":Lorg/apache/ignite/cluster/ClusterGroup;
    :cond_c
    const-string v5, "Asynchronous task execution is not supported for routing request."

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->setError(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 284
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v8    # "timeout":J
    .end local v10    # "clientId":Ljava/util/UUID;
    .end local v15    # "async":Z
    .end local v30    # "taskFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    :pswitch_1
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->taskId()Ljava/lang/String;

    move-result-object v22

    .line 286
    .local v22, "id":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 287
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    const-string v11, "id"

    invoke-static {v11}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->missingParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 289
    :cond_d
    new-instance v28, Ljava/util/StringTokenizer;

    const-string v5, "~"

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .local v28, "st":Ljava/util/StringTokenizer;
    invoke-virtual/range {v28 .. v28}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    const/4 v11, 0x2

    if-eq v5, v11, :cond_e

    .line 292
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to parse id parameter: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 294
    :cond_e
    invoke-virtual/range {v28 .. v28}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v33

    .line 295
    .local v33, "tidParam":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v27

    .line 297
    .local v27, "resHolderIdParam":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->setId(Ljava/lang/String;)V

    .line 300
    :try_start_0
    invoke-static/range {v33 .. v33}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-static/range {v33 .. v33}, Lorg/apache/ignite/lang/IgniteUuid;->fromString(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v32

    .line 302
    .restart local v32    # "tid":Lorg/apache/ignite/lang/IgniteUuid;
    :goto_5
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-static/range {v27 .. v27}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v26

    .line 304
    .local v26, "resHolderId":Ljava/util/UUID;
    :goto_6
    if-eqz v32, :cond_f

    if-nez v26, :cond_13

    .line 305
    :cond_f
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to parse id parameter: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v26    # "resHolderId":Ljava/util/UUID;
    .end local v32    # "tid":Lorg/apache/ignite/lang/IgniteUuid;
    :catch_0
    move-exception v21

    .line 348
    .local v21, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to parse parameters [taskId="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ", taskResHolderId="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ", err="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v11, 0x5d

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 351
    .local v23, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 352
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 354
    :cond_10
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 300
    .end local v21    # "e":Ljava/lang/IllegalArgumentException;
    .end local v23    # "msg":Ljava/lang/String;
    :cond_11
    const/16 v32, 0x0

    goto :goto_5

    .line 302
    .restart local v32    # "tid":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_12
    const/16 v26, 0x0

    goto :goto_6

    .line 307
    .restart local v26    # "resHolderId":Ljava/util/UUID;
    :cond_13
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 308
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->taskDescs:Ljava/util/Map;

    move-object/from16 v0, v32

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;

    .line 310
    .local v20, "desc":Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;
    if-nez v20, :cond_14

    .line 311
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Task with provided id has never been started on provided node [taskId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", taskResHolderId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 314
    :cond_14
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;->finished()Z

    move-result v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->setFinished(Z)V

    .line 316
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;->error()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 317
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;->error()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 319
    :cond_15
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;->result()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->setResult(Ljava/lang/Object;)V

    .line 321
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->setResponse(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 357
    .end local v20    # "desc":Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;
    :goto_7
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 324
    :cond_16
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->requestTaskResult(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v29

    .line 326
    .local v29, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;>;"
    invoke-virtual/range {v29 .. v29}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 327
    new-instance v11, Lorg/apache/ignite/IgniteCheckedException;

    invoke-virtual/range {v29 .. v29}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v11, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 329
    :cond_17
    invoke-virtual/range {v29 .. v29}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;

    .line 331
    .local v31, "taskRes":Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;
    sget-boolean v5, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->$assertionsDisabled:Z

    if-nez v5, :cond_18

    if-nez v31, :cond_18

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 333
    :cond_18
    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->found()Z

    move-result v5

    if-nez v5, :cond_19

    .line 334
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Task with provided id has never been started on provided node [taskId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", taskResHolderId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 337
    :cond_19
    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->finished()Z

    move-result v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->setFinished(Z)V

    .line 339
    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->error()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1a

    .line 340
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->error()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 342
    :cond_1a
    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->result()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->setResult(Ljava/lang/Object;)V

    .line 344
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->setResponse(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_7

    .line 363
    .end local v22    # "id":Ljava/lang/String;
    .end local v26    # "resHolderId":Ljava/util/UUID;
    .end local v27    # "resHolderIdParam":Ljava/lang/String;
    .end local v28    # "st":Ljava/util/StringTokenizer;
    .end local v29    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;>;"
    .end local v31    # "taskRes":Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;
    .end local v32    # "tid":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v33    # "tidParam":Ljava/lang/String;
    :pswitch_2
    new-instance v5, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private requestTaskResult(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 24
    .param p1, "resHolderId"    # Ljava/util/UUID;
    .param p2, "taskId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v19

    .line 386
    .local v19, "taskNode":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v19, :cond_0

    .line 387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task result holder has left grid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v8

    .line 513
    :goto_0
    return-object v8

    .line 390
    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->t2()Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v8

    .line 392
    .local v8, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;>;"
    new-instance v7, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v7}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 393
    .local v7, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v9

    .line 395
    .local v9, "cond":Ljava/util/concurrent/locks/Condition;
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$3;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$3;-><init>(Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;Ljava/util/UUID;Ljava/util/concurrent/locks/Lock;Lorg/apache/ignite/lang/IgniteBiTuple;Ljava/util/concurrent/locks/Condition;)V

    .line 431
    .local v4, "msgLsnr":Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    new-instance v10, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$4;

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v7

    move-object v14, v8

    move-object v15, v9

    invoke-direct/range {v10 .. v15}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$4;-><init>(Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;Ljava/util/UUID;Ljava/util/concurrent/locks/Lock;Lorg/apache/ignite/lang/IgniteBiTuple;Ljava/util/concurrent/locks/Condition;)V

    .line 456
    .local v10, "discoLsnr":Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;
    sget-object v5, Lorg/apache/ignite/internal/GridTopic;->TOPIC_REST:Lorg/apache/ignite/internal/GridTopic;

    const-string v6, "task-result"

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->topicIdGen:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v12

    invoke-virtual {v5, v6, v12, v13}, Lorg/apache/ignite/internal/GridTopic;->topic(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v22

    .line 459
    .local v22, "topic":Ljava/lang/Object;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v4}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 463
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v23

    .line 465
    .local v23, "topicBytes":[B
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/GridTopic;->TOPIC_REST:Lorg/apache/ignite/internal/GridTopic;

    new-instance v11, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v11, v0, v1, v2}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;[B)V

    sget-object v12, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v6, v11, v12}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 478
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v5

    const/16 v6, 0xc

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/16 v13, 0xb

    aput v13, v11, v12

    invoke-virtual {v5, v10, v6, v11}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;I[I)V

    .line 481
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v19

    .line 483
    if-nez v19, :cond_2

    .line 484
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task result holder has left grid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    .line 512
    .end local v8    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v4}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    .line 513
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [I

    invoke-virtual {v5, v10, v6}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    goto/16 :goto_0

    .line 467
    .end local v23    # "topicBytes":[B
    .restart local v8    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;>;"
    :catch_0
    move-exception v16

    .line 468
    .local v16, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send task result request [resHolderId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 471
    .local v17, "errMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 472
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 474
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v8

    .line 512
    .end local v8    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v4}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    .line 513
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [I

    invoke-virtual {v5, v10, v6}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    goto/16 :goto_0

    .line 487
    .end local v16    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v17    # "errMsg":Ljava/lang/String;
    .restart local v8    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;>;"
    .restart local v23    # "topicBytes":[B
    :cond_2
    :try_start_4
    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 490
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v20

    .line 492
    .local v20, "netTimeout":J
    invoke-virtual {v8}, Lorg/apache/ignite/lang/IgniteBiTuple;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 493
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v20

    invoke-interface {v9, v0, v1, v5}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 495
    :cond_3
    invoke-virtual {v8}, Lorg/apache/ignite/lang/IgniteBiTuple;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 496
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timed out waiting for task result (consider increasing \'networkTimeout\' configuration property) [resHolderId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", netTimeout="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lorg/apache/ignite/lang/IgniteBiTuple;->set1(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 508
    :cond_4
    :try_start_6
    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 512
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v4}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    .line 513
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [I

    invoke-virtual {v5, v10, v6}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    goto/16 :goto_0

    .line 502
    .end local v20    # "netTimeout":J
    :catch_1
    move-exception v18

    .line 503
    .local v18, "ignored":Ljava/lang/InterruptedException;
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 505
    const-string v5, "Interrupted while waiting for task result."

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v8

    .line 508
    .end local v8    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;>;"
    :try_start_8
    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 512
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v4}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    .line 513
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [I

    invoke-virtual {v5, v10, v6}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    goto/16 :goto_0

    .line 508
    .end local v18    # "ignored":Ljava/lang/InterruptedException;
    .restart local v8    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;>;"
    :catchall_0
    move-exception v5

    :try_start_9
    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 512
    .end local v8    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;>;"
    .end local v23    # "topicBytes":[B
    :catchall_1
    move-exception v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0, v4}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    .line 513
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v6

    const/4 v11, 0x0

    new-array v11, v11, [I

    invoke-virtual {v6, v10, v11}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    throw v5
.end method


# virtual methods
.method public handleAsync(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 5
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->handleAsyncUnsafe(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 142
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handled task REST request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to execute task command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 139
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handled task REST request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handled task REST request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_1
    throw v1
.end method

.method public supportedCommands()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->SUPPORTED_COMMANDS:Ljava/util/Collection;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    const-class v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
