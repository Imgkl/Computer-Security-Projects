.class public interface abstract Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpiMBean;
.super Ljava/lang/Object;
.source "AlwaysFailoverSpiMBean.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpiManagementMBean;


# annotations
.annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
    value = "MBean that provides access to always failover SPI configuration."
.end annotation


# virtual methods
.method public abstract getMaximumFailoverAttempts()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum number of attempts to execute a failed job on another node."
    .end annotation
.end method

.method public abstract getTotalFailoverJobsCount()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Total number of jobs that were failed over."
    .end annotation
.end method
