.class Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;
.super Ljava/lang/Object;
.source "GridServiceProcessor.java"

# interfaces
.implements Ljavax/cache/event/CacheEntryUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeploymentListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/cache/event/CacheEntryUpdatedListener",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 903
    const-class v0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;

    .prologue
    .line 903
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;-><init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;J)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;
    .param p2, "x2"    # J

    .prologue
    .line 903
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->onDeployment(Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;J)V

    return-void
.end method

.method private onDeployment(Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;J)V
    .locals 6
    .param p1, "dep"    # Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;
    .param p2, "topVer"    # J

    .prologue
    .line 981
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2200(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v2

    .line 984
    .local v2, "newTopVer":J
    cmp-long v1, v2, p2

    if-nez v1, :cond_0

    .line 985
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # invokes: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->reassign(Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;J)V
    invoke-static {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2300(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;J)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1027
    :cond_0
    :goto_0
    return-void

    .line 987
    .end local v2    # "newTopVer":J
    :catch_0
    move-exception v0

    .line 988
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    instance-of v1, v0, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    if-nez v1, :cond_1

    .line 989
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2400(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to do service reassignment (will retry): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/services/ServiceConfiguration;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 991
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2500(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v2

    .line 993
    .restart local v2    # "newTopVer":J
    cmp-long v1, v2, p2

    if-eqz v1, :cond_2

    .line 994
    sget-boolean v1, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    cmp-long v1, v2, p2

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1000
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2700(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v1

    new-instance v4, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$2;

    invoke-direct {v4, p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$2;-><init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;J)V

    invoke-virtual {v1, v4}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    goto :goto_0
.end method


# virtual methods
.method public onUpdated(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljavax/cache/event/CacheEntryEvent",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 906
    .local p1, "deps":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljavax/cache/event/CacheEntryEvent<**>;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->depExe:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2100(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$1;-><init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;Ljava/lang/Iterable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 970
    return-void
.end method
