.class Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$BlockingRejectedExecutionHandler;
.super Ljava/lang/Object;
.source "CacheLoadOnlyStoreAdapter.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockingRejectedExecutionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;)V
    .locals 0

    .prologue
    .line 307
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$BlockingRejectedExecutionHandler;, "Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter<TK;TV;TI;>.BlockingRejectedExecutionHandler;"
    iput-object p1, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$BlockingRejectedExecutionHandler;->this$0:Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;
    .param p2, "x1"    # Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$1;

    .prologue
    .line 307
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$BlockingRejectedExecutionHandler;, "Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter<TK;TV;TI;>.BlockingRejectedExecutionHandler;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$BlockingRejectedExecutionHandler;-><init>(Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;)V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 311
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$BlockingRejectedExecutionHandler;, "Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter<TK;TV;TI;>.BlockingRejectedExecutionHandler;"
    :try_start_0
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "ignored":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$BlockingRejectedExecutionHandler;->this$0:Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;

    invoke-static {v1}, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->access$100(Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    const-string v2, "Working thread was interrupted while loading data."

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 319
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 321
    .end local v0    # "ignored":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 314
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
