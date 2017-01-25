.class public Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;
.super Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
.source "TcpDiscoveryDiscardMessage.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private msgId:Lorg/apache/ignite/lang/IgniteUuid;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0
    .param p1, "creatorNodeId"    # Ljava/util/UUID;
    .param p2, "msgId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;-><init>(Ljava/util/UUID;)V

    .line 53
    iput-object p2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;->msgId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 54
    return-void
.end method


# virtual methods
.method public msgId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;->msgId:Lorg/apache/ignite/lang/IgniteUuid;

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
    .line 74
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->readExternal(Ljava/io/ObjectInput;)V

    .line 76
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;->msgId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;

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
    .line 67
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 69
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;->msgId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 70
    return-void
.end method
