.class public abstract Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;
.super Ljava/lang/Object;
.source "CacheLoadOnlyStoreAdapter.java"

# interfaces
.implements Lorg/apache/ignite/cache/store/CacheStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$1;,
        Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$BlockingRejectedExecutionHandler;,
        Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$Worker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/cache/store/CacheStore",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_BATCH_QUEUE_SIZE:I = 0x64

.field public static final DFLT_BATCH_SIZE:I = 0x64

.field public static final DFLT_THREADS_COUNT:I


# instance fields
.field private batchQueueSize:I

.field private batchSize:I

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private threadsCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->$assertionsDisabled:Z

    .line 82
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->DFLT_THREADS_COUNT:I

    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;, "Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter<TK;TV;TI;>;"
    const/16 v0, 0x64

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput v0, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->batchSize:I

    .line 92
    iput v0, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->batchQueueSize:I

    .line 95
    sget v0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->DFLT_THREADS_COUNT:I

    iput v0, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->threadsCnt:I

    .line 307
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 250
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;, "Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter<TK;TV;TI;>;"
    return-void
.end method

.method public deleteAll(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;, "Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter<TK;TV;TI;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    return-void
.end method

.method public getBatchQueueSize()I
    .locals 1

    .prologue
    .line 197
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;, "Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter<TK;TV;TI;>;"
    iget v0, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->batchQueueSize:I

    return v0
.end method

.method public getBatchSize()I
    .locals 1

    .prologue
    .line 179
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;, "Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter<TK;TV;TI;>;"
    iget v0, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->batchSize:I

    return v0
.end method

.method public getThreadsCount()I
    .locals 1

    .prologue
    .line 215
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;, "Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter<TK;TV;TI;>;"
    iget v0, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->threadsCnt:I

    return v0
.end method

.method protected varargs abstract inputIterator([Ljava/lang/Object;)Ljava/util/Iterator;
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator",
            "<TI;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/integration/CacheLoaderException;
        }
    .end annotation
.end method

.method public load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;, "Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter<TK;TV;TI;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;, "Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter<TK;TV;TI;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs loadCache(Lorg/apache/ignite/lang/IgniteBiInClosure;[Ljava/lang/Object;)V
    .locals 12
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<TK;TV;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;, "Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter<TK;TV;TI;>;"
    .local p1, "c":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<TK;TV;>;"
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v2, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->threadsCnt:I

    iget v3, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->threadsCnt:I

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    iget v8, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->batchQueueSize:I

    invoke-direct {v7, v8}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v8, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$BlockingRejectedExecutionHandler;

    const/4 v11, 0x0

    invoke-direct {v8, p0, v11}, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$BlockingRejectedExecutionHandler;-><init>(Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$1;)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 131
    .local v1, "exec":Ljava/util/concurrent/ExecutorService;
    invoke-virtual {p0, p2}, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->inputIterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v10

    .line 133
    .local v10, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TI;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget v2, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->batchSize:I

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    .local v0, "buf":Ljava/util/Collection;, "Ljava/util/Collection<TI;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    iget-object v2, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Working thread was interrupted while loading data."

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 152
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 153
    new-instance v2, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$Worker;

    invoke-direct {v2, p0, p1, v0, p2}, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$Worker;-><init>(Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;Lorg/apache/ignite/lang/IgniteBiInClosure;Ljava/util/Collection;[Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_2
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 163
    const-wide v2, 0x7fffffffffffffffL

    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    .end local v0    # "buf":Ljava/util/Collection;, "Ljava/util/Collection<TI;>;"
    :goto_1
    return-void

    .line 143
    .restart local v0    # "buf":Ljava/util/Collection;, "Ljava/util/Collection<TI;>;"
    :cond_3
    :try_start_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    iget v3, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->batchSize:I

    if-ne v2, v3, :cond_0

    .line 146
    new-instance v2, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$Worker;

    invoke-direct {v2, p0, p1, v0, p2}, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$Worker;-><init>(Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;Lorg/apache/ignite/lang/IgniteBiInClosure;Ljava/util/Collection;[Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "buf":Ljava/util/Collection;, "Ljava/util/Collection<TI;>;"
    iget v2, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->batchSize:I

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0    # "buf":Ljava/util/Collection;, "Ljava/util/Collection<TI;>;"
    goto :goto_0

    .line 165
    :catch_0
    move-exception v9

    .line 166
    .local v9, "ignored":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Working thread was interrupted while waiting for put operations to complete."

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 168
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 155
    .end local v0    # "buf":Ljava/util/Collection;, "Ljava/util/Collection<TI;>;"
    .end local v9    # "ignored":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v9

    .line 157
    .local v9, "ignored":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_3
    sget-boolean v2, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "RejectedExecutionException was thrown while it shouldn\'t."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    .end local v9    # "ignored":Ljava/util/concurrent/RejectedExecutionException;
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 163
    const-wide v4, 0x7fffffffffffffffL

    :try_start_4
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    .line 169
    :goto_2
    throw v2

    .line 160
    .restart local v9    # "ignored":Ljava/util/concurrent/RejectedExecutionException;
    :cond_4
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 163
    const-wide v2, 0x7fffffffffffffffL

    :try_start_5
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 165
    :catch_2
    move-exception v9

    .line 166
    .local v9, "ignored":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Working thread was interrupted while waiting for put operations to complete."

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 168
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 165
    .end local v9    # "ignored":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v9

    .line 166
    .restart local v9    # "ignored":Ljava/lang/InterruptedException;
    iget-object v3, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v4, "Working thread was interrupted while waiting for put operations to complete."

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 168
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2
.end method

.method protected varargs abstract parse(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public sessionEnd(Z)V
    .locals 0
    .param p1, "commit"    # Z

    .prologue
    .line 260
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;, "Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter<TK;TV;TI;>;"
    return-void
.end method

.method public setBatchQueueSize(I)V
    .locals 0
    .param p1, "batchQueueSize"    # I

    .prologue
    .line 206
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;, "Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter<TK;TV;TI;>;"
    iput p1, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->batchQueueSize:I

    .line 207
    return-void
.end method

.method public setBatchSize(I)V
    .locals 0
    .param p1, "batchSize"    # I

    .prologue
    .line 188
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;, "Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter<TK;TV;TI;>;"
    iput p1, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->batchSize:I

    .line 189
    return-void
.end method

.method public setThreadsCount(I)V
    .locals 0
    .param p1, "threadsCnt"    # I

    .prologue
    .line 224
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;, "Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter<TK;TV;TI;>;"
    iput p1, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->threadsCnt:I

    .line 225
    return-void
.end method

.method public write(Ljavax/cache/Cache$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/Cache$Entry",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;, "Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter<TK;TV;TI;>;"
    .local p1, "entry":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<+TK;+TV;>;"
    return-void
.end method

.method public writeAll(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<+TK;+TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;, "Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter<TK;TV;TI;>;"
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/cache/Cache$Entry<+TK;+TV;>;>;"
    return-void
.end method
