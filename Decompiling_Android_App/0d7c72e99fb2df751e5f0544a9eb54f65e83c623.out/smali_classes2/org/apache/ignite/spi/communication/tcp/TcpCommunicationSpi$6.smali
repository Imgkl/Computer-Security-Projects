.class Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$6;
.super Ljava/lang/Object;
.source "TcpCommunicationSpi.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->resetNioServer()Lorg/apache/ignite/internal/util/nio/GridNioServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private impl:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

.field final synthetic this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1383
    const-class v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$6;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)V
    .locals 0

    .prologue
    .line 1383
    iput-object p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$6;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reader(Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;)Lorg/apache/ignite/plugin/extensions/communication/MessageReader;
    .locals 1
    .param p1, "factory"    # Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;

    .prologue
    .line 1396
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$6;->impl:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    if-nez v0, :cond_0

    .line 1397
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$6;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/spi/IgniteSpiContext;->messageFormatter()Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$6;->impl:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    .line 1399
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$6;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$6;->impl:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1401
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$6;->impl:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    invoke-interface {v0, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;->reader(Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;)Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    move-result-object v0

    return-object v0
.end method

.method public writer()Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;
    .locals 1

    .prologue
    .line 1387
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$6;->impl:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    if-nez v0, :cond_0

    .line 1388
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$6;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/spi/IgniteSpiContext;->messageFormatter()Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$6;->impl:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    .line 1390
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$6;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$6;->impl:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1392
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$6;->impl:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    invoke-interface {v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;->writer()Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    move-result-object v0

    return-object v0
.end method
