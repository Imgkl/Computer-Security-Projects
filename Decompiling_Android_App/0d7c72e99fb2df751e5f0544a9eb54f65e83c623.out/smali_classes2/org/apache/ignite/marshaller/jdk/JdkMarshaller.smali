.class public Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;
.super Lorg/apache/ignite/marshaller/AbstractMarshaller;
.source "JdkMarshaller.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/apache/ignite/marshaller/AbstractMarshaller;-><init>()V

    return-void
.end method


# virtual methods
.method public marshal(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 65
    sget-boolean v3, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 67
    :cond_0
    const/4 v1, 0x0

    .line 70
    .local v1, "objOut":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v2, Lorg/apache/ignite/marshaller/jdk/JdkMarshallerObjectOutputStream;

    new-instance v3, Lorg/apache/ignite/marshaller/jdk/JdkMarshallerOutputStreamWrapper;

    invoke-direct {v3, p2}, Lorg/apache/ignite/marshaller/jdk/JdkMarshallerOutputStreamWrapper;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Lorg/apache/ignite/marshaller/jdk/JdkMarshallerObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v1    # "objOut":Ljava/io/ObjectOutputStream;
    .local v2, "objOut":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 83
    return-void

    .line 77
    .end local v2    # "objOut":Ljava/io/ObjectOutputStream;
    .restart local v1    # "objOut":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    :try_start_2
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to serialize object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_1
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v3

    .end local v1    # "objOut":Ljava/io/ObjectOutputStream;
    .restart local v2    # "objOut":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "objOut":Ljava/io/ObjectOutputStream;
    .restart local v1    # "objOut":Ljava/io/ObjectOutputStream;
    goto :goto_1

    .line 77
    .end local v1    # "objOut":Ljava/io/ObjectOutputStream;
    .restart local v2    # "objOut":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "objOut":Ljava/io/ObjectOutputStream;
    .restart local v1    # "objOut":Ljava/io/ObjectOutputStream;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-class v0, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unmarshal(Ljava/io/InputStream;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "clsLdr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
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
    .line 88
    sget-boolean v3, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 90
    :cond_0
    if-nez p2, :cond_1

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 93
    :cond_1
    const/4 v1, 0x0

    .line 96
    .local v1, "objIn":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Lorg/apache/ignite/marshaller/jdk/JdkMarshallerObjectInputStream;

    new-instance v3, Lorg/apache/ignite/marshaller/jdk/JdkMarshallerInputStreamWrapper;

    invoke-direct {v3, p1}, Lorg/apache/ignite/marshaller/jdk/JdkMarshallerInputStreamWrapper;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3, p2}, Lorg/apache/ignite/marshaller/jdk/JdkMarshallerObjectInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v1    # "objIn":Ljava/io/ObjectInputStream;
    .local v2, "objIn":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 109
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    return-object v3

    .line 100
    .end local v2    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v1    # "objIn":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    :try_start_2
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to deserialize object with given class loader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_1
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 103
    :catch_1
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_2
    :try_start_3
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find class with given class loader for unmarshalling (make sure same versions of all classes are available on all nodes or enable peer-class-loading): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v1    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v2    # "objIn":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v1    # "objIn":Ljava/io/ObjectInputStream;
    goto :goto_1

    .line 103
    .end local v1    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v2    # "objIn":Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v1    # "objIn":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 100
    .end local v1    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v2    # "objIn":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v1    # "objIn":Ljava/io/ObjectInputStream;
    goto :goto_0
.end method
