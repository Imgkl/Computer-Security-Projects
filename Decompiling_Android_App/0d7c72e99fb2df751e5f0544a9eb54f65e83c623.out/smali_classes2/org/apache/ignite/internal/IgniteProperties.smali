.class public Lorg/apache/ignite/internal/IgniteProperties;
.super Ljava/lang/Object;
.source "IgniteProperties.java"


# static fields
.field private static final FILE_PATH:Ljava/lang/String; = "ignite.properties"

.field private static final PROPS:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/IgniteProperties;->PROPS:Ljava/util/Properties;

    .line 39
    const-string v0, "ignite.properties"

    sget-object v1, Lorg/apache/ignite/internal/IgniteProperties;->PROPS:Ljava/util/Properties;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/IgniteProperties;->readProperties(Ljava/lang/String;Ljava/util/Properties;Z)V

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, Lorg/apache/ignite/internal/IgniteProperties;->PROPS:Ljava/util/Properties;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readProperties(Ljava/lang/String;Ljava/util/Properties;Z)V
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "throwExc"    # Z

    .prologue
    .line 48
    :try_start_0
    const-class v3, Lorg/apache/ignite/internal/IgniteVersionUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .local v1, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 49
    if-nez v1, :cond_4

    .line 50
    if-eqz p2, :cond_1

    .line 51
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find properties file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    :catch_0
    move-exception v3

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :catchall_0
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_0
    if-eqz v1, :cond_0

    if-eqz v4, :cond_6

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_1
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 58
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read properties file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 57
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 61
    :cond_2
    :goto_2
    return-void

    .line 57
    :catch_2
    move-exception v2

    .local v2, "x2":Ljava/lang/Throwable;
    :try_start_6
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 56
    :cond_4
    :try_start_7
    invoke-virtual {p1, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 57
    if-eqz v1, :cond_2

    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    :catch_3
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    :try_start_9
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catch_4
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    :catchall_1
    move-exception v3

    goto :goto_0
.end method
