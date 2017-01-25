.class public interface abstract Lorg/apache/ignite/internal/processors/hadoop/HadoopJobInfo;
.super Ljava/lang/Object;
.source "HadoopJobInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract createJob(Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;Lorg/apache/ignite/IgniteLogger;)Lorg/apache/ignite/internal/processors/hadoop/HadoopJob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract hasCombiner()Z
.end method

.method public abstract hasReducer()Z
.end method

.method public abstract jobName()Ljava/lang/String;
.end method

.method public abstract property(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract reducers()I
.end method

.method public abstract user()Ljava/lang/String;
.end method
