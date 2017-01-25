.class public Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;
.super Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
.source "TcpDiscoveryNodeFailedMessage.java"


# annotations
.annotation runtime Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryEnsureDelivery;
.end annotation

.annotation runtime Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryRedirectToClient;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private failedNodeId:Ljava/util/UUID;

.field private order:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;J)V
    .locals 3
    .param p1, "creatorNodeId"    # Ljava/util/UUID;
    .param p2, "failedNodeId"    # Ljava/util/UUID;
    .param p3, "order"    # J

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;-><init>(Ljava/util/UUID;)V

    .line 58
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :cond_1
    iput-object p2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->failedNodeId:Ljava/util/UUID;

    .line 62
    iput-wide p3, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->order:J

    .line 63
    return-void
.end method


# virtual methods
.method public failedNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->failedNodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public order()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->order:J

    return-wide v0
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
    .line 91
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->readExternal(Ljava/io/ObjectInput;)V

    .line 93
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->failedNodeId:Ljava/util/UUID;

    .line 94
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->order:J

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;

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
    .line 83
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 85
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->failedNodeId:Ljava/util/UUID;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 86
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->order:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 87
    return-void
.end method
