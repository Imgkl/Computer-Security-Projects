.class public Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller;
.super Ljava/lang/Object;
.source "GridClientOptimizedMarshaller.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller$1;,
        Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller$ClientMarshallerContext;
    }
.end annotation


# static fields
.field public static final ID:B = 0x1t


# instance fields
.field private final opMarsh:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;

    invoke-direct {v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller;->opMarsh:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;

    .line 46
    iget-object v0, p0, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller;->opMarsh:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;

    new-instance v1, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller$ClientMarshallerContext;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller$ClientMarshallerContext;-><init>(Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller$1;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->setContext(Lorg/apache/ignite/marshaller/MarshallerContext;)V

    .line 47
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 3
    .param p1, "requireSer"    # Z
    .param p2, "poolSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;

    invoke-direct {v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller;->opMarsh:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;

    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller;->opMarsh:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;

    new-instance v1, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller$ClientMarshallerContext;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller$ClientMarshallerContext;-><init>(Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller$1;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->setContext(Lorg/apache/ignite/marshaller/MarshallerContext;)V

    .line 62
    iget-object v0, p0, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller;->opMarsh:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->setRequireSerializable(Z)V

    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller;->opMarsh:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->setPoolSize(I)V

    .line 64
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
    .line 69
    :try_start_0
    instance-of v3, p1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    if-nez v3, :cond_0

    .line 70
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message serialization of given type is not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 73
    .end local v2    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller;->opMarsh:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;

    invoke-virtual {v3, p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v1

    .line 75
    .local v1, "bytes":[B
    array-length v3, v1

    add-int/2addr v3, p2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 77
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 81
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    return-object v0
.end method

.method public unmarshal([B)Ljava/lang/Object;
    .locals 3
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
    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller;->opMarsh:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
