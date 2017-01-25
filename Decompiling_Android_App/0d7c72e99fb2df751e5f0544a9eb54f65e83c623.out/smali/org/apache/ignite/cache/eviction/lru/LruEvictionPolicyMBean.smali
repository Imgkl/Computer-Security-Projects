.class public interface abstract Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicyMBean;
.super Ljava/lang/Object;
.source "LruEvictionPolicyMBean.java"


# annotations
.annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
    value = "MBean for LRU cache eviction policy."
.end annotation


# virtual methods
.method public abstract getCurrentSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Current queue size."
    .end annotation
.end method

.method public abstract getMaxSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum allowed cache size."
    .end annotation
.end method

.method public abstract setMaxSize(I)V
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Sets maximum allowed cache size."
    .end annotation
.end method
