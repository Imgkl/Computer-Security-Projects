.class public Lorg/apache/ignite/internal/AsyncSupportAdapter;
.super Ljava/lang/Object;
.source "AsyncSupportAdapter.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteAsyncSupport;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/ignite/lang/IgniteAsyncSupport;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteAsyncSupport;"
    }
.end annotation


# instance fields
.field protected curFut:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    .local p0, "this":Lorg/apache/ignite/internal/AsyncSupportAdapter;, "Lorg/apache/ignite/internal/AsyncSupportAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "async"    # Z

    .prologue
    .line 41
    .local p0, "this":Lorg/apache/ignite/internal/AsyncSupportAdapter;, "Lorg/apache/ignite/internal/AsyncSupportAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/AsyncSupportAdapter;->curFut:Ljava/lang/ThreadLocal;

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method protected createAsyncInstance()Lorg/apache/ignite/lang/IgniteAsyncSupport;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lorg/apache/ignite/internal/AsyncSupportAdapter;, "Lorg/apache/ignite/internal/AsyncSupportAdapter<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected createFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/lang/IgniteFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;)",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lorg/apache/ignite/internal/AsyncSupportAdapter;, "Lorg/apache/ignite/internal/AsyncSupportAdapter<TT;>;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TR;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-object v0
.end method

.method public future()Lorg/apache/ignite/lang/IgniteFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lorg/apache/ignite/internal/AsyncSupportAdapter;, "Lorg/apache/ignite/internal/AsyncSupportAdapter<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/AsyncSupportAdapter;->future(Z)Lorg/apache/ignite/lang/IgniteFuture;

    move-result-object v0

    return-object v0
.end method

.method public future(Z)Lorg/apache/ignite/lang/IgniteFuture;
    .locals 3
    .param p1, "reset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lorg/apache/ignite/internal/AsyncSupportAdapter;, "Lorg/apache/ignite/internal/AsyncSupportAdapter<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/AsyncSupportAdapter;->curFut:Ljava/lang/ThreadLocal;

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Asynchronous mode is disabled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/AsyncSupportAdapter;->curFut:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteFuture;

    .line 89
    .local v0, "fut":Lorg/apache/ignite/lang/IgniteFuture;, "Lorg/apache/ignite/lang/IgniteFuture<*>;"
    if-nez v0, :cond_1

    .line 90
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Asynchronous operation not started."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_1
    if-eqz p1, :cond_2

    .line 93
    iget-object v1, p0, Lorg/apache/ignite/internal/AsyncSupportAdapter;->curFut:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 95
    :cond_2
    return-object v0
.end method

.method public isAsync()Z
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lorg/apache/ignite/internal/AsyncSupportAdapter;, "Lorg/apache/ignite/internal/AsyncSupportAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/AsyncSupportAdapter;->curFut:Ljava/lang/ThreadLocal;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lorg/apache/ignite/internal/AsyncSupportAdapter;, "Lorg/apache/ignite/internal/AsyncSupportAdapter<TT;>;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/AsyncSupportAdapter;->curFut:Ljava/lang/ThreadLocal;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/apache/ignite/internal/AsyncSupportAdapter;->curFut:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/AsyncSupportAdapter;->createFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/lang/IgniteFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 108
    const/4 v0, 0x0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public withAsync()Lorg/apache/ignite/lang/IgniteAsyncSupport;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lorg/apache/ignite/internal/AsyncSupportAdapter;, "Lorg/apache/ignite/internal/AsyncSupportAdapter<TT;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/AsyncSupportAdapter;->isAsync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    .end local p0    # "this":Lorg/apache/ignite/internal/AsyncSupportAdapter;, "Lorg/apache/ignite/internal/AsyncSupportAdapter<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/AsyncSupportAdapter;, "Lorg/apache/ignite/internal/AsyncSupportAdapter<TT;>;"
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/AsyncSupportAdapter;->createAsyncInstance()Lorg/apache/ignite/lang/IgniteAsyncSupport;

    move-result-object p0

    goto :goto_0
.end method
