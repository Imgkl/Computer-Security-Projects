.class Lorg/apache/ignite/internal/managers/communication/GridIoManager$6;
.super Ljava/lang/Object;
.source "GridIoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/communication/GridIoManager;->processOrderedMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/lang/IgniteRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

.field final synthetic val$lsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

.field final synthetic val$msgC:Lorg/apache/ignite/lang/IgniteRunnable;

.field final synthetic val$msgSet0:Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/managers/communication/GridIoManager;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;Lorg/apache/ignite/lang/IgniteRunnable;)V
    .locals 0

    .prologue
    .line 816
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$6;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$6;->val$msgSet0:Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;

    iput-object p3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$6;->val$lsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    iput-object p4, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$6;->val$msgC:Lorg/apache/ignite/lang/IgniteRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 819
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lorg/apache/ignite/internal/util/nio/GridNioBackPressureControl;->threadProcessingMessage(Z)V

    .line 821
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$6;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$6;->val$msgSet0:Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$6;->val$lsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    # invokes: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->unwindMessageSet(Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V
    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$1700(Lorg/apache/ignite/internal/managers/communication/GridIoManager;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    invoke-static {v3}, Lorg/apache/ignite/internal/util/nio/GridNioBackPressureControl;->threadProcessingMessage(Z)V

    .line 826
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$6;->val$msgC:Lorg/apache/ignite/lang/IgniteRunnable;

    invoke-interface {v0}, Lorg/apache/ignite/lang/IgniteRunnable;->run()V

    .line 828
    return-void

    .line 824
    :catchall_0
    move-exception v0

    invoke-static {v3}, Lorg/apache/ignite/internal/util/nio/GridNioBackPressureControl;->threadProcessingMessage(Z)V

    .line 826
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$6;->val$msgC:Lorg/apache/ignite/lang/IgniteRunnable;

    invoke-interface {v1}, Lorg/apache/ignite/lang/IgniteRunnable;->run()V

    throw v0
.end method
