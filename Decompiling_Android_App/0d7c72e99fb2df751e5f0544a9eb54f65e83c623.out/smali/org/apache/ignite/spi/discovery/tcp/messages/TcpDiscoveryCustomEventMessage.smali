.class public Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCustomEventMessage;
.super Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
.source "TcpDiscoveryCustomEventMessage.java"


# annotations
.annotation runtime Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryEnsureDelivery;
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private msg:Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/io/Serializable;)V
    .locals 0
    .param p1, "creatorNodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/io/Serializable;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;-><init>(Ljava/util/UUID;)V

    .line 47
    iput-object p2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCustomEventMessage;->msg:Ljava/io/Serializable;

    .line 48
    return-void
.end method


# virtual methods
.method public message()Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCustomEventMessage;->msg:Ljava/io/Serializable;

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
    .line 66
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->readExternal(Ljava/io/ObjectInput;)V

    .line 68
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCustomEventMessage;->msg:Ljava/io/Serializable;

    .line 69
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
    .line 59
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 61
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCustomEventMessage;->msg:Ljava/io/Serializable;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 62
    return-void
.end method
