.class public Lorg/apache/ignite/thread/IgniteStripedThreadPoolExecutor;
.super Ljava/lang/Object;
.source "IgniteStripedThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_CONCUR_LVL:I = 0x10

.field public static final DFLT_SEG_POOL_SIZE:I = 0x8


# instance fields
.field private final execs:[Ljava/util/concurrent/ExecutorService;

.field private final segMask:I

.field private final segShift:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/apache/ignite/thread/IgniteStripedThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/thread/IgniteStripedThreadPoolExecutor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-array v4, v6, [Ljava/util/concurrent/ExecutorService;

    iput-object v4, p0, Lorg/apache/ignite/thread/IgniteStripedThreadPoolExecutor;->execs:[Ljava/util/concurrent/ExecutorService;

    .line 50
    new-instance v0, Lorg/apache/ignite/thread/IgniteThreadFactory;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lorg/apache/ignite/thread/IgniteThreadFactory;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "factory":Ljava/util/concurrent/ThreadFactory;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 53
    iget-object v4, p0, Lorg/apache/ignite/thread/IgniteStripedThreadPoolExecutor;->execs:[Ljava/util/concurrent/ExecutorService;

    const/16 v5, 0x8

    invoke-static {v5, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    aput-object v5, v4, v1

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_0
    const/4 v2, 0x0

    .line 57
    .local v2, "sshift":I
    const/4 v3, 0x1

    .line 59
    .local v3, "ssize":I
    :goto_1
    if-ge v3, v6, :cond_1

    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 62
    shl-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 65
    :cond_1
    rsub-int/lit8 v4, v2, 0x20

    iput v4, p0, Lorg/apache/ignite/thread/IgniteStripedThreadPoolExecutor;->segShift:I

    .line 66
    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/apache/ignite/thread/IgniteStripedThreadPoolExecutor;->segMask:I

    .line 68
    return-void
.end method

.method private execForTask(Ljava/lang/Object;)Ljava/util/concurrent/ExecutorService;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/concurrent/ExecutorService;"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "cmd":Ljava/lang/Object;, "TT;"
    sget-boolean v0, Lorg/apache/ignite/thread/IgniteStripedThreadPoolExecutor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/thread/IgniteStripedThreadPoolExecutor;->execs:[Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/thread/IgniteStripedThreadPoolExecutor;->hash(I)I

    move-result v1

    iget v2, p0, Lorg/apache/ignite/thread/IgniteStripedThreadPoolExecutor;->segShift:I

    ushr-int/2addr v1, v2

    iget v2, p0, Lorg/apache/ignite/thread/IgniteStripedThreadPoolExecutor;->segMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method private hash(I)I
    .locals 2
    .param p1, "h"    # I

    .prologue
    .line 201
    shl-int/lit8 v0, p1, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p1, v0

    .line 202
    ushr-int/lit8 v0, p1, 0xa

    xor-int/2addr p1, v0

    .line 203
    shl-int/lit8 v0, p1, 0x3

    add-int/2addr p1, v0

    .line 204
    ushr-int/lit8 v0, p1, 0x6

    xor-int/2addr p1, v0

    .line 205
    shl-int/lit8 v0, p1, 0x2

    shl-int/lit8 v1, p1, 0xe

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 206
    ushr-int/lit8 v0, p1, 0x10

    xor-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v4, 0x1

    .line 112
    .local v4, "res":Z
    iget-object v0, p0, Lorg/apache/ignite/thread/IgniteStripedThreadPoolExecutor;->execs:[Ljava/util/concurrent/ExecutorService;

    .local v0, "arr$":[Ljava/util/concurrent/ExecutorService;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 113
    .local v1, "exec":Ljava/util/concurrent/ExecutorService;
    invoke-interface {v1, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    and-int/2addr v4, v5

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "exec":Ljava/util/concurrent/ExecutorService;
    :cond_0
    return v4
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/Runnable;

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lorg/apache/ignite/thread/IgniteStripedThreadPoolExecutor;->execForTask(Ljava/lang/Object;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v7, 0x1

    .line 136
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 138
    .local v2, "futs":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Callable;

    .line 139
    .local v4, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-direct {p0, v4}, Lorg/apache/ignite/thread/IgniteStripedThreadPoolExecutor;->execForTask(Ljava/lang/Object;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    .end local v4    # "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :cond_0
    const/4 v0, 0x0

    .line 144
    .local v0, "done":Z
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .local v1, "fut":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 148
    :catch_0
    move-exception v5

    goto :goto_1

    .line 153
    .end local v1    # "fut":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_1
    const/4 v0, 0x1

    .line 158
    if-nez v0, :cond_3

    .line 159
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 160
    .restart local v1    # "fut":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v1, v7}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_2

    .line 158
    .end local v1    # "fut":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :catchall_0
    move-exception v5

    if-nez v0, :cond_2

    .line 159
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 160
    .restart local v1    # "fut":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v1, v7}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_3

    .end local v1    # "fut":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_2
    throw v5

    .line 148
    .restart local v1    # "fut":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :catch_1
    move-exception v5

    goto :goto_1

    .line 160
    .end local v1    # "fut":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_3
    return-object v2
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isShutdown()Z
    .locals 5

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/ignite/thread/IgniteStripedThreadPoolExecutor;->execs:[Ljava/util/concurrent/ExecutorService;

    .local v0, "arr$":[Ljava/util/concurrent/ExecutorService;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 91
    .local v1, "exec":Ljava/util/concurrent/ExecutorService;
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-nez v4, :cond_0

    .line 92
    const/4 v4, 0x0

    .line 95
    .end local v1    # "exec":Ljava/util/concurrent/ExecutorService;
    :goto_1
    return v4

    .line 90
    .restart local v1    # "exec":Ljava/util/concurrent/ExecutorService;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "exec":Ljava/util/concurrent/ExecutorService;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public isTerminated()Z
    .locals 5

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/ignite/thread/IgniteStripedThreadPoolExecutor;->execs:[Ljava/util/concurrent/ExecutorService;

    .local v0, "arr$":[Ljava/util/concurrent/ExecutorService;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 101
    .local v1, "exec":Ljava/util/concurrent/ExecutorService;
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 102
    const/4 v4, 0x0

    .line 105
    .end local v1    # "exec":Ljava/util/concurrent/ExecutorService;
    :goto_1
    return v4

    .line 100
    .restart local v1    # "exec":Ljava/util/concurrent/ExecutorService;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "exec":Ljava/util/concurrent/ExecutorService;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/ignite/thread/IgniteStripedThreadPoolExecutor;->execs:[Ljava/util/concurrent/ExecutorService;

    .local v0, "arr$":[Ljava/util/concurrent/ExecutorService;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 73
    .local v1, "exec":Ljava/util/concurrent/ExecutorService;
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "exec":Ljava/util/concurrent/ExecutorService;
    :cond_0
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 80
    .local v6, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    iget-object v0, p0, Lorg/apache/ignite/thread/IgniteStripedThreadPoolExecutor;->execs:[Ljava/util/concurrent/ExecutorService;

    .local v0, "arr$":[Ljava/util/concurrent/ExecutorService;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 81
    .local v1, "exec":Ljava/util/concurrent/ExecutorService;
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "i$":I
    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 82
    .local v5, "r":Ljava/lang/Runnable;
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    .end local v5    # "r":Ljava/lang/Runnable;
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 85
    .end local v1    # "exec":Ljava/util/concurrent/ExecutorService;
    :cond_1
    return-object v6
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lorg/apache/ignite/thread/IgniteStripedThreadPoolExecutor;->execForTask(Ljava/lang/Object;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 125
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/thread/IgniteStripedThreadPoolExecutor;->execForTask(Ljava/lang/Object;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/thread/IgniteStripedThreadPoolExecutor;->execForTask(Ljava/lang/Object;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    const-class v0, Lorg/apache/ignite/thread/IgniteStripedThreadPoolExecutor;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
