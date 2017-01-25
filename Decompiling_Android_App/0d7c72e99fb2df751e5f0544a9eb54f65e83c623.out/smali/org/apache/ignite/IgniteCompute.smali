.class public interface abstract Lorg/apache/ignite/IgniteCompute;
.super Ljava/lang/Object;
.source "IgniteCompute.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteAsyncSupport;


# virtual methods
.method public abstract activeTaskFutures()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/compute/ComputeTaskFuture",
            "<TR;>;>;"
        }
    .end annotation
.end method

.method public abstract affinityCall(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteCallable;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract affinityRun(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteRunnable;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract apply(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TR;>;TT;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract apply(Lorg/apache/ignite/lang/IgniteClosure;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteReducer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R1:",
            "Ljava/lang/Object;",
            "R2:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TR1;>;",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TR1;TR2;>;)TR2;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract apply(Lorg/apache/ignite/lang/IgniteClosure;Ljava/util/Collection;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TR;>;",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Ljava/util/Collection",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract broadcast(Lorg/apache/ignite/lang/IgniteCallable;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<TR;>;)",
            "Ljava/util/Collection",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract broadcast(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)Ljava/util/Collection;
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TR;>;TT;)",
            "Ljava/util/Collection",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract broadcast(Lorg/apache/ignite/lang/IgniteRunnable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract call(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteReducer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R1:",
            "Ljava/lang/Object;",
            "R2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<TR1;>;>;",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TR1;TR2;>;)TR2;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract call(Lorg/apache/ignite/lang/IgniteCallable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract call(Ljava/util/Collection;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<TR;>;>;)",
            "Ljava/util/Collection",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract clusterGroup()Lorg/apache/ignite/cluster/ClusterGroup;
.end method

.method public abstract execute(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/compute/ComputeTask",
            "<TT;TR;>;>;TT;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract execute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/compute/ComputeTask",
            "<TT;TR;>;TT;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract future()Lorg/apache/ignite/compute/ComputeTaskFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/compute/ComputeTaskFuture",
            "<TR;>;"
        }
    .end annotation
.end method

.method public abstract localDeployTask(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/compute/ComputeTask;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract localTasks()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/compute/ComputeTask",
            "<**>;>;>;"
        }
    .end annotation
.end method

.method public abstract run(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/lang/IgniteRunnable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract run(Lorg/apache/ignite/lang/IgniteRunnable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract undeployTask(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract withAsync()Lorg/apache/ignite/IgniteCompute;
.end method

.method public abstract withName(Ljava/lang/String;)Lorg/apache/ignite/IgniteCompute;
.end method

.method public abstract withNoFailover()Lorg/apache/ignite/IgniteCompute;
.end method

.method public abstract withTimeout(J)Lorg/apache/ignite/IgniteCompute;
.end method
