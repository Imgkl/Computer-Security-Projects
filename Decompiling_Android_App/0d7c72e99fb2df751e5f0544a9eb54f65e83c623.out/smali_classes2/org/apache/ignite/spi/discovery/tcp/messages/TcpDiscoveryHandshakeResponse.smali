.class public Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;
.super Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
.source "TcpDiscoveryHandshakeResponse.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private order:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;J)V
    .locals 0
    .param p1, "creatorNodeId"    # Ljava/util/UUID;
    .param p2, "locNodeOrder"    # J

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;-><init>(Ljava/util/UUID;)V

    .line 51
    iput-wide p2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;->order:J

    .line 52
    return-void
.end method


# virtual methods
.method public order()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;->order:J

    return-wide v0
.end method

.method public order(J)V
    .locals 1
    .param p1, "order"    # J

    .prologue
    .line 69
    iput-wide p1, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;->order:J

    .line 70
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->readExternal(Ljava/io/ObjectInput;)V

    .line 83
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;->order:J

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 76
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;->order:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 77
    return-void
.end method
