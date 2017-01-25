.class public interface abstract Lorg/apache/ignite/IgniteFileSystem;
.super Ljava/lang/Object;
.source "IgniteFileSystem.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteAsyncSupport;


# static fields
.field public static final IGFS_SCHEME:Ljava/lang/String; = "igfs"


# virtual methods
.method public abstract affinity(Lorg/apache/ignite/igfs/IgfsPath;JJ)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "JJ)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsBlockLocation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract affinity(Lorg/apache/ignite/igfs/IgfsPath;JJJ)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "JJJ)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsBlockLocation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract append(Lorg/apache/ignite/igfs/IgfsPath;IZLjava/util/Map;)Lorg/apache/ignite/igfs/IgfsOutputStream;
    .param p4    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "IZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/ignite/igfs/IgfsOutputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract append(Lorg/apache/ignite/igfs/IgfsPath;Z)Lorg/apache/ignite/igfs/IgfsOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;
.end method

.method public abstract create(Lorg/apache/ignite/igfs/IgfsPath;IZIJLjava/util/Map;)Lorg/apache/ignite/igfs/IgfsOutputStream;
    .param p7    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "IZIJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/ignite/igfs/IgfsOutputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract create(Lorg/apache/ignite/igfs/IgfsPath;IZLorg/apache/ignite/lang/IgniteUuid;IJLjava/util/Map;)Lorg/apache/ignite/igfs/IgfsOutputStream;
    .param p4    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "IZ",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "IJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/ignite/igfs/IgfsOutputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract create(Lorg/apache/ignite/igfs/IgfsPath;Z)Lorg/apache/ignite/igfs/IgfsOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract delete(Lorg/apache/ignite/igfs/IgfsPath;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract execute(Ljava/lang/Class;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;Ljava/lang/Object;)Ljava/lang/Object;
    .param p2    # Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
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
            "Lorg/apache/ignite/igfs/mapreduce/IgfsTask",
            "<TT;TR;>;>;",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;TT;)TR;"
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

.method public abstract execute(Ljava/lang/Class;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;ZJLjava/lang/Object;)Ljava/lang/Object;
    .param p2    # Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
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
            "Lorg/apache/ignite/igfs/mapreduce/IgfsTask",
            "<TT;TR;>;>;",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;ZJTT;)TR;"
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

.method public abstract execute(Lorg/apache/ignite/igfs/mapreduce/IgfsTask;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;Ljava/lang/Object;)Ljava/lang/Object;
    .param p2    # Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
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
            "Lorg/apache/ignite/igfs/mapreduce/IgfsTask",
            "<TT;TR;>;",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;TT;)TR;"
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

.method public abstract execute(Lorg/apache/ignite/igfs/mapreduce/IgfsTask;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;ZJLjava/lang/Object;)Ljava/lang/Object;
    .param p2    # Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
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
            "Lorg/apache/ignite/igfs/mapreduce/IgfsTask",
            "<TT;TR;>;",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;ZJTT;)TR;"
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

.method public abstract exists(Lorg/apache/ignite/igfs/IgfsPath;)Z
.end method

.method public abstract format()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract info(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract listFiles(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract listPaths(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract metrics()Lorg/apache/ignite/igfs/IgfsMetrics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract mkdirs(Lorg/apache/ignite/igfs/IgfsPath;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract mkdirs(Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)V
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract open(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract open(Lorg/apache/ignite/igfs/IgfsPath;I)Lorg/apache/ignite/igfs/IgfsInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract open(Lorg/apache/ignite/igfs/IgfsPath;II)Lorg/apache/ignite/igfs/IgfsInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract rename(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract resetMetrics()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract setTimes(Lorg/apache/ignite/igfs/IgfsPath;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract size(Lorg/apache/ignite/igfs/IgfsPath;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract summary(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsPathSummary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract update(Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)Lorg/apache/ignite/igfs/IgfsFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/ignite/igfs/IgfsFile;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract usedSpaceSize()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract withAsync()Lorg/apache/ignite/IgniteFileSystem;
.end method
