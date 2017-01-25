.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFinishedFuture;
.super Lorg/apache/ignite/internal/util/future/GridFinishedFuture;
.source "GridDhtFinishedFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/future/GridFinishedFuture",
        "<TT;>;",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFinishedFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFinishedFuture<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "err"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFinishedFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFinishedFuture<TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method


# virtual methods
.method public invalidPartitions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFinishedFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFinishedFuture<TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFinishedFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFinishedFuture<TT;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFinishedFuture;

    invoke-super {p0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
