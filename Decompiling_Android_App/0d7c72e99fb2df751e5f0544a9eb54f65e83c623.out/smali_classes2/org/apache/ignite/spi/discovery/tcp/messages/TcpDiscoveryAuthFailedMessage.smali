.class public Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;
.super Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
.source "TcpDiscoveryAuthFailedMessage.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private addr:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "creatorNodeId"    # Ljava/util/UUID;
    .param p2, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;-><init>(Ljava/util/UUID;)V

    .line 52
    iput-object p2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;->addr:Ljava/net/InetAddress;

    .line 53
    return-void
.end method


# virtual methods
.method public address()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;->addr:Ljava/net/InetAddress;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->readExternal(Ljava/io/ObjectInput;)V

    .line 73
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readByteArray(Ljava/io/DataInput;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;->addr:Ljava/net/InetAddress;

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 66
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeByteArray(Ljava/io/DataOutput;[B)V

    .line 67
    return-void
.end method
