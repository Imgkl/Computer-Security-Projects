.class public interface abstract Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpiMBean;
.super Ljava/lang/Object;
.source "FileSwapSpaceSpiMBean.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpiManagementMBean;


# annotations
.annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
    value = "MBean that provides configuration information on file-based swapspace SPI."
.end annotation


# virtual methods
.method public abstract getBaseDirectory()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Base directory."
    .end annotation
.end method

.method public abstract getMaxWriteQueueSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Max write queue size in bytes."
    .end annotation
.end method

.method public abstract getMaximumSparsity()F
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum sparsity."
    .end annotation
.end method

.method public abstract getReadStripesNumber()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Read pool size."
    .end annotation
.end method

.method public abstract getWriteBufferSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Write buffer size in bytes."
    .end annotation
.end method
