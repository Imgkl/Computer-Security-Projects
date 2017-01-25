.class public abstract Lorg/apache/ignite/marshaller/AbstractMarshaller;
.super Ljava/lang/Object;
.source "AbstractMarshaller.java"

# interfaces
.implements Lorg/apache/ignite/marshaller/Marshaller;


# static fields
.field public static final DFLT_BUFFER_SIZE:I = 0x200


# instance fields
.field protected ctx:Lorg/apache/ignite/marshaller/MarshallerContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshal(Ljava/lang/Object;)[B
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 46
    const/4 v0, 0x0

    .line 49
    .local v0, "out":Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;
    :try_start_0
    new-instance v1, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v0    # "out":Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;
    .local v1, "out":Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;
    :try_start_1
    invoke-virtual {p0, p1, v1}, Lorg/apache/ignite/marshaller/AbstractMarshaller;->marshal(Ljava/lang/Object;Ljava/io/OutputStream;)V

    .line 53
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 56
    invoke-static {v1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    return-object v2

    .end local v1    # "out":Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;
    .restart local v0    # "out":Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    throw v2

    .end local v0    # "out":Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;
    .restart local v1    # "out":Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "out":Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;
    .restart local v0    # "out":Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;
    goto :goto_0
.end method

.method public setContext(Lorg/apache/ignite/marshaller/MarshallerContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/marshaller/MarshallerContext;

    .prologue
    .line 41
    iput-object p1, p0, Lorg/apache/ignite/marshaller/AbstractMarshaller;->ctx:Lorg/apache/ignite/marshaller/MarshallerContext;

    .line 42
    return-void
.end method

.method public unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 5
    .param p1, "arr"    # [B
    .param p2, "clsLdr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 62
    const/4 v0, 0x0

    .line 65
    .local v0, "in":Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;
    :try_start_0
    new-instance v1, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-direct {v1, p1, v2, v3}, Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;-><init>([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .end local v0    # "in":Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;
    .local v1, "in":Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;
    :try_start_1
    invoke-virtual {p0, v1, p2}, Lorg/apache/ignite/marshaller/AbstractMarshaller;->unmarshal(Ljava/io/InputStream;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 70
    invoke-static {v1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    return-object v2

    .end local v1    # "in":Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;
    .restart local v0    # "in":Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    throw v2

    .end local v0    # "in":Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;
    .restart local v1    # "in":Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "in":Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;
    .restart local v0    # "in":Lorg/apache/ignite/internal/util/io/GridByteArrayInputStream;
    goto :goto_0
.end method
