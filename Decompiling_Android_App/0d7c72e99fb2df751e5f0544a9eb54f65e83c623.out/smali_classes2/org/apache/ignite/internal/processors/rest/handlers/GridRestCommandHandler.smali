.class public interface abstract Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandler;
.super Ljava/lang/Object;
.source "GridRestCommandHandler.java"


# virtual methods
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

.method public abstract supportedCommands()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestCommand;",
            ">;"
        }
    .end annotation
.end method
