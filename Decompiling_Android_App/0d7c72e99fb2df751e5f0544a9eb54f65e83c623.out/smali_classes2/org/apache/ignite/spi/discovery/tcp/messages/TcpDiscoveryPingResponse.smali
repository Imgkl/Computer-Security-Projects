.class public Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingResponse;
.super Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
.source "TcpDiscoveryPingResponse.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private clientExists:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 0
    .param p1, "creatorNodeId"    # Ljava/util/UUID;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;-><init>(Ljava/util/UUID;)V

    .line 45
    return-void
.end method


# virtual methods
.method public clientExists(Z)V
    .locals 0
    .param p1, "clientExists"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingResponse;->clientExists:Z

    .line 52
    return-void
.end method

.method public clientExists()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingResponse;->clientExists:Z

    return v0
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
    .line 70
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->readExternal(Ljava/io/ObjectInput;)V

    .line 72
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingResponse;->clientExists:Z

    .line 73
    return-void
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
    .line 63
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 65
    iget-boolean v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingResponse;->clientExists:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 66
    return-void
.end method
