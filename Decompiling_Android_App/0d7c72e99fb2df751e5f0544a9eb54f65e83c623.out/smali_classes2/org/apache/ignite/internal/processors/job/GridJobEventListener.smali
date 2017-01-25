.class interface abstract Lorg/apache/ignite/internal/processors/job/GridJobEventListener;
.super Ljava/lang/Object;
.source "GridJobEventListener.java"

# interfaces
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract onBeforeJobResponseSent(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V
.end method

.method public abstract onJobFinished(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V
.end method

.method public abstract onJobStarted(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V
.end method
