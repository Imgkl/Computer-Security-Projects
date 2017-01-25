.class Lorg/apache/ignite/internal/managers/communication/GridIoManager$2;
.super Ljava/lang/Object;
.source "GridIoManager.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/communication/GridIoManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$2;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reader(Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;)Lorg/apache/ignite/plugin/extensions/communication/MessageReader;
    .locals 2
    .param p1, "factory"    # Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;

    .prologue
    .line 222
    new-instance v0, Lorg/apache/ignite/internal/direct/DirectMessageReader;

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$2;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->msgFactory:Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$300(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/ignite/internal/direct/DirectMessageReader;-><init>(Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;)V

    return-object v0
.end method

.method public writer()Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;
    .locals 1

    .prologue
    .line 218
    new-instance v0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;

    invoke-direct {v0}, Lorg/apache/ignite/internal/direct/DirectMessageWriter;-><init>()V

    return-object v0
.end method
