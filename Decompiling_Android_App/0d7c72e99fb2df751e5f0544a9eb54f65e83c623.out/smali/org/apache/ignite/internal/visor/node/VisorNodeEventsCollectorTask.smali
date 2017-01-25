.class public Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask;
.super Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;
.source "VisorNodeEventsCollectorTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$1;,
        Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;,
        Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorMultiNodeTask",
        "<",
        "Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;",
        "Ljava/lang/Iterable",
        "<+",
        "Lorg/apache/ignite/internal/visor/event/VisorGridEvent;",
        ">;",
        "Ljava/util/Collection",
        "<+",
        "Lorg/apache/ignite/internal/visor/event/VisorGridEvent;",
        ">;>;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;-><init>()V

    .line 175
    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    check-cast p1, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask;->job(Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;)Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;)Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;
    .locals 3
    .param p1, "arg"    # Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;

    .prologue
    .line 49
    new-instance v0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask;->debug:Z

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;-><init>(Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;ZLorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$1;)V

    return-object v0
.end method

.method protected reduce0(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/ignite/internal/visor/event/VisorGridEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v0, "allEvts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/event/VisorGridEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/compute/ComputeJobResult;

    .line 57
    .local v2, "r":Lorg/apache/ignite/compute/ComputeJobResult;
    invoke-interface {v2}, Lorg/apache/ignite/compute/ComputeJobResult;->getException()Lorg/apache/ignite/IgniteException;

    move-result-object v3

    if-nez v3, :cond_0

    .line 58
    invoke-interface {v2}, Lorg/apache/ignite/compute/ComputeJobResult;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 61
    .end local v2    # "r":Lorg/apache/ignite/compute/ComputeJobResult;
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .end local v0    # "allEvts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/event/VisorGridEvent;>;"
    :cond_2
    return-object v0
.end method

.method protected bridge synthetic reduce0(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask;->reduce0(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
