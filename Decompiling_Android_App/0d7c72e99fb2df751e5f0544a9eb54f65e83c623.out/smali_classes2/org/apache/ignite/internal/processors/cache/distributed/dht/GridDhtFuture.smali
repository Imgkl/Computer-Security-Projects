.class public interface abstract Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;
.super Ljava/lang/Object;
.source "GridDhtFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/IgniteInternalFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract invalidPartitions()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
