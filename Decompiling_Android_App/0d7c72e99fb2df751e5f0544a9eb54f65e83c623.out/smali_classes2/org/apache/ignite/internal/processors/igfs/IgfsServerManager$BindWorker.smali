.class Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "IgfsServerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindWorker"
.end annotation


# instance fields
.field private bindCfgs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;)V
    .locals 3

    .prologue
    .line 162
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;

    .line 163
    iget-object v0, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bind-worker"

    iget-object v2, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 157
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;->bindCfgs:Ljava/util/Collection;

    .line 164
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$1;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;)V

    return-void
.end method


# virtual methods
.method public addConfiguration(Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;Z)V
    .locals 2
    .param p1, "cfg"    # Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;
    .param p2, "mgmt"    # Z

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;->bindCfgs:Ljava/util/Collection;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method protected body()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->kernalStartLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->access$100(Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 181
    const-wide/16 v4, 0xbb8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 183
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;->bindCfgs:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 185
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;Ljava/lang/Boolean;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 186
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 188
    .local v0, "cfg":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;Ljava/lang/Boolean;>;"
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;

    iget-object v6, v4, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {v2, v6, v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsContext;Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;Z)V

    .line 191
    .local v2, "ipcSrv":Lorg/apache/ignite/internal/processors/igfs/IgfsServer;
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->start()V

    .line 193
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->onKernalStart()V

    .line 195
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->srvrs:Ljava/util/Collection;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->access$200(Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 201
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to bind IGFS endpoint [cfg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    .end local v0    # "cfg":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;Ljava/lang/Boolean;>;"
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v2    # "ipcSrv":Lorg/apache/ignite/internal/processors/igfs/IgfsServer;
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$BindWorker;->bindCfgs:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;Ljava/lang/Boolean;>;>;"
    :cond_3
    return-void
.end method
