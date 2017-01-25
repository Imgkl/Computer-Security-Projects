.class public Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;
.super Lorg/apache/ignite/marshaller/AbstractMarshaller;
.source "OptimizedMarshaller.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final clsMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class;",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final dfltClsLdr:Ljava/lang/ClassLoader;

.field private mapper:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;

.field private requireSer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Lorg/apache/ignite/marshaller/AbstractMarshaller;-><init>()V

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->dfltClsLdr:Ljava/lang/ClassLoader;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->requireSer:Z

    .line 89
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->clsMap:Ljava/util/concurrent/ConcurrentMap;

    .line 97
    invoke-static {}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->available()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lorg/apache/ignite/IgniteException;

    const-string v1, "Using OptimizedMarshaller on unsupported JVM version (some of JVM-private APIs required for the marshaller to work are missing)."

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "requireSer"    # Z

    .prologue
    .line 108
    invoke-direct {p0}, Lorg/apache/ignite/marshaller/AbstractMarshaller;-><init>()V

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->dfltClsLdr:Ljava/lang/ClassLoader;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->requireSer:Z

    .line 89
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->clsMap:Ljava/util/concurrent/ConcurrentMap;

    .line 109
    iput-boolean p1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->requireSer:Z

    .line 110
    return-void
.end method

.method public static available()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 265
    :try_start_0
    invoke-static {}, Lorg/apache/ignite/internal/util/GridUnsafe;->unsafe()Lsun/misc/Unsafe;

    move-result-object v1

    .line 267
    .local v1, "unsafe":Lsun/misc/Unsafe;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 269
    .local v2, "unsafeCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lsun/misc/Unsafe;>;"
    const-string v5, "allocateInstance"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 270
    const-string v5, "copyMemory"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/Object;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Ljava/lang/Object;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    .line 278
    .end local v2    # "unsafeCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lsun/misc/Unsafe;>;"
    :goto_0
    return v3

    .line 274
    :catch_0
    move-exception v0

    .local v0, "ignored":Ljava/lang/Exception;
    move v3, v4

    .line 275
    goto :goto_0

    .line 277
    .end local v0    # "ignored":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .local v0, "ignored":Ljava/lang/NoClassDefFoundError;
    move v3, v4

    .line 278
    goto :goto_0
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
    .line 151
    sget-boolean v2, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 153
    :cond_0
    const/4 v1, 0x0

    .line 156
    .local v1, "objOut":Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;
    :try_start_0
    invoke-static {}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->out()Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;

    move-result-object v1

    .line 158
    iget-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->clsMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v3, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->ctx:Lorg/apache/ignite/marshaller/MarshallerContext;

    iget-object v4, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->mapper:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;

    iget-boolean v5, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->requireSer:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->context(Ljava/util/concurrent/ConcurrentMap;Lorg/apache/ignite/marshaller/MarshallerContext;Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;Z)V

    .line 160
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out()Lorg/apache/ignite/internal/util/io/GridDataOutput;

    move-result-object v2

    invoke-interface {v2, p2}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->outputStream(Ljava/io/OutputStream;)V

    .line 162
    invoke-virtual {v1, p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-static {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->closeOut(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;)V

    .line 170
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to serialize object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->closeOut(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;)V

    throw v2
.end method

.method public marshal(Ljava/lang/Object;)[B
    .locals 6
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
    .line 174
    const/4 v1, 0x0

    .line 177
    .local v1, "objOut":Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;
    :try_start_0
    invoke-static {}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->out()Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;

    move-result-object v1

    .line 179
    iget-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->clsMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v3, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->ctx:Lorg/apache/ignite/marshaller/MarshallerContext;

    iget-object v4, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->mapper:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;

    iget-boolean v5, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->requireSer:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->context(Ljava/util/concurrent/ConcurrentMap;Lorg/apache/ignite/marshaller/MarshallerContext;Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;Z)V

    .line 181
    invoke-virtual {v1, p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out()Lorg/apache/ignite/internal/util/io/GridDataOutput;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->array()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 189
    invoke-static {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->closeOut(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;)V

    return-object v2

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to serialize object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->closeOut(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;)V

    throw v2
.end method

.method public onUndeploy(Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "ldr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 288
    iget-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->clsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 289
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->clsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 293
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->clearClassCache(Ljava/lang/ClassLoader;)V

    .line 294
    return-void
.end method

.method public setIdMapper(Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;)V
    .locals 0
    .param p1, "mapper"    # Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->mapper:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;

    .line 128
    return-void
.end method

.method public setPoolSize(I)V
    .locals 0
    .param p1, "poolSize"    # I

    .prologue
    .line 146
    invoke-static {p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->poolSize(I)V

    .line 147
    return-void
.end method

.method public setRequireSerializable(Z)V
    .locals 0
    .param p1, "requireSer"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->requireSer:Z

    .line 119
    return-void
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
    .line 196
    sget-boolean v2, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 198
    :cond_0
    const/4 v1, 0x0

    .line 201
    .local v1, "objIn":Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;
    :try_start_0
    invoke-static {}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->in()Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;

    move-result-object v1

    .line 203
    iget-object v3, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->clsMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v4, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->ctx:Lorg/apache/ignite/marshaller/MarshallerContext;

    iget-object v5, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->mapper:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;

    if-eqz p2, :cond_1

    move-object v2, p2

    :goto_0
    invoke-virtual {v1, v3, v4, v5, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->context(Ljava/util/concurrent/ConcurrentMap;Lorg/apache/ignite/marshaller/MarshallerContext;Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;Ljava/lang/ClassLoader;)V

    .line 205
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in()Lorg/apache/ignite/internal/util/io/GridDataInput;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/apache/ignite/internal/util/io/GridDataInput;->inputStream(Ljava/io/InputStream;)V

    .line 207
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 218
    invoke-static {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->closeIn(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;)V

    return-object v2

    .line 203
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->dfltClsLdr:Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to deserialize object with given class loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->closeIn(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;)V

    throw v2

    .line 212
    :catch_1
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :try_start_3
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find class with given class loader for unmarshalling (make sure same versions of all classes are available on all nodes or enable peer-class-loading): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 6
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
    .line 225
    sget-boolean v2, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 227
    :cond_0
    const/4 v1, 0x0

    .line 230
    .local v1, "objIn":Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;
    :try_start_0
    invoke-static {}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->in()Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;

    move-result-object v1

    .line 232
    iget-object v3, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->clsMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v4, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->ctx:Lorg/apache/ignite/marshaller/MarshallerContext;

    iget-object v5, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->mapper:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;

    if-eqz p2, :cond_1

    move-object v2, p2

    :goto_0
    invoke-virtual {v1, v3, v4, v5, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->context(Ljava/util/concurrent/ConcurrentMap;Lorg/apache/ignite/marshaller/MarshallerContext;Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;Ljava/lang/ClassLoader;)V

    .line 234
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in()Lorg/apache/ignite/internal/util/io/GridDataInput;

    move-result-object v2

    array-length v3, p1

    invoke-interface {v2, p1, v3}, Lorg/apache/ignite/internal/util/io/GridDataInput;->bytes([BI)V

    .line 236
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 247
    invoke-static {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->closeIn(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;)V

    return-object v2

    .line 232
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->dfltClsLdr:Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to deserialize object with given class loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->closeIn(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;)V

    throw v2

    .line 241
    :catch_1
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :try_start_3
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find class with given class loader for unmarshalling (make sure same version of all classes are available on all nodes or enable peer-class-loading): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
