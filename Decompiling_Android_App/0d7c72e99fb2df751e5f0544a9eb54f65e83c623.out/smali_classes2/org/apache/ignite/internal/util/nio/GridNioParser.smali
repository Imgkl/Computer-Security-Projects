.class public interface abstract Lorg/apache/ignite/internal/util/nio/GridNioParser;
.super Ljava/lang/Object;
.source "GridNioParser.java"


# virtual methods
.method public abstract decode(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract encode(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
