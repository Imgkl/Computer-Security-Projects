.class Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$7;
.super Ljava/lang/Object;
.source "TcpCommunicationSpi.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgnitePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->resetNioServer()Lorg/apache/ignite/internal/util/nio/GridNioServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgnitePredicate",
        "<",
        "Lorg/apache/ignite/plugin/extensions/communication/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)V
    .locals 0

    .prologue
    .line 1407
    iput-object p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$7;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1407
    check-cast p1, Lorg/apache/ignite/plugin/extensions/communication/Message;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$7;->apply(Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/plugin/extensions/communication/Message;)Z
    .locals 1
    .param p1, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;

    .prologue
    .line 1409
    instance-of v0, p1, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;

    return v0
.end method
