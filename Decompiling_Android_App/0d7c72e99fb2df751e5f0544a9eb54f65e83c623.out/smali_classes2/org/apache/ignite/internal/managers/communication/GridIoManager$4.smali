.class Lorg/apache/ignite/internal/managers/communication/GridIoManager$4;
.super Ljava/lang/Object;
.source "GridIoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/communication/GridIoManager;->processP2PMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Lorg/apache/ignite/lang/IgniteRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

.field final synthetic val$msg:Lorg/apache/ignite/internal/managers/communication/GridIoMessage;

.field final synthetic val$msgC:Lorg/apache/ignite/lang/IgniteRunnable;

.field final synthetic val$nodeId:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 574
    const-class v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$4;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/managers/communication/GridIoManager;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteRunnable;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$4;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$4;->val$msg:Lorg/apache/ignite/internal/managers/communication/GridIoMessage;

    iput-object p3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$4;->val$nodeId:Ljava/util/UUID;

    iput-object p4, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$4;->val$msgC:Lorg/apache/ignite/lang/IgniteRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 577
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Lorg/apache/ignite/internal/util/nio/GridNioBackPressureControl;->threadProcessingMessage(Z)V

    .line 579
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$4;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lsnrMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$1400(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$4;->val$msg:Lorg/apache/ignite/internal/managers/communication/GridIoMessage;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topic()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    .local v0, "lsnr":Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    if-nez v0, :cond_0

    .line 591
    invoke-static {v4}, Lorg/apache/ignite/internal/util/nio/GridNioBackPressureControl;->threadProcessingMessage(Z)V

    .line 593
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$4;->val$msgC:Lorg/apache/ignite/lang/IgniteRunnable;

    invoke-interface {v2}, Lorg/apache/ignite/lang/IgniteRunnable;->run()V

    .line 595
    :goto_0
    return-void

    .line 584
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$4;->val$msg:Lorg/apache/ignite/internal/managers/communication/GridIoMessage;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->message()Ljava/lang/Object;

    move-result-object v1

    .line 586
    .local v1, "obj":Ljava/lang/Object;
    sget-boolean v2, Lorg/apache/ignite/internal/managers/communication/GridIoManager$4;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 591
    .end local v0    # "lsnr":Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    .end local v1    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    invoke-static {v4}, Lorg/apache/ignite/internal/util/nio/GridNioBackPressureControl;->threadProcessingMessage(Z)V

    .line 593
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$4;->val$msgC:Lorg/apache/ignite/lang/IgniteRunnable;

    invoke-interface {v3}, Lorg/apache/ignite/lang/IgniteRunnable;->run()V

    throw v2

    .line 588
    .restart local v0    # "lsnr":Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_1
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$4;->val$nodeId:Ljava/util/UUID;

    invoke-interface {v0, v2, v1}, Lorg/apache/ignite/internal/managers/communication/GridMessageListener;->onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 591
    invoke-static {v4}, Lorg/apache/ignite/internal/util/nio/GridNioBackPressureControl;->threadProcessingMessage(Z)V

    .line 593
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$4;->val$msgC:Lorg/apache/ignite/lang/IgniteRunnable;

    invoke-interface {v2}, Lorg/apache/ignite/lang/IgniteRunnable;->run()V

    goto :goto_0
.end method
