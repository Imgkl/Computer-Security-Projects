.class public Lorg/apache/ignite/internal/processors/igfs/IgfsUtils;
.super Ljava/lang/Object;
.source "IgfsUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public static newIgfsException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)Lorg/apache/ignite/igfs/IgfsException;
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/igfs/IgfsException;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/apache/ignite/igfs/IgfsException;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/ignite/igfs/IgfsException;>;"
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 73
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/ignite/igfs/IgfsException;>;"
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/igfs/IgfsException;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 75
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/ignite/igfs/IgfsException;>;"
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Lorg/apache/ignite/IgniteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create IGFS exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static toIgfsException(Ljava/lang/Exception;)Lorg/apache/ignite/igfs/IgfsException;
    .locals 4
    .param p0, "err"    # Ljava/lang/Exception;

    .prologue
    .line 38
    instance-of v2, p0, Lorg/apache/ignite/igfs/IgfsException;

    if-eqz v2, :cond_0

    move-object v2, p0

    check-cast v2, Lorg/apache/ignite/igfs/IgfsException;

    move-object v0, v2

    .line 40
    .local v0, "err0":Lorg/apache/ignite/igfs/IgfsException;
    :goto_0
    const-class v2, Lorg/apache/ignite/igfs/IgfsException;

    invoke-static {p0, v2}, Lorg/apache/ignite/internal/util/typedef/X;->cause(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/igfs/IgfsException;

    .line 42
    .local v1, "igfsErr":Lorg/apache/ignite/igfs/IgfsException;
    :goto_1
    if-eqz v1, :cond_1

    if-eq v1, v0, :cond_1

    .line 43
    move-object v0, v1

    .line 45
    const-class v2, Lorg/apache/ignite/igfs/IgfsException;

    invoke-static {p0, v2}, Lorg/apache/ignite/internal/util/typedef/X;->cause(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v1

    .end local v1    # "igfsErr":Lorg/apache/ignite/igfs/IgfsException;
    check-cast v1, Lorg/apache/ignite/igfs/IgfsException;

    .restart local v1    # "igfsErr":Lorg/apache/ignite/igfs/IgfsException;
    goto :goto_1

    .line 38
    .end local v0    # "err0":Lorg/apache/ignite/igfs/IgfsException;
    .end local v1    # "igfsErr":Lorg/apache/ignite/igfs/IgfsException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    .restart local v0    # "err0":Lorg/apache/ignite/igfs/IgfsException;
    .restart local v1    # "igfsErr":Lorg/apache/ignite/igfs/IgfsException;
    :cond_1
    if-eq v0, p0, :cond_2

    .line 50
    if-eqz v0, :cond_3

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/igfs/IgfsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsUtils;->newIgfsException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)Lorg/apache/ignite/igfs/IgfsException;

    move-result-object v0

    .line 58
    :cond_2
    :goto_2
    return-object v0

    .line 55
    :cond_3
    new-instance v0, Lorg/apache/ignite/igfs/IgfsException;

    .end local v0    # "err0":Lorg/apache/ignite/igfs/IgfsException;
    const-string v2, "Generic IGFS error occurred."

    invoke-direct {v0, v2, p0}, Lorg/apache/ignite/igfs/IgfsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v0    # "err0":Lorg/apache/ignite/igfs/IgfsException;
    goto :goto_2
.end method
