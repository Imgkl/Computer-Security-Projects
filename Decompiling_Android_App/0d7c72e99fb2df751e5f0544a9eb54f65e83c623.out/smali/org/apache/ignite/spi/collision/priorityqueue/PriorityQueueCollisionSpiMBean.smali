.class public interface abstract Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpiMBean;
.super Ljava/lang/Object;
.source "PriorityQueueCollisionSpiMBean.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpiManagementMBean;


# annotations
.annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
    value = "MBean provides access to the priority queue collision SPI."
.end annotation


# virtual methods
.method public abstract getCurrentActiveJobsNumber()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of active jobs."
    .end annotation
.end method

.method public abstract getCurrentHeldJobsNumber()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of held jobs."
    .end annotation
.end method

.method public abstract getCurrentRunningJobsNumber()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of running jobs."
    .end annotation
.end method

.method public abstract getCurrentWaitJobsNumber()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of jobs that wait for execution."
    .end annotation
.end method

.method public abstract getDefaultPriority()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Default priority to use if a task does not have priority attribute set."
    .end annotation
.end method

.method public abstract getJobPriorityAttributeKey()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Key name of job priority attribute."
    .end annotation
.end method

.method public abstract getParallelJobsNumber()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of jobs that can be executed in parallel."
    .end annotation
.end method

.method public abstract getPriorityAttributeKey()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Key name of task priority attribute."
    .end annotation
.end method

.method public abstract getStarvationIncrement()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Value to increment job priority by every time a lower priority job gets behind a higher priority job."
    .end annotation
.end method

.method public abstract getWaitingJobsNumber()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum allowed number of waiting jobs."
    .end annotation
.end method

.method public abstract isStarvationPreventionEnabled()Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Flag indicating whether job starvation prevention is enabled."
    .end annotation
.end method

.method public abstract setDefaultPriority(I)V
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Default priority to use if a task does not have priority attribute set."
    .end annotation
.end method

.method public abstract setParallelJobsNumber(I)V
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of jobs that can be executed in parallel."
    .end annotation
.end method

.method public abstract setStarvationIncrement(I)V
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Value to increment job priority by every time a lower priority job gets behind a higher priority job."
    .end annotation
.end method

.method public abstract setStarvationPreventionEnabled(Z)V
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Flag indicating whether job starvation prevention is enabled."
    .end annotation
.end method

.method public abstract setWaitingJobsNumber(I)V
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum allowed number of waiting jobs."
    .end annotation
.end method
