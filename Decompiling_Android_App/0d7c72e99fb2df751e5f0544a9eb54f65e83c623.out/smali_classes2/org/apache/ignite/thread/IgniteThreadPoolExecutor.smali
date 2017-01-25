.class public Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "IgniteThreadPoolExecutor.java"


# static fields
.field public static final DFLT_CORE_POOL_SIZE:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v2, 0x64

    .line 58
    const-wide/16 v4, 0x0

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v7, Lorg/apache/ignite/thread/IgniteThreadFactory;

    invoke-direct {v7, v8}, Lorg/apache/ignite/thread/IgniteThreadFactory;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v1 .. v8}, Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 66
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/BlockingQueue;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maxPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    const/4 v8, 0x0

    .line 83
    new-instance v7, Lorg/apache/ignite/thread/IgniteThreadFactory;

    invoke-direct {v7, v8}, Lorg/apache/ignite/thread/IgniteThreadFactory;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v8}, Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 91
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maxPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p6, "hnd"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    .local p5, "workQ":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v7, Lorg/apache/ignite/thread/IgniteThreadFactory;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lorg/apache/ignite/thread/IgniteThreadFactory;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 120
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 11
    .param p1, "corePoolSize"    # I
    .param p2, "maxPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p6, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p7, "hnd"    # Ljava/util/concurrent/RejectedExecutionHandler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 240
    .local p5, "workQ":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    if-nez p7, :cond_0

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 249
    return-void

    :cond_0
    move-object/from16 v9, p7

    .line 240
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "gridName"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x64

    .line 151
    const-wide/16 v4, 0x0

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v7, Lorg/apache/ignite/thread/IgniteThreadFactory;

    invoke-direct {v7, p1}, Lorg/apache/ignite/thread/IgniteThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v1 .. v8}, Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJLjava/util/concurrent/BlockingQueue;)V
    .locals 10
    .param p1, "gridName"    # Ljava/lang/String;
    .param p2, "corePoolSize"    # I
    .param p3, "maxPoolSize"    # I
    .param p4, "keepAliveTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p6, "workQ":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Lorg/apache/ignite/thread/IgniteThreadFactory;

    invoke-direct {v8, p1}, Lorg/apache/ignite/thread/IgniteThreadFactory;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJLjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 10
    .param p1, "gridName"    # Ljava/lang/String;
    .param p2, "corePoolSize"    # I
    .param p3, "maxPoolSize"    # I
    .param p4, "keepAliveTime"    # J
    .param p7, "hnd"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 209
    .local p6, "workQ":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v7, Lorg/apache/ignite/thread/IgniteThreadFactory;

    invoke-direct {v7, p1}, Lorg/apache/ignite/thread/IgniteThreadFactory;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 217
    return-void
.end method
