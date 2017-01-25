.class public Lorg/apache/ignite/internal/util/gridify/GridifyJobAdapter;
.super Lorg/apache/ignite/compute/ComputeJobAdapter;
.source "GridifyJobAdapter.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lorg/apache/ignite/compute/gridify/GridifyArgument;)V
    .locals 0
    .param p1, "arg"    # Lorg/apache/ignite/compute/gridify/GridifyArgument;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/ignite/compute/ComputeJobAdapter;-><init>(Ljava/lang/Object;)V

    .line 53
    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 67
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/util/gridify/GridifyJobAdapter;->argument(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/compute/gridify/GridifyArgument;

    .line 71
    .local v0, "arg":Lorg/apache/ignite/compute/gridify/GridifyArgument;
    :try_start_0
    invoke-interface {v0}, Lorg/apache/ignite/compute/gridify/GridifyArgument;->getMethodClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/ignite/compute/gridify/GridifyArgument;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/ignite/compute/gridify/GridifyArgument;->getMethodParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 75
    .local v2, "mtd":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isAccessible()Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v4

    if-nez v4, :cond_0

    .line 77
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    .line 84
    :cond_0
    const/4 v3, 0x0

    .line 87
    .local v3, "obj":Ljava/lang/Object;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 89
    invoke-interface {v0}, Lorg/apache/ignite/compute/gridify/GridifyArgument;->getTarget()Ljava/lang/Object;

    move-result-object v3

    .line 91
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_1
    invoke-interface {v0}, Lorg/apache/ignite/compute/gridify/GridifyArgument;->getMethodParameters()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v4, Lorg/apache/ignite/IgniteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got security exception when attempting to soften access control for @Gridify method: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3

    .line 93
    .end local v1    # "e":Ljava/lang/SecurityException;
    .end local v2    # "mtd":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Lorg/apache/ignite/IgniteException;

    if-eqz v4, :cond_2

    .line 95
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/IgniteException;

    throw v4

    .line 97
    :cond_2
    new-instance v4, Lorg/apache/ignite/IgniteException;

    const-string v5, "Failed to invoke a method due to user exception."

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 99
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Lorg/apache/ignite/IgniteException;

    const-string v5, "Failed to access method for execution."

    invoke-direct {v4, v5, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 102
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Lorg/apache/ignite/IgniteException;

    const-string v5, "Failed to find method for execution."

    invoke-direct {v4, v5, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
