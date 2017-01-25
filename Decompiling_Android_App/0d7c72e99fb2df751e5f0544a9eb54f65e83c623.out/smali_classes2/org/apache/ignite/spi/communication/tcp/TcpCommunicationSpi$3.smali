.class Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$3;
.super Ljava/lang/Object;
.source "TcpCommunicationSpi.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)V
    .locals 0

    .prologue
    .line 702
    iput-object p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$3;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBytesReceived(I)V
    .locals 4
    .param p1, "bytesCnt"    # I

    .prologue
    .line 708
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$3;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$2400(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/jsr166/LongAdder8;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 709
    return-void
.end method

.method public onBytesSent(I)V
    .locals 4
    .param p1, "bytesCnt"    # I

    .prologue
    .line 704
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$3;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$2300(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/jsr166/LongAdder8;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 705
    return-void
.end method
