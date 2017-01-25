.class public interface abstract Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;
.super Ljava/lang/Object;
.source "GridRestProtocol.java"


# virtual methods
.method public abstract getProperties()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract onKernalStart()V
.end method

.method public abstract start(Lorg/apache/ignite/internal/processors/rest/GridRestProtocolHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method
