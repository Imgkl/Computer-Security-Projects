.class Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$4;
.super Ljava/lang/Object;
.source "TcpCommunicationSpi.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 720
    const-class v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$4;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$4;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 2
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 722
    sget-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$4;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/apache/ignite/events/DiscoveryEvent;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 723
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$4;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 725
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$4;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    check-cast p1, Lorg/apache/ignite/events/DiscoveryEvent;

    .end local p1    # "evt":Lorg/apache/ignite/events/Event;
    invoke-virtual {p1}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->onNodeLeft(Ljava/util/UUID;)V

    .line 726
    return-void
.end method
