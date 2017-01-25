.class public interface abstract Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicyMBean;
.super Ljava/lang/Object;
.source "FifoEvictionPolicyMBean.java"


# annotations
.annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
    value = "MBean for FIFO cache eviction policy."
.end annotation


# virtual methods
.method public abstract getCurrentSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Current FIFO queue size."
    .end annotation
.end method

.method public abstract getMaxSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum allowed cache size."
    .end annotation
.end method

.method public abstract setMaxSize(I)V
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Set maximum allowed cache size."
    .end annotation
.end method
