.class public abstract Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;
.super Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;
.source "GridCloseableIteratorAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter",
        "<TT;>;",
        "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private closed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;, "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected final checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;, "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;->closed:Z

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iterator has been closed."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    return-void
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;, "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;->closed:Z

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;->onClose()V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;->closed:Z

    .line 85
    :cond_0
    return-void
.end method

.method public final hasNextX()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;, "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;->closed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;->onHasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;, "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;->closed:Z

    return v0
.end method

.method public final nextX()Ljava/lang/Object;
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
    .line 38
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;, "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter<TT;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;->hasNextX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;->onNext()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onClose()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;, "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter<TT;>;"
    return-void
.end method

.method protected abstract onHasNext()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method protected abstract onNext()Ljava/lang/Object;
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
.end method

.method protected onRemove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;, "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final removeX()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;, "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter<TT;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;->checkClosed()V

    .line 66
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;->onRemove()V

    .line 67
    return-void
.end method
