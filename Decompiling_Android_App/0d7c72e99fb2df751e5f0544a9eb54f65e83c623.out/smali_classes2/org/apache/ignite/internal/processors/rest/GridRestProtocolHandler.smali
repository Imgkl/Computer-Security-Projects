.class public interface abstract Lorg/apache/ignite/internal/processors/rest/GridRestProtocolHandler;
.super Ljava/lang/Object;
.source "GridRestProtocolHandler.java"


# virtual methods
.method public abstract handle(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract handleAsync(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
            ">;"
        }
    .end annotation
.end method
