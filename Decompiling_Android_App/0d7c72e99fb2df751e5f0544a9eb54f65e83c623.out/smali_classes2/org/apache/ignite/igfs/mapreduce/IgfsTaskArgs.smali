.class public interface abstract Lorg/apache/ignite/igfs/mapreduce/IgfsTaskArgs;
.super Ljava/lang/Object;
.source "IgfsTaskArgs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract igfsName()Ljava/lang/String;
.end method

.method public abstract maxRangeLength()J
.end method

.method public abstract paths()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;"
        }
    .end annotation
.end method

.method public abstract recordResolver()Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
.end method

.method public abstract skipNonExistentFiles()Z
.end method

.method public abstract userArgument()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
