.class public interface abstract Lorg/apache/ignite/IgniteDataStreamer;
.super Ljava/lang/Object;
.source "IgniteDataStreamer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# static fields
.field public static final DFLT_MAX_PARALLEL_OPS:I = 0x10

.field public static final DFLT_PER_NODE_BUFFER_SIZE:I = 0x400


# virtual methods
.method public abstract addData(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteFuture;
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;,
            Lorg/apache/ignite/IgniteInterruptedException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract addData(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgniteFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract addData(Ljava/util/Map$Entry;)Lorg/apache/ignite/lang/IgniteFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;,
            Lorg/apache/ignite/IgniteInterruptedException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract addData(Ljava/util/Map;)Lorg/apache/ignite/lang/IgniteFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract allowOverwrite(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation
.end method

.method public abstract allowOverwrite()Z
.end method

.method public abstract autoFlushFrequency()J
.end method

.method public abstract autoFlushFrequency(J)V
.end method

.method public abstract cacheName()Ljava/lang/String;
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;,
            Lorg/apache/ignite/IgniteInterruptedException;
        }
    .end annotation
.end method

.method public abstract close(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;,
            Lorg/apache/ignite/IgniteInterruptedException;
        }
    .end annotation
.end method

.method public abstract deployClass(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;,
            Lorg/apache/ignite/IgniteInterruptedException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract future()Lorg/apache/ignite/lang/IgniteFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract perNodeBufferSize()I
.end method

.method public abstract perNodeBufferSize(I)V
.end method

.method public abstract perNodeParallelOperations()I
.end method

.method public abstract perNodeParallelOperations(I)V
.end method

.method public abstract receiver(Lorg/apache/ignite/stream/StreamReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/stream/StreamReceiver",
            "<TK;TV;>;)V"
        }
    .end annotation
.end method

.method public abstract removeData(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;,
            Lorg/apache/ignite/IgniteInterruptedException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract skipStore(Z)V
.end method

.method public abstract skipStore()Z
.end method

.method public abstract tryFlush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;,
            Lorg/apache/ignite/IgniteInterruptedException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
