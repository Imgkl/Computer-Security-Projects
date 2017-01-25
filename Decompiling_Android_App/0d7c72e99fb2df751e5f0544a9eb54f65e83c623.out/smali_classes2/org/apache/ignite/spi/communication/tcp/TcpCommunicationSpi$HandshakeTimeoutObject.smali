.class Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;
.super Ljava/lang/Object;
.source "TcpCommunicationSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandshakeTimeoutObject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final idGen:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final done:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final endTime:J

.field private final id:J

.field private final obj:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2505
    const-class v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->$assertionsDisabled:Z

    .line 2507
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->idGen:Ljava/util/concurrent/atomic/AtomicLong;

    return-void

    .line 2505
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/Object;J)V
    .locals 2
    .param p2, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 2525
    .local p0, "this":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;, "Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2510
    sget-object v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->idGen:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->id:J

    .line 2519
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2526
    sget-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2527
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/nio/channels/SelectableChannel;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2528
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2530
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->obj:Ljava/lang/Object;

    .line 2531
    iput-wide p2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->endTime:J

    .line 2532
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;JLorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$1;

    .prologue
    .line 2505
    .local p0, "this":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;, "Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;-><init>(Ljava/lang/Object;J)V

    return-void
.end method


# virtual methods
.method cancel()Z
    .locals 3

    .prologue
    .line 2538
    .local p0, "this":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;, "Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method endTime()J
    .locals 2

    .prologue
    .line 2562
    .local p0, "this":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;, "Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject<TT;>;"
    iget-wide v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->endTime:J

    return-wide v0
.end method

.method id()J
    .locals 2

    .prologue
    .line 2569
    .local p0, "this":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;, "Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject<TT;>;"
    iget-wide v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->id:J

    return-wide v0
.end method

.method onTimeout()Z
    .locals 3

    .prologue
    .local p0, "this":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;, "Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject<TT;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2545
    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2547
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;

    if-eqz v0, :cond_1

    .line 2548
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->forceClose()V

    :goto_0
    move v0, v1

    .line 2555
    :cond_0
    return v0

    .line 2550
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2574
    .local p0, "this":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;, "Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject<TT;>;"
    const-class v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
