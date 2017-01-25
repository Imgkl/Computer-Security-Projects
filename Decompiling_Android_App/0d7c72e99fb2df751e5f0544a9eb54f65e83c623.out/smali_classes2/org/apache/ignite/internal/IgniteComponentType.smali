.class public final enum Lorg/apache/ignite/internal/IgniteComponentType;
.super Ljava/lang/Enum;
.source "IgniteComponentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/IgniteComponentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/IgniteComponentType;

.field public static final enum HADOOP:Lorg/apache/ignite/internal/IgniteComponentType;

.field public static final enum IGFS:Lorg/apache/ignite/internal/IgniteComponentType;

.field public static final enum IGFS_HELPER:Lorg/apache/ignite/internal/IgniteComponentType;

.field public static final enum INDEXING:Lorg/apache/ignite/internal/IgniteComponentType;

.field public static final enum JTA:Lorg/apache/ignite/internal/IgniteComponentType;

.field public static final enum SCHEDULE:Lorg/apache/ignite/internal/IgniteComponentType;

.field public static final enum SPRING:Lorg/apache/ignite/internal/IgniteComponentType;

.field public static final enum SSH:Lorg/apache/ignite/internal/IgniteComponentType;


# instance fields
.field private final clsName:Ljava/lang/String;

.field private final module:Ljava/lang/String;

