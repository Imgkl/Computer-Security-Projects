.class interface abstract Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;
.super Ljava/lang/Object;
.source "CacheContinuousQueryListener.java"


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
.method public abstract notifyExisting()Z
.end method

.method public abstract oldValueRequired()Z
.end method

.method public abstract onEntryUpdated(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent",
            "<TK;TV;>;ZZ)V"
        }
    .end annotation
.end method

.method public abstract onExecution()V
.end method

.method public abstract onUnregister()V
.end method
