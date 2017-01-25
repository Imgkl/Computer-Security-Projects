.class public Lorg/apache/ignite/spi/indexing/noop/NoopIndexingSpi;
.super Lorg/apache/ignite/spi/IgniteSpiAdapter;
.source "NoopIndexingSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/indexing/IndexingSpi;


# annotations
.annotation runtime Lorg/apache/ignite/spi/IgniteSpiNoop;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/spi/indexing/noop/NoopIndexingSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/indexing/noop/NoopIndexingSpi;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwap(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 51
    sget-boolean v0, Lorg/apache/ignite/spi/indexing/noop/NoopIndexingSpi;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_0
    return-void
.end method

.method public onUnswap(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 56
    sget-boolean v0, Lorg/apache/ignite/spi/indexing/noop/NoopIndexingSpi;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_0
    return-void
.end method

.method public query(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)Ljava/util/Iterator;
    .locals 2
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filters"    # Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<**>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "params":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v1, "You have to configure custom GridIndexingSpi implementation."

    invoke-direct {v0, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 46
    sget-boolean v0, Lorg/apache/ignite/spi/indexing/noop/NoopIndexingSpi;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_0
    return-void
.end method

.method public spiStart(Ljava/lang/String;)V
    .locals 0
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
    .line 62
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
    .line 67
    return-void
.end method

.method public store(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "val"    # Ljava/lang/Object;
    .param p4, "expirationTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 41
    sget-boolean v0, Lorg/apache/ignite/spi/indexing/noop/NoopIndexingSpi;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_0
    return-void
.end method
