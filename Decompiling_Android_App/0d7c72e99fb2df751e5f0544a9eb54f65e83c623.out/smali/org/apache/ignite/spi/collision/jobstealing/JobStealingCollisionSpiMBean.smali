.class public interface abstract Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpiMBean;
.super Ljava/lang/Object;
.source "JobStealingCollisionSpiMBean.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpiManagementMBean;


# annotations
.annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
    value = "MBean for job stealing based collision SPI."
.end annotation


# virtual methods
.method public abstract getActiveJobsThreshold()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of jobs that can be executed in parallel."
    .end annotation
.end method

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

.method public abstract getCurrentJobsToStealNumber()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of jobs to be stolen."
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

.method public abstract getMaximumStealingAttempts()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum number of attempts to steal job by another node."
    .end annotation
.end method

.method public abstract getMessageExpireTime()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Message expire time."
    .end annotation
.end method

.method public abstract getStealingAttributes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Node attributes to enable job stealing for."
    .end annotation
.end method

.method public abstract getTotalStolenJobsNumber()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of stolen jobs."
    .end annotation
.end method

.method public abstract getWaitJobsThreshold()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Job count threshold."
    .end annotation
.end method

.method public abstract isStealingEnabled()Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Flag indicating whether this node should attempt to steal jobs from other nodes."
    .end annotation
.end method

.method public abstract setActiveJobsThreshold(I)V
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of jobs that can be executed in parallel."
    .end annotation
.end method

.method public abstract setMaximumStealingAttempts(I)V
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum number of attempts to steal job by another node."
    .end annotation
.end method

.method public abstract setMessageExpireTime(J)V
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Message expire time."
    .end annotation
.end method

.method public abstract setStealingEnabled(Z)V
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Flag indicating whether this node should attempt to steal jobs from other nodes."
    .end annotation
.end method

.method public abstract setWaitJobsThreshold(I)V
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Job count threshold."
    .end annotation
.end method
