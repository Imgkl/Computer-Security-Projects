.class Lorg/apache/ignite/internal/managers/communication/GridIoManager$1;
.super Ljava/lang/Object;
.source "GridIoManager.java"

# interfaces
.implements Lorg/apache/ignite/spi/communication/CommunicationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/communication/GridIoManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/spi/communication/CommunicationListener",
        "<",
        "Ljava/io/Serializable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$1;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Ljava/util/UUID;)V
    .locals 3
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 201
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$1;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->disconnectLsnrs:Ljava/util/Collection;
    invoke-static {v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$200(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/managers/communication/GridDisconnectListener;

    .line 202
    .local v1, "lsnr":Lorg/apache/ignite/internal/managers/communication/GridDisconnectListener;
    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/managers/communication/GridDisconnectListener;->onNodeDisconnected(Ljava/util/UUID;)V

    goto :goto_0

    .line 203
    .end local v1    # "lsnr":Lorg/apache/ignite/internal/managers/communication/GridDisconnectListener;
    :cond_0
    return-void
.end method

.method public onMessage(Ljava/util/UUID;Ljava/io/Serializable;Lorg/apache/ignite/lang/IgniteRunnable;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/io/Serializable;
    .param p3, "msgC"    # Lorg/apache/ignite/lang/IgniteRunnable;

    .prologue
    .line 191
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$1;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-object v0, p2

    check-cast v0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;

    move-object v2, v0

    # invokes: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->onMessage0(Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Lorg/apache/ignite/lang/IgniteRunnable;)V
    invoke-static {v3, p1, v2, p3}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$000(Lorg/apache/ignite/internal/managers/communication/GridIoManager;Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Lorg/apache/ignite/lang/IgniteRunnable;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "ignored":Ljava/lang/ClassCastException;
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$1;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$100(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Communication manager received message of unknown type (will ignore): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Most likely GridCommunicationSpi is being used directly, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "which is illegal - make sure to send messages only via GridProjection API."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method
