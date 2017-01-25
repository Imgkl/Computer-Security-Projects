.class Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;
.super Ljava/lang/Object;
.source "TcpDiscoverySpiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketTimeoutObject"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final idGen:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final done:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final endTime:J

.field private final id:J

.field private final sock:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 852
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->$assertionsDisabled:Z

    .line 854
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->idGen:Ljava/util/concurrent/atomic/AtomicLong;

    return-void

    .line 852
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/net/Socket;J)V
    .locals 2
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "endTime"    # J

    .prologue
    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    sget-object v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->idGen:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->id:J

    .line 866
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 873
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 874
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 876
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->sock:Ljava/net/Socket;

    .line 877
    iput-wide p2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->endTime:J

    .line 878
    return-void
.end method


# virtual methods
.method cancel()Z
    .locals 3

    .prologue
    .line 884
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method endTime()J
    .locals 2

    .prologue
    .line 905
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->endTime:J

    return-wide v0
.end method

.method id()J
    .locals 2

    .prologue
    .line 912
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->id:J

    return-wide v0
.end method

.method onTimeout()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 891
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 893
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->sock:Ljava/net/Socket;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 898
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 917
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
