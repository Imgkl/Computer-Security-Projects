.class Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ConnectFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "TcpCommunicationSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2495
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$1;

    .prologue
    .line 2495
    invoke-direct {p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ConnectFuture;-><init>()V

    return-void
.end method
