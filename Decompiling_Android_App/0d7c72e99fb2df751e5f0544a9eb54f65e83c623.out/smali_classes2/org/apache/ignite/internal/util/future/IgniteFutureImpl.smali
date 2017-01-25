.class public Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;
.super Ljava/lang/Object;
.source "IgniteFutureImpl.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteFuture",
        "<TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final fut:Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl<TV;>;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-boolean v0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 43
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl<TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->cancel()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/lang/IgniteFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<TV;>;TT;>;)",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl<TV;>;"
    .local p1, "doneCb":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-Lorg/apache/ignite/lang/IgniteFuture<TV;>;TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    new-instance v2, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$1;

    invoke-direct {v2, p0, p1}, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$1;-><init>(Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;Lorg/apache/ignite/lang/IgniteClosure;)V

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 94
    .local v0, "fut0":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    new-instance v1, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-object v1
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 59
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl<TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl<TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public get(J)Ljava/lang/Object;
    .locals 3
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl<TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get(J)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl<TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public internalFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl<TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl<TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl<TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v0

    return v0
.end method

.method public listen(Lorg/apache/ignite/lang/IgniteInClosure;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<-",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl<TV;>;"
    .local p1, "lsnr":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<-Lorg/apache/ignite/lang/IgniteFuture<TV;>;>;"
    const-string v0, "lsnr"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    new-instance v1, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;-><init>(Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;Lorg/apache/ignite/lang/IgniteInClosure;Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$1;)V

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 77
    return-void
.end method

.method public startTime()J
    .locals 2

    .prologue
    .line 54
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl<TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->startTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IgniteFuture [orig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
