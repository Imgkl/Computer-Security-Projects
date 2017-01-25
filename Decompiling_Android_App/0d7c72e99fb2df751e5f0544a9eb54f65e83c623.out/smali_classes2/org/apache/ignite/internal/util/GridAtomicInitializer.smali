.class public Lorg/apache/ignite/internal/util/GridAtomicInitializer;
.super Ljava/lang/Object;
.source "GridAtomicInitializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private e:Ljava/lang/Exception;

.field private volatile finished:Z

.field private final mux:Ljava/lang/Object;

.field private res:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lorg/apache/ignite/internal/util/GridAtomicInitializer;, "Lorg/apache/ignite/internal/util/GridAtomicInitializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->mux:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public await()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lorg/apache/ignite/internal/util/GridAtomicInitializer;, "Lorg/apache/ignite/internal/util/GridAtomicInitializer<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->finished:Z

    if-nez v0, :cond_1

    .line 100
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->finished:Z

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->mux:Ljava/lang/Object;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->wait(Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->e:Ljava/lang/Exception;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public init(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lorg/apache/ignite/internal/util/GridAtomicInitializer;, "Lorg/apache/ignite/internal/util/GridAtomicInitializer<TT;>;"
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->finished:Z

    if-nez v1, :cond_1

    .line 53
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->mux:Ljava/lang/Object;

    monitor-enter v2

    .line 54
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 56
    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->res:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->finished:Z

    .line 64
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->mux:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 67
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->e:Ljava/lang/Exception;

    if-eqz v1, :cond_3

    .line 71
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->e:Ljava/lang/Exception;

    instance-of v1, v1, Lorg/apache/ignite/IgniteCheckedException;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->e:Ljava/lang/Exception;

    check-cast v1, Lorg/apache/ignite/IgniteCheckedException;

    :goto_1
    throw v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->e:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->finished:Z

    .line 64
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->mux:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 62
    :catchall_1
    move-exception v1

    const/4 v3, 0x1

    :try_start_5
    iput-boolean v3, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->finished:Z

    .line 64
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->mux:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 71
    :cond_2
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->e:Ljava/lang/Exception;

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 73
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->res:Ljava/lang/Object;

    return-object v1
.end method

.method public result()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lorg/apache/ignite/internal/util/GridAtomicInitializer;, "Lorg/apache/ignite/internal/util/GridAtomicInitializer<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->res:Ljava/lang/Object;

    return-object v0
.end method

.method public succeeded()Z
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Lorg/apache/ignite/internal/util/GridAtomicInitializer;, "Lorg/apache/ignite/internal/util/GridAtomicInitializer<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->finished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->e:Ljava/lang/Exception;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lorg/apache/ignite/internal/util/GridAtomicInitializer;, "Lorg/apache/ignite/internal/util/GridAtomicInitializer<TT;>;"
    const-class v0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
