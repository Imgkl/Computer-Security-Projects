.class public Lorg/apache/ignite/internal/client/marshaller/jdk/GridClientJdkMarshaller;
.super Ljava/lang/Object;
.source "GridClientJdkMarshaller.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;


# static fields
.field public static final ID:B = 0x2t


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshal(Ljava/lang/Object;I)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;-><init>()V

    .line 37
    .local v0, "bOut":Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 39
    .local v2, "out":Ljava/io/ObjectOutput;
    invoke-interface {v2, p1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 41
    invoke-interface {v2}, Ljava/io/ObjectOutput;->flush()V

    .line 43
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, p2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 45
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->internalArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->size()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 49
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 51
    return-object v1
.end method

.method public unmarshal([B)Ljava/lang/Object;
    .locals 6
    .param p1, "bytes"    # [B
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

    .prologue
    .line 57
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 59
    .local v2, "tmp":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 62
    .local v1, "in":Ljava/io/ObjectInput;
    :try_start_0
    invoke-interface {v1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unmarshal target object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
