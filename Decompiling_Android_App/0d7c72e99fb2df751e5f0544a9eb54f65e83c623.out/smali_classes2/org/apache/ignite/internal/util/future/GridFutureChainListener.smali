.class public Lorg/apache/ignite/internal/util/future/GridFutureChainListener;
.super Ljava/lang/Object;
.source "GridFutureChainListener.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteInClosure;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteInClosure",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final doneCb:Lorg/apache/ignite/lang/IgniteClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;TR;>;"
        }
    .end annotation
.end field

.field private final fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/util/future/GridFutureAdapter;Lorg/apache/ignite/lang/IgniteClosure;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<TR;>;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureChainListener;, "Lorg/apache/ignite/internal/util/future/GridFutureChainListener<TT;TR;>;"
    .local p1, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    .local p2, "doneCb":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/ignite/internal/util/future/GridFutureChainListener;->fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 48
    iput-object p2, p0, Lorg/apache/ignite/internal/util/future/GridFutureChainListener;->doneCb:Lorg/apache/ignite/lang/IgniteClosure;

    .line 49
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureChainListener;, "Lorg/apache/ignite/internal/util/future/GridFutureChainListener<TT;TR;>;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/future/GridFutureChainListener;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureChainListener;, "Lorg/apache/ignite/internal/util/future/GridFutureChainListener<TT;TR;>;"
    .local p1, "t":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridFutureChainListener;->fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridFutureChainListener;->doneCb:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-interface {v2, p1}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/util/lang/GridClosureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 67
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridFutureChainListener;->fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/lang/GridClosureException;->unwrap()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 59
    .end local v0    # "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    :catch_1
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to notify chained future (is grid stopped?) [doneCb="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/future/GridFutureChainListener;->doneCb:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", err="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 63
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridFutureChainListener;->fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    .line 65
    throw v0

    .line 59
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    goto :goto_1
.end method
