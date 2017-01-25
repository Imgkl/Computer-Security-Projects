.class public interface abstract Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;
.super Ljava/lang/Object;
.source "GridClientMarshaller.java"


# virtual methods
.method public abstract marshal(Ljava/lang/Object;I)Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract unmarshal([B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
