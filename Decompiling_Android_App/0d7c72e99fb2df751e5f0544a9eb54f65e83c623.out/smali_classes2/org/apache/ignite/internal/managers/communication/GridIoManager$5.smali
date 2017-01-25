.class Lorg/apache/ignite/internal/managers/communication/GridIoManager$5;
.super Ljava/lang/Object;
.source "GridIoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/communication/GridIoManager;->processRegularMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/lang/IgniteRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

.field final synthetic val$msg:Lorg/apache/ignite/internal/managers/communication/GridIoMessage;

.field final synthetic val$msgC:Lorg/apache/ignite/lang/IgniteRunnable;

.field final synthetic val$nodeId:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/managers/communication/GridIoManager;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteRunnable;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$5;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$5;->val$msg:Lorg/apache/ignite/internal/managers/communication/GridIoMessage;

    iput-object p3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$5;->val$nodeId:Ljava/util/UUID;

    iput-object p4, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$5;->val$msgC:Lorg/apache/ignite/lang/IgniteRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 625
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lorg/apache/ignite/internal/util/nio/GridNioBackPressureControl;->threadProcessingMessage(Z)V

    .line 627
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$5;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$5;->val$msg:Lorg/apache/ignite/internal/managers/communication/GridIoMessage;

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$5;->val$nodeId:Ljava/util/UUID;

    # invokes: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->processRegularMessage0(Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Ljava/util/UUID;)V
    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$1500(Lorg/apache/ignite/internal/managers/communication/GridIoManager;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Ljava/util/UUID;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    invoke-static {v3}, Lorg/apache/ignite/internal/util/nio/GridNioBackPressureControl;->threadProcessingMessage(Z)V

    .line 632
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$5;->val$msgC:Lorg/apache/ignite/lang/IgniteRunnable;

    invoke-interface {v0}, Lorg/apache/ignite/lang/IgniteRunnable;->run()V

    .line 634
    return-void

    .line 630
    :catchall_0
    move-exception v0

    invoke-static {v3}, Lorg/apache/ignite/internal/util/nio/GridNioBackPressureControl;->threadProcessingMessage(Z)V

    .line 632
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$5;->val$msgC:Lorg/apache/ignite/lang/IgniteRunnable;

    invoke-interface {v1}, Lorg/apache/ignite/lang/IgniteRunnable;->run()V

    throw v0
.end method