.field private final noOpClsName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 30
    new-instance v0, Lorg/apache/ignite/internal/IgniteComponentType;

    const-string v1, "IGFS"

    const-string v3, "org.apache.ignite.internal.processors.igfs.IgfsNoopProcessor"

    const-string v4, "org.apache.ignite.internal.processors.igfs.IgfsProcessor"

    const-string v5, "ignite-hadoop"

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/IgniteComponentType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/ignite/internal/IgniteComponentType;->IGFS:Lorg/apache/ignite/internal/IgniteComponentType;

    .line 37
    new-instance v3, Lorg/apache/ignite/internal/IgniteComponentType;

    const-string v4, "HADOOP"

    const-string v6, "org.apache.ignite.internal.processors.hadoop.HadoopNoopProcessor"

    const-string v7, "org.apache.ignite.internal.processors.hadoop.HadoopProcessor"

    const-string v8, "ignite-hadoop"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lorg/apache/ignite/internal/IgniteComponentType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/apache/ignite/internal/IgniteComponentType;->HADOOP:Lorg/apache/ignite/internal/IgniteComponentType;

    .line 44
    new-instance v3, Lorg/apache/ignite/internal/IgniteComponentType;

    const-string v4, "IGFS_HELPER"

    const-string v6, "org.apache.ignite.internal.processors.igfs.IgfsNoopHelper"

    const-string v7, "org.apache.ignite.internal.processors.igfs.IgfsHelperImpl"

    const-string v8, "ignite-hadoop"

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lorg/apache/ignite/internal/IgniteComponentType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/apache/ignite/internal/IgniteComponentType;->IGFS_HELPER:Lorg/apache/ignite/internal/IgniteComponentType;

    .line 51
    new-instance v3, Lorg/apache/ignite/internal/IgniteComponentType;

    const-string v4, "SPRING"

    const-string v7, "org.apache.ignite.internal.util.spring.IgniteSpringHelperImpl"

    const-string v8, "ignite-spring"

    move v5, v12

    move-object v6, v9

    invoke-direct/range {v3 .. v8}, Lorg/apache/ignite/internal/IgniteComponentType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/apache/ignite/internal/IgniteComponentType;->SPRING:Lorg/apache/ignite/internal/IgniteComponentType;

    .line 58
    new-instance v3, Lorg/apache/ignite/internal/IgniteComponentType;

    const-string v4, "INDEXING"

    const/4 v5, 0x4

    const-string v7, "org.apache.ignite.internal.processors.query.h2.IgniteH2Indexing"

    const-string v8, "ignite-indexing"

    move-object v6, v9

    invoke-direct/range {v3 .. v8}, Lorg/apache/ignite/internal/IgniteComponentType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/apache/ignite/internal/IgniteComponentType;->INDEXING:Lorg/apache/ignite/internal/IgniteComponentType;

    .line 65
    new-instance v3, Lorg/apache/ignite/internal/IgniteComponentType;

    const-string v4, "SSH"

    const/4 v5, 0x5

    const-string v7, "org.apache.ignite.internal.util.nodestart.IgniteSshHelperImpl"

    const-string v8, "ignite-ssh"

    move-object v6, v9

    invoke-direct/range {v3 .. v8}, Lorg/apache/ignite/internal/IgniteComponentType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/apache/ignite/internal/IgniteComponentType;->SSH:Lorg/apache/ignite/internal/IgniteComponentType;

    .line 72
    new-instance v3, Lorg/apache/ignite/internal/IgniteComponentType;

    const-string v4, "JTA"

    const/4 v5, 0x6

    const-string v6, "org.apache.ignite.internal.processors.cache.jta.CacheNoopJtaManager"

    const-string v7, "org.apache.ignite.internal.processors.cache.jta.CacheJtaManager"

    const-string v8, "ignite-jta"

    invoke-direct/range {v3 .. v8}, Lorg/apache/ignite/internal/IgniteComponentType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/apache/ignite/internal/IgniteComponentType;->JTA:Lorg/apache/ignite/internal/IgniteComponentType;

    .line 79
    new-instance v3, Lorg/apache/ignite/internal/IgniteComponentType;

    const-string v4, "SCHEDULE"

    const/4 v5, 0x7

    const-string v6, "org.apache.ignite.internal.processors.schedule.IgniteNoopScheduleProcessor"

    const-string v7, "org.apache.ignite.internal.processors.schedule.IgniteScheduleProcessor"

    const-string v8, "ignite-schedule"

    invoke-direct/range {v3 .. v8}, Lorg/apache/ignite/internal/IgniteComponentType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/apache/ignite/internal/IgniteComponentType;->SCHEDULE:Lorg/apache/ignite/internal/IgniteComponentType;

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/apache/ignite/internal/IgniteComponentType;

    sget-object v1, Lorg/apache/ignite/internal/IgniteComponentType;->IGFS:Lorg/apache/ignite/internal/IgniteComponentType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/IgniteComponentType;->HADOOP:Lorg/apache/ignite/internal/IgniteComponentType;

    aput-object v1, v0, v10

    sget-object v1, Lorg/apache/ignite/internal/IgniteComponentType;->IGFS_HELPER:Lorg/apache/ignite/internal/IgniteComponentType;

    aput-object v1, v0, v11

    sget-object v1, Lorg/apache/ignite/internal/IgniteComponentType;->SPRING:Lorg/apache/ignite/internal/IgniteComponentType;

    aput-object v1, v0, v12

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/ignite/internal/IgniteComponentType;->INDEXING:Lorg/apache/ignite/internal/IgniteComponentType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/ignite/internal/IgniteComponentType;->SSH:Lorg/apache/ignite/internal/IgniteComponentType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/ignite/internal/IgniteComponentType;->JTA:Lorg/apache/ignite/internal/IgniteComponentType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/ignite/internal/IgniteComponentType;->SCHEDULE:Lorg/apache/ignite/internal/IgniteComponentType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/IgniteComponentType;->$VALUES:[Lorg/apache/ignite/internal/IgniteComponentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "noOpClsName"    # Ljava/lang/String;
    .param p4, "clsName"    # Ljava/lang/String;
    .param p5, "module"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput-object p3, p0, Lorg/apache/ignite/internal/IgniteComponentType;->noOpClsName:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lorg/apache/ignite/internal/IgniteComponentType;->clsName:Ljava/lang/String;

    .line 104
    iput-object p5, p0, Lorg/apache/ignite/internal/IgniteComponentType;->module:Ljava/lang/String;

    .line 105
    return-void
.end method

.method private componentException(Ljava/lang/Exception;)Lorg/apache/ignite/IgniteCheckedException;
    .locals 3
    .param p1, "err"    # Ljava/lang/Exception;

    .prologue
    .line 280
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create Ignite component (consider adding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteComponentType;->module:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " module to classpath) [component="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cls="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteComponentType;->clsName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private create0(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "clsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 257
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 259
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 260
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 262
    .local v1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 267
    :goto_0
    return-object v3

    .line 265
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/apache/ignite/internal/GridKernalContext;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 267
    .restart local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 270
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v2

    .line 271
    .local v2, "e":Ljava/lang/Exception;
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/IgniteComponentType;->componentException(Ljava/lang/Exception;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v3

    throw v3
.end method

.method private createOptional0(Lorg/apache/ignite/internal/GridKernalContext;)Ljava/lang/Object;
    .locals 7
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 218
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/IgniteComponentType;->clsName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 230
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-nez p1, :cond_0

    .line 231
    const/4 v4, 0x0

    :try_start_1
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 233
    .local v1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 238
    :goto_1
    return-object v4

    .line 220
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v3

    .line 222
    .local v3, "ignored":Ljava/lang/ClassNotFoundException;
    :try_start_2
    iget-object v4, p0, Lorg/apache/ignite/internal/IgniteComponentType;->noOpClsName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 224
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 225
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    const-string v5, "Failed to find both real component class and no-op class."

    invoke-direct {v4, v5, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 236
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "ignored":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v4, 0x1

    :try_start_3
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/apache/ignite/internal/GridKernalContext;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 238
    .restart local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v4

    goto :goto_1

    .line 241
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_2
    move-exception v2

    .line 242
    .local v2, "e":Ljava/lang/Exception;
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/IgniteComponentType;->componentException(Ljava/lang/Exception;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v4

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteComponentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lorg/apache/ignite/internal/IgniteComponentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/IgniteComponentType;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/IgniteComponentType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/apache/ignite/internal/IgniteComponentType;->$VALUES:[Lorg/apache/ignite/internal/IgniteComponentType;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/IgniteComponentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/IgniteComponentType;

    return-object v0
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComponentType;->clsName:Ljava/lang/String;

    return-object v0
.end method

.method public create(Z)Ljava/lang/Object;
    .locals 2
    .param p1, "noOp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComponentType;->noOpClsName:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, v1, v0}, Lorg/apache/ignite/internal/IgniteComponentType;->create0(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComponentType;->clsName:Ljava/lang/String;

    goto :goto_0
.end method

.method public create(Lorg/apache/ignite/internal/GridKernalContext;Z)Lorg/apache/ignite/internal/GridComponent;
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "noOp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/internal/GridComponent;",
            ">(",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 146
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComponentType;->noOpClsName:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/IgniteComponentType;->create0(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/GridComponent;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComponentType;->clsName:Ljava/lang/String;

    goto :goto_0
.end method

.method public createIfInClassPath(Lorg/apache/ignite/internal/GridKernalContext;Z)Lorg/apache/ignite/internal/GridComponent;
    .locals 3
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "mandatory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/internal/GridComponent;",
            ">(",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComponentType;->clsName:Ljava/lang/String;

    .line 162
    .local v0, "cls":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/IgniteComponentType;->create0(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/GridComponent;

    return-object v2

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    if-eqz p2, :cond_0

    .line 166
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/IgniteComponentType;->componentException(Ljava/lang/Exception;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v2

    throw v2

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComponentType;->noOpClsName:Ljava/lang/String;

    goto :goto_0
.end method

.method public createOptional()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/IgniteComponentType;->createOptional0(Lorg/apache/ignite/internal/GridKernalContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createOptional(Lorg/apache/ignite/internal/GridKernalContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/IgniteComponentType;->createOptional0(Lorg/apache/ignite/internal/GridKernalContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inClassPath()Z
    .locals 2

    .prologue
    .line 128
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComponentType;->clsName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    const/4 v1, 0x1

    .line 133
    :goto_0
    return v1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "ignore":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public module()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComponentType;->module:Ljava/lang/String;

    return-object v0
.end method
