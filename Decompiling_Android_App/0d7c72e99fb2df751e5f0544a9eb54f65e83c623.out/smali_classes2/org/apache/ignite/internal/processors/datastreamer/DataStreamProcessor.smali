.class public Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "DataStreamProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/GridProcessorAdapter;"
    }
.end annotation


# instance fields
.field private final busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

.field private final flushQ:Ljava/util/concurrent/DelayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/DelayQueue",
            "<",
            "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private flusher:Ljava/lang/Thread;

.field private ldrs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final marsh:Lorg/apache/ignite/marshaller/Marshaller;


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 3
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 63
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 45
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->ldrs:Ljava/util/Collection;

    .line 48
    new-instance v0, Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    .line 54
    new-instance v0, Ljava/util/concurrent/DelayQueue;

    invoke-direct {v0}, Ljava/util/concurrent/DelayQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->flushQ:Ljava/util/concurrent/DelayQueue;

    .line 65
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_DATASTREAM:Lorg/apache/ignite/internal/GridTopic;

    new-instance v2, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$1;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$1;-><init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 73
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->processRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;)Ljava/util/concurrent/DelayQueue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->flushQ:Ljava/util/concurrent/DelayQueue;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->ldrs:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method private processRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;)V
    .locals 26
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;

    .prologue
    .line 177
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v2

    if-nez v2, :cond_1

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring data load request (node is stopping): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing data load request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->responseTopicBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v19

    .line 201
    .local v19, "topic":Ljava/lang/Object;
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->forceLocalDeployment()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 202
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v24

    .line 231
    .local v24, "clsLdr":Ljava/lang/ClassLoader;
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->updaterBytes()[B

    move-result-object v3

    move-object/from16 v0, v24

    invoke-interface {v2, v3, v0}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/ignite/stream/StreamReceiver;
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 241
    .local v16, "updater":Lorg/apache/ignite/stream/StreamReceiver;, "Lorg/apache/ignite/stream/StreamReceiver<TK;TV;>;"
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->entries()Ljava/util/Collection;

    move-result-object v13

    .line 243
    .local v13, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;"
    new-instance v9, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->cacheName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->ignoreDeploymentOwnership()Z

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->skipStore()Z

    move-result v15

    invoke-direct/range {v9 .. v16}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/Collection;ZZLorg/apache/ignite/stream/StreamReceiver;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 251
    .local v9, "job":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;
    const/16 v22, 0x0

    .line 254
    .local v22, "err":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->call()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 262
    :goto_2
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->requestId()J

    move-result-wide v20

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->forceLocalDeployment()Z

    move-result v23

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    invoke-direct/range {v17 .. v23}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->sendResponse(Ljava/util/UUID;Ljava/lang/Object;JLjava/lang/Throwable;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto/16 :goto_0

    .line 193
    .end local v9    # "job":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;
    .end local v13    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;"
    .end local v16    # "updater":Lorg/apache/ignite/stream/StreamReceiver;, "Lorg/apache/ignite/stream/StreamReceiver<TK;TV;>;"
    .end local v19    # "topic":Ljava/lang/Object;
    .end local v22    # "err":Ljava/lang/Exception;
    .end local v24    # "clsLdr":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v8

    .line 194
    .local v8, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to unmarshal topic from request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto/16 :goto_0

    .line 204
    .end local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v19    # "topic":Ljava/lang/Object;
    :cond_3
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->sampleClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->sampleClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->userVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->participants()Ljava/util/Map;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v10}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getGlobalDeployment(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v25

    .line 214
    .local v25, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-nez v25, :cond_4

    .line 215
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->requestId()J

    move-result-wide v6

    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get deployment for request [sndId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", req="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v19

    invoke-direct/range {v3 .. v9}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->sendResponse(Ljava/util/UUID;Ljava/lang/Object;JLjava/lang/Throwable;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto/16 :goto_0

    .line 225
    :cond_4
    :try_start_9
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v24

    .restart local v24    # "clsLdr":Ljava/lang/ClassLoader;
    goto/16 :goto_1

    .line 233
    .end local v25    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :catch_1
    move-exception v8

    .line 234
    .restart local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to unmarshal message [nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->requestId()J

    move-result-wide v6

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v19

    invoke-direct/range {v3 .. v9}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->sendResponse(Ljava/util/UUID;Ljava/lang/Object;JLjava/lang/Throwable;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto/16 :goto_0

    .line 256
    .end local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v9    # "job":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;
    .restart local v13    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;"
    .restart local v16    # "updater":Lorg/apache/ignite/stream/StreamReceiver;, "Lorg/apache/ignite/stream/StreamReceiver<TK;TV;>;"
    .restart local v22    # "err":Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 257
    .local v8, "e":Ljava/lang/Exception;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Failed to finish update job."

    invoke-static {v2, v3, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 259
    move-object/from16 v22, v8

    goto/16 :goto_2

    .line 265
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "job":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;
    .end local v13    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;"
    .end local v16    # "updater":Lorg/apache/ignite/stream/StreamReceiver;, "Lorg/apache/ignite/stream/StreamReceiver<TK;TV;>;"
    .end local v19    # "topic":Ljava/lang/Object;
    .end local v22    # "err":Ljava/lang/Exception;
    .end local v24    # "clsLdr":Ljava/lang/ClassLoader;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v2
.end method

.method private sendResponse(Ljava/util/UUID;Ljava/lang/Object;JLjava/lang/Throwable;Z)V
    .locals 7
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "resTopic"    # Ljava/lang/Object;
    .param p3, "reqId"    # J
    .param p5, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "forceLocDep"    # Z

    .prologue
    .line 281
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor<TK;TV;>;"
    if-eqz p5, :cond_1

    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-interface {v3, p5}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 289
    .local v1, "errBytes":[B
    :goto_0
    new-instance v2, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerResponse;

    invoke-direct {v2, p3, p4, v1, p6}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerResponse;-><init>(J[BZ)V

    .line 292
    .local v2, "res":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerResponse;
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->PUBLIC_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-virtual {v3, p1, p2, v2, v4}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Ljava/util/UUID;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 300
    .end local v1    # "errBytes":[B
    .end local v2    # "res":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerResponse;
    :cond_0
    :goto_1
    return-void

    .line 281
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v4, "Failed to marshal message."

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 294
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "errBytes":[B
    .restart local v2    # "res":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerResponse;
    :catch_1
    move-exception v0

    .line 295
    .restart local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->alive(Ljava/util/UUID;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 296
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to respond to node [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", res="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 297
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Node has left the grid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public dataStreamer(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
    .locals 3
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to create data streamer (grid is stopping)."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_0
    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->flushQ:Ljava/util/concurrent/DelayQueue;

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;Ljava/util/concurrent/DelayQueue;)V

    .line 152
    .local v0, "ldr":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->ldrs:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->internalFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$3;

    invoke-direct {v2, p0, v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$3;-><init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)V

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v0

    .end local v0    # "ldr":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v1
.end method

.method public onKernalStop(Z)V
    .locals 6
    .param p1, "cancel"    # Z

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor<TK;TV;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/GridTopic;->TOPIC_DATASTREAM:Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Lorg/apache/ignite/internal/GridTopic;)Z

    .line 117
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->block()V

    .line 119
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->flusher:Ljava/lang/Thread;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 120
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->flusher:Ljava/lang/Thread;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 122
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->ldrs:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    .line 123
    .local v2, "ldr":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<**>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 124
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing active data streamer on grid stop [ldr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cancel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 127
    :cond_2
    :try_start_0
    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->closeEx(Z)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interrupted while waiting for completion of the data streamer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 132
    .end local v0    # "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :catch_1
    move-exception v0

    .line 133
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close data streamer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 137
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v2    # "ldr":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<**>;"
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v4, "Stopped data streamer processor."

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public printMemoryStats()V
    .locals 3

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor<TK;TV;>;"
    const/4 v2, 0x0

    .line 304
    const-string v0, ">>>"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> Data streamer processor memory stats [grid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   ldrsSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->ldrs:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    return-void
.end method

.method public start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    new-instance v0, Lorg/apache/ignite/thread/IgniteThread;

    new-instance v1, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$2;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "grid-data-loader-flusher"

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$2;-><init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    invoke-direct {v0, v1}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->flusher:Ljava/lang/Thread;

    .line 104
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->flusher:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 106
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Started data streamer processor."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
