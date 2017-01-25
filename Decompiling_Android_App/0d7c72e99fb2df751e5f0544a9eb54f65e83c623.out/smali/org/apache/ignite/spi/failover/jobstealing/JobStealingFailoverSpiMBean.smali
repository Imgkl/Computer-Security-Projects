.class public interface abstract Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpiMBean;
.super Ljava/lang/Object;
.source "JobStealingFailoverSpiMBean.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpiManagementMBean;


# annotations
.annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
    value = "MBean that provides access to job stealing failover SPI configuration."
.end annotation


# virtual methods
.method public abstract getMaximumFailoverAttempts()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum number of attempts to execute a failed job on another node."
    .end annotation
.end method

.method public abstract getTotalFailedOverJobsCount()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Total number of jobs that were failed over including stolen ones."
    .end annotation
.end method

.method public abstract getTotalStolenJobsCount()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Total number of jobs that were stolen."
    .end annotation
.end method
