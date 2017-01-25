.class public interface abstract Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicyMXBean;
.super Ljava/lang/Object;
.source "IgfsPerBlockLruEvictionPolicyMXBean.java"


# annotations
.annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
    value = "MBean for IGFS per-block LRU cache eviction policy."
.end annotation


# virtual methods
.method public abstract getCurrentBlocks()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Current amount of blocks."
    .end annotation
.end method

.method public abstract getCurrentSize()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Current size of data in all blocks."
    .end annotation
.end method

.method public abstract getExcludePaths()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Collection of regex for paths whose blocks must not be evicted."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getMaxBlocks()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum allowed amount of blocks."
    .end annotation
.end method

.method public abstract getMaxSize()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum allowed size of all blocks in bytes."
    .end annotation
.end method

.method public abstract setExcludePaths(Ljava/util/Collection;)V
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Sets collection of regex for paths whose blocks must not be evicted."
    .end annotation
.end method

.method public abstract setMaxBlocks(I)V
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Sets maximum allowed amount of blocks."
    .end annotation
.end method

.method public abstract setMaxSize(J)V
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Sets aximum allowed size of data in all blocks in bytes."
    .end annotation
.end method
