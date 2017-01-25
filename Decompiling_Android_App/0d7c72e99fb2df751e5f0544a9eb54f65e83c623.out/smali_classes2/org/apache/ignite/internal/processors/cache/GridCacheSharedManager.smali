.class public interface abstract Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;
.super Ljava/lang/Object;
.source "GridCacheSharedManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onKernalStart()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract onKernalStop(Z)V
.end method

.method public abstract printMemoryStats()V
.end method

.method public abstract start(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract stop(Z)V
.end method
