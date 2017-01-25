.class public Lorg/apache/ignite/internal/util/GridUnsafe;
.super Ljava/lang/Object;
.source "GridUnsafe.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static unsafe()Lsun/misc/Unsafe;
    .locals 5

    .prologue
    .line 41
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 45
    .local v1, "ignored":Ljava/lang/SecurityException;
    :goto_0
    return-object v2

    .line 43
    .end local v1    # "ignored":Ljava/lang/SecurityException;
    :catch_0
    move-exception v1

    .line 45
    .restart local v1    # "ignored":Ljava/lang/SecurityException;
    :try_start_1
    new-instance v2, Lorg/apache/ignite/internal/util/GridUnsafe$1;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/GridUnsafe$1;-><init>()V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    .line 57
    .local v0, "e":Ljava/security/PrivilegedActionException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not initialize intrinsics."

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
