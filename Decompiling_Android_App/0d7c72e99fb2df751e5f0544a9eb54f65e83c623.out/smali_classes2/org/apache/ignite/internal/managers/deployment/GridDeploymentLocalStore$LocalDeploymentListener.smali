.class Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore$LocalDeploymentListener;
.super Ljava/lang/Object;
.source "GridDeploymentLocalStore.java"

# interfaces
.implements Lorg/apache/ignite/spi/deployment/DeploymentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalDeploymentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore$LocalDeploymentListener;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;
    .param p2, "x1"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore$1;

    .prologue
    .line 549
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore$LocalDeploymentListener;-><init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;)V

    return-void
.end method


# virtual methods
.method public onUnregistered(Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "ldr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 552
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore$LocalDeploymentListener;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore$LocalDeploymentListener;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received callback from SPI to unregister class loader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 555
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore$LocalDeploymentListener;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;

    # invokes: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->undeploy(Ljava/lang/ClassLoader;)V
    invoke-static {v0, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->access$100(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;Ljava/lang/ClassLoader;)V

    .line 556
    return-void
.end method
