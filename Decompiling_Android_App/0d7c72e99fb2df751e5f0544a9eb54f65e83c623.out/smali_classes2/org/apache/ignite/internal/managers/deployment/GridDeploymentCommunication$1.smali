.class Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$1;
.super Ljava/lang/Object;
.source "GridDeploymentCommunication.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/IgniteLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$1;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$1;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    invoke-static {v0, p1, p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->access$000(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;Ljava/util/UUID;Ljava/lang/Object;)V

    .line 80
    return-void
.end method
