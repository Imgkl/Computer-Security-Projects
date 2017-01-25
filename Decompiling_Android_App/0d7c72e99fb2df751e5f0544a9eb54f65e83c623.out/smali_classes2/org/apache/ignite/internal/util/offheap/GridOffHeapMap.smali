.class public interface abstract Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;
.super Ljava/lang/Object;
.source "GridOffHeapMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract allocatedSize()J
.end method

.method public abstract concurrency()I
.end method

.method public abstract contains(I[B)Z
.end method

.method public abstract destruct()V
.end method

.method public abstract enableEviction(I[B)V
.end method

.method public abstract eventListener(Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;)Z
.end method

.method public abstract evictListener(Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)Z
.end method

.method public abstract freeSize()J
.end method

.method public abstract get(I[B)[B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract insert(I[B[B)V
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

.method public abstract iterator(Lorg/apache/ignite/internal/util/typedef/CX2;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .param p1    # Lorg/apache/ignite/internal/util/typedef/CX2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

.method public abstract partition()I
.end method

.method public abstract put(I[B[B)Z
.end method

.method public abstract remove(I[B)[B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract removex(I[B)Z
.end method

.method public abstract size()J
.end method

.method public abstract systemAllocatedSize()J
.end method

.method public abstract totalSize()J
.end method

.method public abstract valuePointer(I[B)Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B)",
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
