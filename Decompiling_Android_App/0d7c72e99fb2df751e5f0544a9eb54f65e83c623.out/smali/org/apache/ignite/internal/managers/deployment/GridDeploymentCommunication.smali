.class Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;
.super Ljava/lang/Object;
.source "GridDeploymentCommunication.java"


# annotations
.annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final activeReqNodeIds:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation
.end field

.field private final busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

.field private final ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field private final log:Lorg/apache/ignite/IgniteLogger;

.field private final marsh:Lorg/apache/ignite/marshaller/Marshaller;

.field private final peerLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/IgniteLogger;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->activeReqNodeIds:Ljava/lang/ThreadLocal;

    .line 60
    new-instance v0, Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridBusyLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    .line 72
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    .line 77
    new-instance v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$1;-><init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->peerLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    .line 83
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->processDeploymentRequest(Ljava/util/UUID;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method private processDeploymentRequest(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 7
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 113
    sget-boolean v4, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 114
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez p2, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 116
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridBusyLock;->enterBusy()Z

    move-result v4

    if-nez v4, :cond_3

    .line 117
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 118
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring deployment request since grid is stopping [nodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 153
    :cond_2
    :goto_0
    return-void

    .line 125
    :cond_3
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;

    move-object v3, v0

    .line 127
    .local v3, "req":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->isUndeploy()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 128
    invoke-direct {p0, p1, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->processUndeployRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :goto_1
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridBusyLock;->leaveBusy()V

    goto :goto_0

    .line 130
    :cond_4
    :try_start_1
    sget-boolean v4, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->$assertionsDisabled:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->activeReqNodeIds:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    .end local v3    # "req":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridBusyLock;->leaveBusy()V

    throw v4

    .line 132
    .restart local v3    # "req":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;
    :cond_5
    :try_start_2
    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->nodeIds()Ljava/util/Collection;

    move-result-object v2

    .line 134
    .local v2, "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    if-nez v2, :cond_6

    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 136
    .restart local v2    # "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :goto_2
    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 138
    .local v1, "b":Z
    sget-boolean v4, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->$assertionsDisabled:Z

    if-nez v4, :cond_7

    if-nez v1, :cond_7

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 134
    .end local v1    # "b":Z
    :cond_6
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v2, v4

    goto :goto_2

    .line 140
    .restart local v1    # "b":Z
    :cond_7
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->activeReqNodeIds:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    :try_start_3
    invoke-direct {p0, p1, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->processResourceRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 146
    :try_start_4
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->activeReqNodeIds:Ljava/lang/ThreadLocal;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_1
    move-exception v4

    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->activeReqNodeIds:Ljava/lang/ThreadLocal;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private processResourceRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;)V
    .locals 13
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;

    .prologue
    .line 173
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v10}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 174
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received peer class/resource loading request [node="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", req="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 176
    :cond_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->responseTopic()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_1

    .line 178
    :try_start_0
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->responseTopicBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p2, v10}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->responseTopic(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_1
    new-instance v9, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;

    invoke-direct {v9}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;-><init>()V

    .line 189
    .local v9, "res":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v10}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v10

    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getDeployment(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v3

    .line 192
    .local v3, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-eqz v3, :cond_6

    .line 193
    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 197
    .local v8, "ldr":Ljava/lang/ClassLoader;
    instance-of v10, v8, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    if-nez v10, :cond_3

    .line 200
    :try_start_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->resourceName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x2f

    const/16 v12, 0x2e

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "clsName":Ljava/lang/String;
    const-string v10, ".class"

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 204
    .local v6, "idx":I
    if-ltz v6, :cond_2

    .line 205
    const/4 v10, 0x0

    invoke-virtual {v2, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 207
    :cond_2
    const/4 v10, 0x1

    invoke-static {v2, v10, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 209
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v10, Lorg/apache/ignite/lang/IgniteNotPeerDeployable;

    invoke-static {v1, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 210
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attempt to peer deploy class that has @GridNotPeerDeployable annotation: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, "errMsg":Ljava/lang/String;
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v10, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 215
    invoke-virtual {v9, v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->errorMessage(Ljava/lang/String;)V

    .line 216
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->success(Z)V

    .line 218
    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->responseTopic()Ljava/lang/Object;

    move-result-object v10

    invoke-direct {p0, p1, v10, v9}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->sendResponse(Ljava/util/UUID;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 278
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "clsName":Ljava/lang/String;
    .end local v3    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .end local v5    # "errMsg":Ljava/lang/String;
    .end local v6    # "idx":I
    .end local v8    # "ldr":Ljava/lang/ClassLoader;
    .end local v9    # "res":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v4

    .line 181
    .local v4, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to process deployment request (will ignore): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 223
    .end local v4    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v3    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .restart local v8    # "ldr":Ljava/lang/ClassLoader;
    .restart local v9    # "res":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;
    :catch_1
    move-exception v10

    .line 228
    :cond_3
    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->resourceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 230
    .local v7, "in":Ljava/io/InputStream;
    if-nez v7, :cond_5

    .line 231
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Requested resource not found (ignoring locally): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->resourceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 240
    .restart local v5    # "errMsg":Ljava/lang/String;
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v10}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 241
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v10, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 243
    :cond_4
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->success(Z)V

    .line 244
    invoke-virtual {v9, v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->errorMessage(Ljava/lang/String;)V

    .line 277
    .end local v5    # "errMsg":Ljava/lang/String;
    .end local v7    # "in":Ljava/io/InputStream;
    .end local v8    # "ldr":Ljava/lang/ClassLoader;
    :goto_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->responseTopic()Ljava/lang/Object;

    move-result-object v10

    invoke-direct {p0, p1, v10, v9}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->sendResponse(Ljava/util/UUID;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;)V

    goto :goto_0

    .line 248
    .restart local v7    # "in":Ljava/io/InputStream;
    .restart local v8    # "ldr":Ljava/lang/ClassLoader;
    :cond_5
    :try_start_2
    new-instance v0, Lorg/apache/ignite/internal/util/GridByteArrayList;

    const/16 v10, 0x400

    invoke-direct {v0, v10}, Lorg/apache/ignite/internal/util/GridByteArrayList;-><init>(I)V

    .line 250
    .local v0, "bytes":Lorg/apache/ignite/internal/util/GridByteArrayList;
    invoke-virtual {v0, v7}, Lorg/apache/ignite/internal/util/GridByteArrayList;->readAll(Ljava/io/InputStream;)V

    .line 252
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->success(Z)V

    .line 253
    invoke-virtual {v9, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->byteSource(Lorg/apache/ignite/internal/util/GridByteArrayList;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v7, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    goto :goto_1

    .line 255
    .end local v0    # "bytes":Lorg/apache/ignite/internal/util/GridByteArrayList;
    :catch_2
    move-exception v4

    .line 256
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to read resource due to IO failure: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->resourceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 258
    .restart local v5    # "errMsg":Ljava/lang/String;
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v10, v5, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 260
    invoke-virtual {v9, v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->errorMessage(Ljava/lang/String;)V

    .line 261
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->success(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 264
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v7, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    goto :goto_1

    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "errMsg":Ljava/lang/String;
    :catchall_0
    move-exception v10

    iget-object v11, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v7, v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    throw v10

    .line 269
    .end local v7    # "in":Ljava/io/InputStream;
    .end local v8    # "ldr":Ljava/lang/ClassLoader;
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to find local deployment for peer request: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 271
    .restart local v5    # "errMsg":Ljava/lang/String;
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v10, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 273
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->success(Z)V

    .line 274
    invoke-virtual {v9, v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->errorMessage(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private processUndeployRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;)V
    .locals 3
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received undeploy request [nodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", req="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->resourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->undeployTask(Ljava/util/UUID;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method private sendResponse(Ljava/util/UUID;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "topic"    # Ljava/lang/Object;
    .param p3, "res"    # Lorg/apache/ignite/plugin/extensions/communication/Message;

    .prologue
    .line 286
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    .line 288
    .local v1, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v1, :cond_2

    .line 290
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->P2P_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-virtual {v2, v1, p2, p3, v3}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 292
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sent peer class loading response [node="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->pingNode(Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send peer class loading response to node: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 298
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send peer class loading response to node (node does not exist): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 303
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send peer class loading response to node (node does not exist): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method sendResourceRequest(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;J)Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;
    .locals 20
    .param p1, "rsrcName"    # Ljava/lang/String;
    .param p2, "clsLdrId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "dstNode"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p4, "threshold"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 344
    sget-boolean v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 345
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 346
    :cond_1
    sget-boolean v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez p2, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 348
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->activeReqNodeIds:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    .line 350
    .local v10, "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    if-eqz v10, :cond_4

    invoke-interface/range {p3 .. p3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 351
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 352
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Node attempts to load resource from one of the requesters [rsrcName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dstNodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", requesters="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 356
    :cond_3
    new-instance v9, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;

    invoke-direct {v9}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;-><init>()V

    .line 358
    .local v9, "fake":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->success(Z)V

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Node attempts to load resource from one of the requesters [rsrcName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dstNodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", requesters="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->errorMessage(Ljava/lang/String;)V

    .line 482
    .end local v9    # "fake":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;
    :goto_0
    return-object v9

    .line 366
    :cond_4
    sget-object v3, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CLASSLOAD:Lorg/apache/ignite/internal/GridTopic;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/lang/IgniteUuid;->fromUuid(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/GridTopic;->topic(Lorg/apache/ignite/lang/IgniteUuid;)Ljava/lang/Object;

    move-result-object v13

    .line 368
    .local v13, "resTopic":Ljava/lang/Object;
    new-instance v11, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v11, v13, v0, v1, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;-><init>(Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Z)V

    .line 371
    .local v11, "req":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;
    invoke-virtual {v11, v10}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->nodeIds(Ljava/util/Collection;)V

    .line 373
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 375
    .local v6, "qryMux":Ljava/lang/Object;
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->t1()Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v7

    .line 377
    .local v7, "res":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;>;"
    new-instance v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$2;-><init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/internal/util/lang/GridTuple;)V

    .line 411
    .local v2, "discoLsnr":Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;
    new-instance v12, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v6, v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$3;-><init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;Ljava/lang/Object;Lorg/apache/ignite/internal/util/lang/GridTuple;)V

    .line 430
    .local v12, "resLsnr":Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v3

    invoke-virtual {v3, v13, v12}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    const/16 v4, 0xc

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/16 v18, 0x0

    const/16 v19, 0xb

    aput v19, v5, v18

    invoke-virtual {v3, v2, v4, v5}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;I[I)V

    .line 436
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v14

    .line 438
    .local v14, "start":J
    invoke-virtual {v11}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->responseTopic()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->responseTopic()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->responseTopicBytes([B)V

    .line 441
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CLASSLOAD:Lorg/apache/ignite/internal/GridTopic;

    sget-object v5, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->P2P_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v4, v11, v5}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sent peer class loading request [node="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", req="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 446
    :cond_6
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 448
    sub-long v16, p4, v14

    .line 450
    .local v16, "timeout":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 451
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Waiting for peer response from node [node="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 455
    :cond_7
    :goto_1
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_8

    const-wide/16 v4, 0x0

    cmp-long v3, v16, v4

    if-lez v3, :cond_8

    .line 456
    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 458
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    sub-long v16, p4, v4

    goto :goto_1

    .line 461
    :catch_0
    move-exception v8

    .line 463
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 465
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got interrupted while waiting for response from node: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v8}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 468
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 480
    .end local v14    # "start":J
    .end local v16    # "timeout":J
    :catchall_1
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-virtual {v4, v2, v5}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    .line 482
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v4

    invoke-virtual {v4, v13, v12}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    throw v3

    .line 468
    .restart local v14    # "start":J
    .restart local v16    # "timeout":J
    :cond_8
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 470
    :try_start_5
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_a

    .line 471
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to receive peer response from node within duration [node="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v14

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 477
    :cond_9
    :goto_2
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    invoke-virtual {v4, v2, v5}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    .line 482
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v4

    invoke-virtual {v4, v13, v12}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    move-object v9, v3

    goto/16 :goto_0

    .line 474
    :cond_a
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 475
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received peer loading response [node="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", res="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 480
    nop

    :array_0
    .array-data 4
        0xc
        0xb
    .end array-data

    :array_1
    .array-data 4
        0xc
        0xb
    .end array-data
.end method

.method sendUndeployRequest(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4
    .param p1, "rsrcName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p2, "rmtNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v2, 0x0

    .line 315
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 317
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v2, p1, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;-><init>(Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Z)V

    .line 319
    .local v0, "req":Lorg/apache/ignite/plugin/extensions/communication/Message;
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 320
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CLASSLOAD:Lorg/apache/ignite/internal/GridTopic;

    sget-object v3, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->P2P_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-virtual {v1, p2, v2, v0, v3}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Ljava/util/Collection;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 326
    :cond_1
    return-void
.end method

.method start()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CLASSLOAD:Lorg/apache/ignite/internal/GridTopic;

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->peerLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 92
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Started deployment communication."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method

.method stop()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Stopping deployment communication."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridBusyLock;->block()V

    .line 105
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CLASSLOAD:Lorg/apache/ignite/internal/GridTopic;

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->peerLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    .line 106
    return-void
.end method
