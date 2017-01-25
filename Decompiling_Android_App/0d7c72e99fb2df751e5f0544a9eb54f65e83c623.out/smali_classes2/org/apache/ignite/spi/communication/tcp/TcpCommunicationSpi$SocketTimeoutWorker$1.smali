.class Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker$1;
.super Ljava/lang/Object;
.source "TcpCommunicationSpi.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;)V
    .locals 0

    .prologue
    .line 2332
    iput-object p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker$1;->this$1:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2332
    check-cast p1, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker$1;->compare(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;)I
    .locals 11
    .param p1, "o1"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;
    .param p2, "o2"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 2334
    invoke-virtual {p1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->endTime()J

    move-result-wide v4

    .line 2335
    .local v4, "time1":J
    invoke-virtual {p2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->endTime()J

    move-result-wide v6

    .line 2337
    .local v6, "time2":J
    invoke-virtual {p1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->id()J

    move-result-wide v0

    .line 2338
    .local v0, "id1":J
    invoke-virtual {p2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->id()J

    move-result-wide v2

    .line 2340
    .local v2, "id2":J
    cmp-long v10, v4, v6

    if-gez v10, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    cmp-long v10, v4, v6

    if-lez v10, :cond_2

    move v8, v9

    goto :goto_0

    :cond_2
    cmp-long v10, v0, v2

    if-ltz v10, :cond_0

    cmp-long v8, v0, v2

    if-lez v8, :cond_3

    move v8, v9

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method
