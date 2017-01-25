.class public Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;
.super Lorg/apache/ignite/internal/processors/igfs/IgfsManager;
.source "IgfsServerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;
    }
.end annotation


# static fields
.field private static final REBIND_INTERVAL:J = 0xbb8L


# instance fields
.field private bindWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;

.field private kernalStartLatch:Ljava/util/concurrent/CountDownLatch;

.field private srvrs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsServer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsManager;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->kernalStartLatch:Ljava/util/concurrent/CountDownLatch;

    .line 154
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->kernalStartLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->srvrs:Ljava/util/Collection;

    return-object v0
.end method

.method private bind(Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;Z)V
    .locals 8
    .param p1, "endpointCfg"    # Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;
    .param p2, "mgmt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->srvrs:Ljava/util/Collection;

    if-nez v4, :cond_0

    .line 88
    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->srvrs:Ljava/util/Collection;

    .line 90
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-direct {v1, v4, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsContext;Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;Z)V

    .line 93
    .local v1, "ipcSrv":Lorg/apache/ignite/internal/processors/igfs/IgfsServer;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->start()V

    .line 95
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->srvrs:Ljava/util/Collection;

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/util/ipc/IpcEndpointBindException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "ignored":Lorg/apache/ignite/internal/util/ipc/IpcEndpointBindException;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->getIpcServerEndpoint()Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;->getPort()I

    move-result v2

    .line 100
    .local v2, "port":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Failed to bind to port (is port already in use?): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "portMsg":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to start IGFS "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_3

    const-string v4, "management "

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "endpoint "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "(will retry every "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v6, 0x3

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "s)."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 106
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->bindWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;

    if-nez v4, :cond_1

    .line 107
    new-instance v4, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$1;)V

    iput-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->bindWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;

    .line 109
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->bindWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;

    invoke-virtual {v4, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;->addConfiguration(Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;Z)V

    goto :goto_0

    .line 100
    .end local v3    # "portMsg":Ljava/lang/String;
    :cond_2
    const-string v3, ""

    goto :goto_1

    .line 102
    .restart local v3    # "portMsg":Ljava/lang/String;
    :cond_3
    const-string v4, ""

    goto :goto_2
.end method


# virtual methods
.method public endpoints()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->srvrs:Ljava/util/Collection;

    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$1;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected onKernalStart0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->srvrs:Ljava/util/Collection;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->srvrs:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    .line 128
    .local v1, "srv":Lorg/apache/ignite/internal/processors/igfs/IgfsServer;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->onKernalStart()V

    goto :goto_0

    .line 131
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "srv":Lorg/apache/ignite/internal/processors/igfs/IgfsServer;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->kernalStartLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 132
    return-void
.end method

.method protected start0()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v0

    .line 56
    .local v0, "igfsCfg":Lorg/apache/ignite/configuration/FileSystemConfiguration;
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->isIpcEndpointEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getIpcEndpointConfiguration()Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;

    move-result-object v1

    .line 59
    .local v1, "ipcCfg":Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;
    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;

    .end local v1    # "ipcCfg":Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;
    invoke-direct {v1}, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;-><init>()V

    .line 62
    .restart local v1    # "ipcCfg":Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->bind(Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;Z)V

    .line 65
    .end local v1    # "ipcCfg":Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;
    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getManagementPort()I

    move-result v3

    if-ltz v3, :cond_2

    .line 66
    new-instance v2, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;

    invoke-direct {v2}, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;-><init>()V

    .line 68
    .local v2, "mgmtIpcCfg":Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;
    sget-object v3, Lorg/apache/ignite/igfs/IgfsIpcEndpointType;->TCP:Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->setType(Lorg/apache/ignite/igfs/IgfsIpcEndpointType;)V

    .line 69
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getManagementPort()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->setPort(I)V

    .line 71
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->bind(Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;Z)V

    .line 74
    .end local v2    # "mgmtIpcCfg":Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->bindWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;

    if-eqz v3, :cond_3

    .line 75
    new-instance v3, Lorg/apache/ignite/thread/IgniteThread;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->bindWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;

    invoke-direct {v3, v4}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    invoke-virtual {v3}, Lorg/apache/ignite/thread/IgniteThread;->start()V

    .line 76
    :cond_3
    return-void
.end method

.method protected stop0(Z)V
    .locals 4
    .param p1, "cancel"    # Z

    .prologue
    .line 137
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->kernalStartLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 139
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->bindWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->bindWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;->cancel()V

    .line 142
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->bindWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Lorg/apache/ignite/internal/util/worker/GridWorker;Lorg/apache/ignite/IgniteLogger;)Z

    .line 145
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->srvrs:Ljava/util/Collection;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->srvrs:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    .line 147
    .local v1, "srv":Lorg/apache/ignite/internal/processors/igfs/IgfsServer;
    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->stop(Z)V

    goto :goto_0

    .line 149
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "srv":Lorg/apache/ignite/internal/processors/igfs/IgfsServer;
    :cond_1
    return-void
.end method
