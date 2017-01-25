.class public interface abstract Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
.super Ljava/lang/Object;
.source "GridOffHeapPartitionedMap.java"


# virtual methods
.method public abstract allocatedSize()J
.end method

.method public abstract concurrency()I
.end method

.method public abstract contains(II[B)Z
.end method

.method public abstract destruct()V
.end method

.method public abstract enableEviction(II[B)V
.end method

.method public abstract eventListener(Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;)Z
.end method

.method public abstract evictListener(Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)Z
.end method

.method public abstract freeSize()J
.end method

.method public abstract get(II[B)[B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract insert(II[B[B)V
.end method

.method public abstract iterator()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<[B[B>;>;"
        }
    .end annotation
.end method

.method public abstract iterator(I)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<[B[B>;>;"
        }
    .end annotation
.end method

.method public abstract iterator(Lorg/apache/ignite/internal/util/typedef/CX2;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/util/typedef/CX2",
            "<",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;TT;>;)",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract loadFactor()F
.end method

.method public abstract memorySize()J
.end method

.method public abstract partitions()I
.end method

.method public abstract put(II[B[B)Z
.end method

.method public abstract remove(II[B)[B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract removex(II[B)Z
.end method

.method public abstract size()J
.end method

.method public abstract size(Ljava/util/Set;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)J"
        }
    .end annotation
.end method

.method public abstract systemAllocatedSize()J
.end method

.method public abstract valuePointer(II[B)Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B)",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
