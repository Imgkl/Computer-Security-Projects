.class public abstract Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx;
.super Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;
.source "GridCloseableIteratorAdapterEx.java"

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
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx;, "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx;, "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx;->onClose()V

    .line 112
    :cond_0
    return-void
.end method

.method public final hasNextX()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx;, "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx<TT;>;"
    const/4 v1, 0x0

    .line 65
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx;->onHasNext()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    throw v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx;, "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final nextX()Ljava/lang/Object;
    .locals 3
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
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx;, "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx<TT;>;"
    const/4 v1, 0x0

    .line 39
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-object v1

    .line 43
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx;->onHasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 44
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    throw v0

    .line 46
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx;->onNext()Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0
.end method

.method protected onClose()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx;, "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx<TT;>;"
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx;, "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeX()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx;, "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Iterator has been closed."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx;->onRemove()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_1
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapterEx;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    throw v0
.end method
