.class public interface abstract Lorg/apache/ignite/internal/util/io/GridDataOutput;
.super Ljava/lang/Object;
.source "GridDataOutput.java"

# interfaces
.implements Ljava/io/DataOutput;


# virtual methods
.method public abstract array()[B
.end method

.method public abstract internalArray()[B
.end method

.method public abstract offset()I
.end method

.method public abstract offset(I)V
.end method

.method public abstract outputStream(Ljava/io/OutputStream;)V
.end method

.method public abstract reset()V
.end method

.method public abstract writeBooleanArray([Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeByteArray([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeCharArray([C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeDoubleArray([D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeFloatArray([F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeIntArray([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeLongArray([J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeShortArray([S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
