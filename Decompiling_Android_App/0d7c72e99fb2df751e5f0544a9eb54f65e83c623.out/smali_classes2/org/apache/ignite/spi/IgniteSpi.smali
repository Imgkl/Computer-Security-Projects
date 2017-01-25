.class public interface abstract Lorg/apache/ignite/spi/IgniteSpi;
.super Ljava/lang/Object;
.source "IgniteSpi.java"


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNodeAttributes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation
.end method

.method public abstract onContextDestroyed()V
.end method

.method public abstract onContextInitialized(Lorg/apache/ignite/spi/IgniteSpiContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation
.end method

.method public abstract spiStart(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation
.end method

.method public abstract spiStop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation
.end method
