.class public Lorg/apache/ignite/spi/swapspace/noop/NoopSwapSpaceSpi;
.super Lorg/apache/ignite/spi/IgniteSpiAdapter;
.source "NoopSwapSpaceSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;


# annotations
.annotation runtime Lorg/apache/ignite/spi/IgniteSpiMultipleInstancesSupport;
    value = true
.end annotation

.annotation runtime Lorg/apache/ignite/spi/IgniteSpiNoop;
.end annotation


# instance fields
.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public clear(Ljava/lang/String;)V
    .locals 0
    .param p1, "space"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 54
    return-void
.end method

.method public count(Ljava/lang/String;)J
    .locals 2
    .param p1, "space"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 63
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public count(Ljava/lang/String;Ljava/util/Set;)J
    .locals 2
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public keyIterator(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapContext;)Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;
    .locals 1
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "ctx"    # Lorg/apache/ignite/spi/swapspace/SwapContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/spi/swapspace/SwapContext;",
            ")",
            "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator",
            "<TK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;-><init>()V

    return-object v0
.end method

.method public partitions(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public rawIterator(Ljava/lang/String;)Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;
    .locals 1
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;-><init>()V

    return-object v0
.end method

.method public rawIterator(Ljava/lang/String;I)Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;
    .locals 1
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "part"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;-><init>()V

    return-object v0
.end method

.method public read(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/spi/swapspace/SwapContext;)[B
    .locals 1
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "key"    # Lorg/apache/ignite/spi/swapspace/SwapKey;
    .param p3, "ctx"    # Lorg/apache/ignite/spi/swapspace/SwapContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public readAll(Ljava/lang/String;Ljava/lang/Iterable;Lorg/apache/ignite/spi/swapspace/SwapContext;)Ljava/util/Map;
    .locals 1
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "ctx"    # Lorg/apache/ignite/spi/swapspace/SwapContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            ">;",
            "Lorg/apache/ignite/spi/swapspace/SwapContext;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/spi/swapspace/SwapKey;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/lang/IgniteInClosure;Lorg/apache/ignite/spi/swapspace/SwapContext;)V
    .locals 0
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "key"    # Lorg/apache/ignite/spi/swapspace/SwapKey;
    .param p3    # Lorg/apache/ignite/lang/IgniteInClosure;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ctx"    # Lorg/apache/ignite/spi/swapspace/SwapContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<[B>;",
            "Lorg/apache/ignite/spi/swapspace/SwapContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 87
    .local p3, "c":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<[B>;"
    return-void
.end method

.method public removeAll(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;Lorg/apache/ignite/spi/swapspace/SwapContext;)V
    .locals 0
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/apache/ignite/lang/IgniteBiInClosure;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ctx"    # Lorg/apache/ignite/spi/swapspace/SwapContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            ">;",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "[B>;",
            "Lorg/apache/ignite/spi/swapspace/SwapContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/swapspace/SwapKey;>;"
    .local p3, "c":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<Lorg/apache/ignite/spi/swapspace/SwapKey;[B>;"
    return-void
.end method

.method public setListener(Lorg/apache/ignite/spi/swapspace/SwapSpaceSpiListener;)V
    .locals 0
    .param p1, "evictLsnr"    # Lorg/apache/ignite/spi/swapspace/SwapSpaceSpiListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 110
    return-void
.end method

.method public size(Ljava/lang/String;)J
    .locals 2
    .param p1, "space"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public spiStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/noop/NoopSwapSpaceSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Swap space is disabled. To enable use FileSwapSpaceSpi."

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public spiStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 49
    return-void
.end method

.method public store(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;[BLorg/apache/ignite/spi/swapspace/SwapContext;)V
    .locals 0
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "key"    # Lorg/apache/ignite/spi/swapspace/SwapKey;
    .param p3, "val"    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ctx"    # Lorg/apache/ignite/spi/swapspace/SwapContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 99
    return-void
.end method

.method public storeAll(Ljava/lang/String;Ljava/util/Map;Lorg/apache/ignite/spi/swapspace/SwapContext;)V
    .locals 0
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "ctx"    # Lorg/apache/ignite/spi/swapspace/SwapContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "[B>;",
            "Lorg/apache/ignite/spi/swapspace/SwapContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 105
    .local p2, "pairs":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/spi/swapspace/SwapKey;[B>;"
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-class v0, Lorg/apache/ignite/spi/swapspace/noop/NoopSwapSpaceSpi;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
