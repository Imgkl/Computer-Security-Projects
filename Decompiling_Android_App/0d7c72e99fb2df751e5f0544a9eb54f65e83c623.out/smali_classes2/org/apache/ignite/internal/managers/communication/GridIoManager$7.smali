.class Lorg/apache/ignite/internal/managers/communication/GridIoManager$7;
.super Ljava/lang/Object;
.source "GridIoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

.field final synthetic val$lsnrs0:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

.field final synthetic val$msgSet:Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/managers/communication/GridIoManager;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V
    .locals 0

    .prologue
    .line 1336
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$7;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$7;->val$msgSet:Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;

    iput-object p3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$7;->val$lsnrs0:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1338
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$7;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$7;->val$msgSet:Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$7;->val$lsnrs0:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    # invokes: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->unwindMessageSet(Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V
    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$1700(Lorg/apache/ignite/internal/managers/communication/GridIoManager;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 1339
    return-void
.end method
