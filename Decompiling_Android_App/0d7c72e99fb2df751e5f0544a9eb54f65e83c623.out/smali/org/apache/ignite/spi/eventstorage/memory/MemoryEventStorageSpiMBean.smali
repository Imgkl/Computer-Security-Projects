.class public interface abstract Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpiMBean;
.super Ljava/lang/Object;
.source "MemoryEventStorageSpiMBean.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpiManagementMBean;


# annotations
.annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
    value = "MBean that provides access to memory event storage SPI configuration."
.end annotation


# virtual methods
.method public abstract clearAll()V
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Removes all events from the event queue."
    .end annotation
.end method

.method public abstract getExpireAgeMs()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Event time-to-live value."
    .end annotation
.end method

.method public abstract getExpireCount()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum event queue size."
    .end annotation
.end method

.method public abstract getQueueSize()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Current event queue size."
    .end annotation
.end method
