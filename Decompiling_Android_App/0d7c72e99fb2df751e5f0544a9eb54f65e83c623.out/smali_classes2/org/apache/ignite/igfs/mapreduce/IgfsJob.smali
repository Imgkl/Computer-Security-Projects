.class public interface abstract Lorg/apache/ignite/igfs/mapreduce/IgfsJob;
.super Ljava/lang/Object;
.source "IgfsJob.java"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract execute(Lorg/apache/ignite/IgniteFileSystem;Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;Lorg/apache/ignite/igfs/IgfsInputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
