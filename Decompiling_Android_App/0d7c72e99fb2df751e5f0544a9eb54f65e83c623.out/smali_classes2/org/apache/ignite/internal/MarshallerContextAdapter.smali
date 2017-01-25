.class public abstract Lorg/apache/ignite/internal/MarshallerContextAdapter;
.super Ljava/lang/Object;
.source "MarshallerContextAdapter.java"

# interfaces
.implements Lorg/apache/ignite/marshaller/MarshallerContext;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CLS_NAMES_FILE:Ljava/lang/String; = "META-INF/classnames.properties"

.field private static final JDK_CLS_NAMES_FILE:Ljava/lang/String; = "META-INF/classnames-jdk.properties"


# instance fields
.field private final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/MarshallerContextAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/MarshallerContextAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v3, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v3}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v3, p0, Lorg/apache/ignite/internal/MarshallerContextAdapter;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 48
    :try_start_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 50
    .local v1, "ldr":Ljava/lang/ClassLoader;
    const-string v3, "META-INF/classnames.properties"

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    .line 52
    .local v2, "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;

    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/MarshallerContextAdapter;->processResource(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    .end local v1    # "ldr":Ljava/lang/ClassLoader;
    .end local v2    # "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to initialize marshaller context."

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 55
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "ldr":Ljava/lang/ClassLoader;
    .restart local v2    # "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :cond_0
    :try_start_1
    const-string v3, "META-INF/classnames-jdk.properties"

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/MarshallerContextAdapter;->processResource(Ljava/net/URL;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    return-void
.end method

.method private processResource(Ljava/net/URL;)V
    .locals 9
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .local v1, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 68
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 72
    .local v3, "rdr":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 73
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "#"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 76
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "clsName":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/ignite/internal/MarshallerContextAdapter;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 67
    .end local v0    # "clsName":Ljava/lang/String;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "rdr":Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    :try_start_1
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :catchall_0
    move-exception v6

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    :goto_1
    if-eqz v1, :cond_1

    if-eqz v6, :cond_5

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_2
    throw v5

    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "rdr":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v6, :cond_4

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 81
    :cond_3
    :goto_3
    return-void

    .line 80
    :catch_1
    move-exception v4

    .local v4, "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_3

    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "rdr":Ljava/io/BufferedReader;
    :catch_2
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method protected abstract className(I)Ljava/lang/String;
.end method

.method public getClass(ILjava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 4
    .param p1, "id"    # I
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v2, p0, Lorg/apache/ignite/internal/MarshallerContextAdapter;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    .local v0, "clsName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 102
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/MarshallerContextAdapter;->className(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    sget-boolean v2, Lorg/apache/ignite/internal/MarshallerContextAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 106
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/MarshallerContextAdapter;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 108
    .local v1, "old":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 109
    move-object v0, v1

    .line 112
    .end local v1    # "old":Ljava/lang/String;
    :cond_1
    invoke-static {v0, p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    return-object v2
.end method

.method public registerClass(ILjava/lang/Class;)Z
    .locals 4
    .param p1, "id"    # I
    .param p2, "cls"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x1

    .line 87
    .local v0, "registered":Z
    iget-object v1, p0, Lorg/apache/ignite/internal/MarshallerContextAdapter;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/ignite/internal/MarshallerContextAdapter;->registerClassName(ILjava/lang/String;)Z

    move-result v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lorg/apache/ignite/internal/MarshallerContextAdapter;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    return v0
.end method

.method protected abstract registerClassName(ILjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
