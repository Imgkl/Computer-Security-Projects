.class public interface abstract Lorg/apache/ignite/spi/communication/CommunicationSpi;
.super Ljava/lang/Object;
.source "CommunicationSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/spi/IgniteSpi;"
    }
.end annotation


# virtual methods
.method public abstract getOutboundMessagesQueueSize()I
.end method

.method public abstract getReceivedBytesCount()J
.end method

.method public abstract getReceivedMessagesCount()I
.end method

.method public abstract getSentBytesCount()J
.end method

.method public abstract getSentMessagesCount()I
.end method

.method public abstract resetMetrics()V
.end method

.method public abstract sendMessage(Lorg/apache/ignite/cluster/ClusterNode;Ljava/io/Serializable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation
.end method

.method public abstract setListener(Lorg/apache/ignite/spi/communication/CommunicationListener;)V
    .param p1    # Lorg/apache/ignite/spi/communication/CommunicationListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/spi/communication/CommunicationListener",
            "<TT;>;)V"
        }
    .end annotation
.end method
