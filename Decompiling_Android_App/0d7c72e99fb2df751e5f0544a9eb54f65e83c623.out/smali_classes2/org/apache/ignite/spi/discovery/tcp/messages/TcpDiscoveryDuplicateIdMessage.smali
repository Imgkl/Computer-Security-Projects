.class public Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDuplicateIdMessage;
.super Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
.source "TcpDiscoveryDuplicateIdMessage.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private node:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDuplicateIdMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDuplicateIdMessage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V
    .locals 1
    .param p1, "creatorNodeId"    # Ljava/util/UUID;
    .param p2, "node"    # Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;-><init>(Ljava/util/UUID;)V

    .line 53
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDuplicateIdMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDuplicateIdMessage;->node:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 56
    return-void
.end method


# virtual methods
.method public node()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDuplicateIdMessage;->node:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

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
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDuplicateIdMessage;->node:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDuplicateIdMessage;

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
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDuplicateIdMessage;->node:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 70
    return-void
.end method
