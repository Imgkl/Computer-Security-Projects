.class public Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper;
.super Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;
.source "GridSpiCloseableIteratorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final iter:Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper;, "Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper<TT;>;"
    .local p1, "iter":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;-><init>()V

    .line 38
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper;->iter:Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;

    .line 41
    return-void
.end method


# virtual methods
.method protected onClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper;, "Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper;->iter:Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;->close()V

    .line 56
    return-void
.end method

.method protected onHasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper;, "Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper;->iter:Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method protected onNext()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper;, "Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper;->iter:Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
