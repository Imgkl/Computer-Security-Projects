.class public Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;
.super Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
.source "TcpDiscoveryStatusCheckMessage.java"


# static fields
.field public static final STATUS_OK:I = 0x1

.field public static final STATUS_RECON:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private creatorNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

.field private failedNodeId:Ljava/util/UUID;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Ljava/util/UUID;)V
    .locals 1
    .param p1, "creatorNode"    # Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .param p2, "failedNodeId"    # Ljava/util/UUID;

    .prologue
    .line 67
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;-><init>(Ljava/util/UUID;)V

    .line 69
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->creatorNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 70
    iput-object p2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->failedNodeId:Ljava/util/UUID;

    .line 71
    return-void
.end method


# virtual methods
.method public creatorNode()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->creatorNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    return-object v0
.end method

.method public failedNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->failedNodeId:Ljava/util/UUID;

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
    .line 120
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->readExternal(Ljava/io/ObjectInput;)V

    .line 122
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->creatorNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 123
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->failedNodeId:Ljava/util/UUID;

    .line 124
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->status:I

    .line 125
    return-void
.end method

.method public status()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->status:I

    return v0
.end method

.method public status(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 106
    iput p1, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->status:I

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;

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
    .line 111
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 113
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->creatorNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->failedNodeId:Ljava/util/UUID;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 115
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->status:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 116
    return-void
.end method
