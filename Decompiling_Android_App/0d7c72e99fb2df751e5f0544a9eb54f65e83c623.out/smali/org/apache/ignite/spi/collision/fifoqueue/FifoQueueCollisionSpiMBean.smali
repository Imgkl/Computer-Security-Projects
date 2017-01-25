.class public interface abstract Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpiMBean;
.super Ljava/lang/Object;
.source "FifoQueueCollisionSpiMBean.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpiManagementMBean;


# annotations
.annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
    value = "MBean provides information about FIFO queue based collision SPI configuration."
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

.method public abstract getParallelJobsNumber()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of jobs that can be executed in parallel."
    .end annotation
.end method

.method public abstract getWaitingJobsNumber()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum allowed number of waiting jobs."
    .end annotation
.end method

.method public abstract setParallelJobsNumber(I)V
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of jobs that can be executed in parallel."
    .end annotation
.end method

.method public abstract setWaitingJobsNumber(I)V
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum allowed number of waiting jobs."
    .end annotation
.end method
