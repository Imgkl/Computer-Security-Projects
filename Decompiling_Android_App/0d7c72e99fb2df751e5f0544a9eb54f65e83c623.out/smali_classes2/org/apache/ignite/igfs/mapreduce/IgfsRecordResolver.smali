.class public interface abstract Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
.super Ljava/lang/Object;
.source "IgfsRecordResolver.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract resolveRecords(Lorg/apache/ignite/IgniteFileSystem;Lorg/apache/ignite/igfs/IgfsInputStream;Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;)Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
