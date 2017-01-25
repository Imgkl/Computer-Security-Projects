.class Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$8;
.super Ljava/lang/Object;
.source "GridDiscoveryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->stopNode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)V
    .locals 0

    .prologue
    .line 1359
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$8;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1361
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$8;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$4000(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->markSegmented()V

    .line 1363
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$8;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$4100(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/G;->stop(Ljava/lang/String;Z)Z

    .line 1364
    return-void
.end method
