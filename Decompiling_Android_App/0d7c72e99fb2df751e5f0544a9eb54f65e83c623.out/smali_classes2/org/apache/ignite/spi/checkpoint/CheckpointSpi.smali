.class public interface abstract Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;
.super Ljava/lang/Object;
.source "CheckpointSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpi;


# virtual methods
.method public abstract loadCheckpoint(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract removeCheckpoint(Ljava/lang/String;)Z
.end method

.method public abstract saveCheckpoint(Ljava/lang/String;[BJZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation
.end method

.method public abstract setCheckpointListener(Lorg/apache/ignite/spi/checkpoint/CheckpointListener;)V
.end method
