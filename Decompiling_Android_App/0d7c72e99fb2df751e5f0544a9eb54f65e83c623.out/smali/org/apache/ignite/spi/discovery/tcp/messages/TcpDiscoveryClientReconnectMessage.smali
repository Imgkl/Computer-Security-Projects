.class public Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;
.super Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
.source "TcpDiscoveryClientReconnectMessage.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private lastMsgId:Lorg/apache/ignite/lang/IgniteUuid;

.field private msgs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private routerNodeId:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0
    .param p1, "creatorNodeId"    # Ljava/util/UUID;
    .param p2, "routerNodeId"    # Ljava/util/UUID;
    .param p3, "lastMsgId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;-><init>(Ljava/util/UUID;)V

    .line 59
    iput-object p2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->routerNodeId:Ljava/util/UUID;

    .line 60
    iput-object p3, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->lastMsgId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 61
    return-void
.end method


# virtual methods
.method public lastMessageId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->lastMsgId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public pendingMessages()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->msgs:Ljava/util/Collection;

    return-object v0
.end method

.method public pendingMessages(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "msgs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;>;"
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->msgs:Ljava/util/Collection;

    .line 82
    return-void
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
    .line 116
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->readExternal(Ljava/io/ObjectInput;)V

    .line 118
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->routerNodeId:Ljava/util/UUID;

    .line 119
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->lastMsgId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 120
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readCollection(Ljava/io/ObjectInput;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->msgs:Ljava/util/Collection;

    .line 121
    return-void
.end method

.method public routerNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->routerNodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public success(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 95
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->setFlag(IZ)V

    .line 96
    return-void
.end method

.method public success()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 125
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;

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
    .line 107
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 109
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->routerNodeId:Ljava/util/UUID;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 110
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->lastMsgId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 111
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->msgs:Ljava/util/Collection;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeCollection(Ljava/io/ObjectOutput;Ljava/util/Collection;)V

    .line 112
    return-void
.end method
