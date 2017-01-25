.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtEmbeddedFuture;
.super Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;
.source "GridDhtEmbeddedFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture",
        "<TA;TB;>;",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture",
        "<TA;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private invalidParts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/IgniteInternalFuture;Lorg/apache/ignite/lang/IgniteBiClosure;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TB;>;",
            "Lorg/apache/ignite/lang/IgniteBiClosure",
            "<TB;",
            "Ljava/lang/Exception;",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TA;>;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtEmbeddedFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtEmbeddedFuture<TA;TB;>;"
    .local p1, "embedded":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TB;>;"
    .local p2, "c":Lorg/apache/ignite/lang/IgniteBiClosure;, "Lorg/apache/ignite/lang/IgniteBiClosure<TB;Ljava/lang/Exception;Lorg/apache/ignite/internal/IgniteInternalFuture<TA;>;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;Lorg/apache/ignite/lang/IgniteBiClosure;)V

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtEmbeddedFuture;->invalidParts:Ljava/util/Collection;

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteBiClosure;Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiClosure",
            "<TB;",
            "Ljava/lang/Exception;",
            "TA;>;",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TB;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtEmbeddedFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtEmbeddedFuture<TA;TB;>;"
    .local p1, "c":Lorg/apache/ignite/lang/IgniteBiClosure;, "Lorg/apache/ignite/lang/IgniteBiClosure<TB;Ljava/lang/Exception;TA;>;"
    .local p2, "embedded":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TB;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/lang/IgniteBiClosure;Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtEmbeddedFuture;->invalidParts:Ljava/util/Collection;

    .line 50
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
    .line 67
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtEmbeddedFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtEmbeddedFuture<TA;TB;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtEmbeddedFuture;->invalidParts:Ljava/util/Collection;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtEmbeddedFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtEmbeddedFuture<TA;TB;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtEmbeddedFuture;

    invoke-super {p0}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
