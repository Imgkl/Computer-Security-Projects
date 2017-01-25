.class public interface abstract Lorg/apache/ignite/mxbean/ThreadPoolMXBean;
.super Ljava/lang/Object;
.source "ThreadPoolMXBean.java"


# annotations
.annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
    value = "MBean that provides access to information about executor service."
.end annotation


# virtual methods
.method public abstract getActiveCount()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Approximate number of threads that are actively executing tasks."
    .end annotation
.end method

.method public abstract getCompletedTaskCount()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Approximate total number of tasks that have completed execution."
    .end annotation
.end method

.method public abstract getCorePoolSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "The core number of threads."
    .end annotation
.end method

.method public abstract getKeepAliveTime()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Thread keep-alive time, which is the amount of time which threads in excess of the core pool size may remain idle before being terminated."
    .end annotation
.end method

.method public abstract getLargestPoolSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Largest number of threads that have ever simultaneously been in the pool."
    .end annotation
.end method

.method public abstract getMaximumPoolSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "The maximum allowed number of threads."
    .end annotation
.end method

.method public abstract getPoolSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Current number of threads in the pool."
    .end annotation
.end method

.method public abstract getQueueSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Current size of the execution queue."
    .end annotation
.end method

.method public abstract getRejectedExecutionHandlerClass()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Class name of current rejection handler."
    .end annotation
.end method

.method public abstract getTaskCount()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Approximate total number of tasks that have been scheduled for execution."
    .end annotation
.end method

.method public abstract getThreadFactoryClass()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Class name of thread factory used to create new threads."
    .end annotation
.end method

.method public abstract isShutdown()Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "True if this executor has been shut down."
    .end annotation
.end method

.method public abstract isTerminated()Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "True if all tasks have completed following shut down."
    .end annotation
.end method

.method public abstract isTerminating()Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "True if terminating but not yet terminated."
    .end annotation
.end method
