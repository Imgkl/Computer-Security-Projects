.class public abstract Lorg/apache/ignite/igfs/mapreduce/IgfsInputStreamJobAdapter;
.super Lorg/apache/ignite/igfs/mapreduce/IgfsJobAdapter;
.source "IgfsInputStreamJobAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/ignite/igfs/mapreduce/IgfsJobAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lorg/apache/ignite/IgniteFileSystem;Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;Lorg/apache/ignite/igfs/IgfsInputStream;)Ljava/lang/Object;
    .locals 2
    .param p1, "igfs"    # Lorg/apache/ignite/IgniteFileSystem;
    .param p2, "range"    # Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;
    .param p3, "in"    # Lorg/apache/ignite/igfs/IgfsInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p2}, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;->start()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lorg/apache/ignite/igfs/IgfsInputStream;->seek(J)V

    .line 39
    new-instance v0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;

    invoke-direct {v0, p3, p2}, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;-><init>(Lorg/apache/ignite/igfs/IgfsInputStream;Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/igfs/mapreduce/IgfsInputStreamJobAdapter;->execute(Lorg/apache/ignite/IgniteFileSystem;Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract execute(Lorg/apache/ignite/IgniteFileSystem;Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
