.class public interface abstract Lorg/apache/ignite/spi/communication/CommunicationListener;
.super Ljava/lang/Object;
.source "CommunicationListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onDisconnected(Ljava/util/UUID;)V
.end method

.method public abstract onMessage(Ljava/util/UUID;Ljava/io/Serializable;Lorg/apache/ignite/lang/IgniteRunnable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "TT;",
            "Lorg/apache/ignite/lang/IgniteRunnable;",
            ")V"
        }
    .end annotation
.end method
