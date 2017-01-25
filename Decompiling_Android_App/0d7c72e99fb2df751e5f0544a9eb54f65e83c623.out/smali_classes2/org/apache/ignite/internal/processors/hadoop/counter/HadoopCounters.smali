.class public interface abstract Lorg/apache/ignite/internal/processors/hadoop/counter/HadoopCounters;
.super Ljava/lang/Object;
.source "HadoopCounters.java"


# virtual methods
.method public abstract all()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/hadoop/counter/HadoopCounter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract counter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/hadoop/counter/HadoopCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/internal/processors/hadoop/counter/HadoopCounter;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract merge(Lorg/apache/ignite/internal/processors/hadoop/counter/HadoopCounters;)V
.end method
