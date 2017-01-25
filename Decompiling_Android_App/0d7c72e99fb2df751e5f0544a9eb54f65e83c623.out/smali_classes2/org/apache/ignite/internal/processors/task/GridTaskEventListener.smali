.class interface abstract Lorg/apache/ignite/internal/processors/task/GridTaskEventListener;
.super Ljava/lang/Object;
.source "GridTaskEventListener.java"

# interfaces
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract onJobFailover(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;Lorg/apache/ignite/internal/GridJobSiblingImpl;Ljava/util/UUID;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/task/GridTaskWorker",
            "<**>;",
            "Lorg/apache/ignite/internal/GridJobSiblingImpl;",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onJobFinished(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;Lorg/apache/ignite/internal/GridJobSiblingImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/task/GridTaskWorker",
            "<**>;",
            "Lorg/apache/ignite/internal/GridJobSiblingImpl;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onJobSend(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;Lorg/apache/ignite/internal/GridJobSiblingImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/task/GridTaskWorker",
            "<**>;",
            "Lorg/apache/ignite/internal/GridJobSiblingImpl;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onTaskFinished(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/task/GridTaskWorker",
            "<**>;)V"
        }
    .end annotation
.end method

.method public abstract onTaskStarted(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/task/GridTaskWorker",
            "<**>;)V"
        }
    .end annotation
.end method
