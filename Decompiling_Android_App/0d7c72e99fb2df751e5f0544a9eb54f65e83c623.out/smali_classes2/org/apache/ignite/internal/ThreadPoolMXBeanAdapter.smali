.class public Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;
.super Ljava/lang/Object;
.source "ThreadPoolMXBeanAdapter.java"

# interfaces
.implements Lorg/apache/ignite/mxbean/ThreadPoolMXBean;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final exec:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "exec"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-boolean v0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    .line 42
    return-void
.end method


# virtual methods
.method public getActiveCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCompletedTaskCount()J
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getCorePoolSize()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getKeepAliveTime()J
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getLargestPoolSize()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getLargestPoolSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaximumPoolSize()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPoolSize()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getQueueSize()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRejectedExecutionHandlerClass()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    instance-of v1, v1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 108
    const-string v1, ""

    .line 112
    :goto_0
    return-object v1

    .line 110
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v0

    .line 112
    .local v0, "hnd":Ljava/util/concurrent/RejectedExecutionHandler;
    if-nez v0, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTaskCount()J
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getThreadFactoryClass()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    iget-object v1, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    instance-of v1, v1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 118
    const-string v1, ""

    .line 122
    :goto_0
    return-object v1

    .line 120
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 122
    .local v0, "factory":Ljava/util/concurrent/ThreadFactory;
    if-nez v0, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public isTerminating()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;->exec:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    const-class v0, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
