.class public Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "GridQueryProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;,
        Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;,
        Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;,
        Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;,
        Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;,
        Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;,
        Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;,
        Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClIter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static idxCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

.field private execSvc:Ljava/util/concurrent/ExecutorService;

.field private final idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

.field private final portableIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final types:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;",
            "Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final typesByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;",
            "Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 59
    new-instance v0, Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    .line 62
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->types:Ljava/util/Map;

    .line 65
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->typesByName:Ljava/util/Map;

    .line 74
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->portableIds:Ljava/util/Map;

    .line 82
    sget-object v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idxCls:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idxCls:Ljava/lang/Class;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    .line 85
    sput-object v1, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idxCls:Ljava/lang/Class;

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/IgniteComponentType;->INDEXING:Lorg/apache/ignite/internal/IgniteComponentType;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/IgniteComponentType;->inClassPath()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/ignite/internal/IgniteComponentType;->INDEXING:Lorg/apache/ignite/internal/IgniteComponentType;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/IgniteComponentType;->className()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    :goto_1
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;)Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    return-object v0
.end method

.method static buildClassProperty(ZLjava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;
    .locals 13
    .param p0, "key"    # Z
    .param p2, "pathStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1182
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "resType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "\\."

    invoke-virtual {p2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1184
    .local v6, "path":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1186
    .local v8, "res":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v7, v0, v2

    .line 1190
    .local v7, "prop":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "get"

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1192
    .local v1, "bld":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    const/4 v10, 0x3

    const/4 v11, 0x3

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1196
    new-instance v9, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {p1, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-direct {v9, v10, p0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;-><init>(Ljava/lang/reflect/Member;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    .end local v1    # "bld":Ljava/lang/StringBuilder;
    .local v9, "tmp":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;
    :goto_1
    invoke-virtual {v9, v8}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->parent(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;)V

    .line 1210
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->type()Ljava/lang/Class;

    move-result-object p1

    .line 1212
    move-object v8, v9

    .line 1186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1198
    .end local v9    # "tmp":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;
    :catch_0
    move-exception v3

    .line 1200
    .local v3, "ignore":Ljava/lang/NoSuchMethodException;
    :try_start_1
    new-instance v9, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;

    invoke-virtual {p1, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-direct {v9, v10, p0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;-><init>(Ljava/lang/reflect/Member;Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v9    # "tmp":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;
    goto :goto_1

    .line 1202
    .end local v9    # "tmp":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;
    :catch_1
    move-exception v4

    .line 1203
    .local v4, "ignored":Ljava/lang/NoSuchFieldException;
    new-instance v10, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to find getter method or field for property named \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\': "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1215
    .end local v3    # "ignore":Ljava/lang/NoSuchMethodException;
    .end local v4    # "ignored":Ljava/lang/NoSuchFieldException;
    .end local v7    # "prop":Ljava/lang/String;
    :cond_0
    invoke-static/range {p3 .. p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->box(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->type()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->box(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1216
    new-instance v10, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to create property for given path (actual property type is not assignable to declared type [path="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", actualType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->type()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", declaredType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1220
    :cond_1
    return-object v8
.end method

.method private buildPortableProperty(Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;
    .locals 10
    .param p1, "pathStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;"
        }
    .end annotation

    .prologue
    .line 1162
    .local p2, "resType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1164
    .local v9, "path":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1166
    .local v0, "res":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;
    move-object v6, v9

    .local v6, "arr$":[Ljava/lang/String;
    array-length v8, v6

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move-object v3, v0

    .end local v0    # "res":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;
    .local v3, "res":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v2, v6, v7

    .line 1167
    .local v2, "prop":Ljava/lang/String;
    new-instance v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;-><init>(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V

    .line 1166
    .end local v3    # "res":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;
    .restart local v0    # "res":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;
    add-int/lit8 v7, v7, 0x1

    move-object v3, v0

    .end local v0    # "res":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;
    .restart local v3    # "res":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;
    goto :goto_0

    .line 1169
    .end local v2    # "prop":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private checkEnabled()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    const-string v1, "Indexing is disabled."

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_0
    return-void
.end method

.method private checkxEnabled()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    if-nez v0, :cond_0

    .line 449
    new-instance v0, Lorg/apache/ignite/IgniteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to execute query because indexing is disabled (consider adding module "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/IgniteComponentType;->INDEXING:Lorg/apache/ignite/internal/IgniteComponentType;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/IgniteComponentType;->module()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to classpath or moving it from \'optional\' to \'libs\' folder)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_0
    return-void
.end method

.method public static isEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/configuration/CacheConfiguration",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<**>;"
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getIndexedTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getTypeMetadata()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isGeometryClass(Ljava/lang/Class;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 1269
    :try_start_0
    const-string v5, "org.h2.value.DataType"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1276
    .local v0, "dataTypeCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v4, "isGeometryClass"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1278
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .end local v0    # "dataTypeCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 1271
    :catch_0
    move-exception v2

    .line 1272
    .local v2, "ignored":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 1280
    .end local v2    # "ignored":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "dataTypeCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 1281
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    const-string v5, "Failed to invoke \'org.h2.value.DataType.isGeometryClass\' method."

    invoke-direct {v4, v5, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private portableName(I)Ljava/lang/String;
    .locals 2
    .param p1, "typeId"    # I

    .prologue
    .line 722
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->portableIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static processAnnotation(ZLorg/apache/ignite/cache/query/annotations/QuerySqlField;Lorg/apache/ignite/cache/query/annotations/QueryTextField;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;)V
    .locals 10
    .param p0, "key"    # Z
    .param p1, "sqlAnn"    # Lorg/apache/ignite/cache/query/annotations/QuerySqlField;
    .param p2, "txtAnn"    # Lorg/apache/ignite/cache/query/annotations/QueryTextField;
    .param p4, "prop"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;
    .param p5, "desc"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/ignite/cache/query/annotations/QuerySqlField;",
            "Lorg/apache/ignite/cache/query/annotations/QueryTextField;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;",
            "Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    .line 962
    if-eqz p1, :cond_4

    .line 963
    invoke-static {p0, p3, p5, p4}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->processAnnotationsInClass(ZLjava/lang/Class;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;)V

    .line 965
    invoke-interface {p1}, Lorg/apache/ignite/cache/query/annotations/QuerySqlField;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 966
    invoke-interface {p1}, Lorg/apache/ignite/cache/query/annotations/QuerySqlField;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->name(Ljava/lang/String;)V

    .line 968
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/cache/query/annotations/QuerySqlField;->index()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 969
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_idx"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 971
    .local v4, "idxName":Ljava/lang/String;
    invoke-virtual {p4}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->type()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->isGeometryClass(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->GEO_SPATIAL:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    :goto_0
    invoke-virtual {p5, v4, v6}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addIndex(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;

    .line 973
    invoke-virtual {p4}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lorg/apache/ignite/cache/query/annotations/QuerySqlField;->descending()Z

    move-result v7

    invoke-virtual {p5, v4, v6, v8, v7}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addFieldToIndex(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 976
    .end local v4    # "idxName":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Lorg/apache/ignite/cache/query/annotations/QuerySqlField;->groups()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 977
    invoke-interface {p1}, Lorg/apache/ignite/cache/query/annotations/QuerySqlField;->groups()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v1, v0, v2

    .line 978
    .local v1, "group":Ljava/lang/String;
    invoke-virtual {p4}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p5, v1, v6, v8, v8}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addFieldToIndex(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 977
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 971
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "group":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .restart local v4    # "idxName":Ljava/lang/String;
    :cond_2
    sget-object v6, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->SORTED:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    goto :goto_0

    .line 981
    .end local v4    # "idxName":Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Lorg/apache/ignite/cache/query/annotations/QuerySqlField;->orderedGroups()[Lorg/apache/ignite/cache/query/annotations/QuerySqlField$Group;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 982
    invoke-interface {p1}, Lorg/apache/ignite/cache/query/annotations/QuerySqlField;->orderedGroups()[Lorg/apache/ignite/cache/query/annotations/QuerySqlField$Group;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/ignite/cache/query/annotations/QuerySqlField$Group;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v5, :cond_4

    aget-object v3, v0, v2

    .line 983
    .local v3, "idx":Lorg/apache/ignite/cache/query/annotations/QuerySqlField$Group;
    invoke-interface {v3}, Lorg/apache/ignite/cache/query/annotations/QuerySqlField$Group;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3}, Lorg/apache/ignite/cache/query/annotations/QuerySqlField$Group;->order()I

    move-result v8

    invoke-interface {v3}, Lorg/apache/ignite/cache/query/annotations/QuerySqlField$Group;->descending()Z

    move-result v9

    invoke-virtual {p5, v6, v7, v8, v9}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addFieldToIndex(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 982
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 987
    .end local v0    # "arr$":[Lorg/apache/ignite/cache/query/annotations/QuerySqlField$Group;
    .end local v2    # "i$":I
    .end local v3    # "idx":Lorg/apache/ignite/cache/query/annotations/QuerySqlField$Group;
    .end local v5    # "len$":I
    :cond_4
    if-eqz p2, :cond_5

    .line 988
    invoke-virtual {p4}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p5, v6}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addFieldToTextIndex(Ljava/lang/String;)V

    .line 989
    :cond_5
    return-void
.end method

.method static processAnnotationsInClass(ZLjava/lang/Class;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;)V
    .locals 18
    .param p0, "key"    # Z
    .param p2, "type"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    .param p3, "parent"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;",
            "Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 887
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isJdk(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 947
    :cond_0
    return-void

    .line 890
    :cond_1
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->knowsClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 891
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Recursive reference found in type: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 893
    :cond_2
    if-nez p3, :cond_5

    .line 894
    const-class v2, Lorg/apache/ignite/cache/query/annotations/QueryTextField;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/cache/query/annotations/QueryTextField;

    .line 896
    .local v17, "txtAnnCls":Lorg/apache/ignite/cache/query/annotations/QueryTextField;
    if-eqz v17, :cond_3

    .line 897
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->valueTextIndex(Z)V

    .line 899
    :cond_3
    const-class v2, Lorg/apache/ignite/cache/query/annotations/QueryGroupIndex;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/cache/query/annotations/QueryGroupIndex;

    .line 901
    .local v11, "grpIdx":Lorg/apache/ignite/cache/query/annotations/QueryGroupIndex;
    if-eqz v11, :cond_4

    .line 902
    invoke-interface {v11}, Lorg/apache/ignite/cache/query/annotations/QueryGroupIndex;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->SORTED:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addIndex(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;

    .line 904
    :cond_4
    const-class v2, Lorg/apache/ignite/cache/query/annotations/QueryGroupIndex$List;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lorg/apache/ignite/cache/query/annotations/QueryGroupIndex$List;

    .line 906
    .local v12, "grpIdxList":Lorg/apache/ignite/cache/query/annotations/QueryGroupIndex$List;
    if-eqz v12, :cond_5

    invoke-interface {v12}, Lorg/apache/ignite/cache/query/annotations/QueryGroupIndex$List;->value()[Lorg/apache/ignite/cache/query/annotations/QueryGroupIndex;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 907
    invoke-interface {v12}, Lorg/apache/ignite/cache/query/annotations/QueryGroupIndex$List;->value()[Lorg/apache/ignite/cache/query/annotations/QueryGroupIndex;

    move-result-object v8

    .local v8, "arr$":[Lorg/apache/ignite/cache/query/annotations/QueryGroupIndex;
    array-length v15, v8

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    if-ge v13, v15, :cond_5

    aget-object v14, v8, v13

    .line 908
    .local v14, "idx":Lorg/apache/ignite/cache/query/annotations/QueryGroupIndex;
    invoke-interface {v14}, Lorg/apache/ignite/cache/query/annotations/QueryGroupIndex;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->SORTED:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addIndex(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;

    .line 907
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 912
    .end local v8    # "arr$":[Lorg/apache/ignite/cache/query/annotations/QueryGroupIndex;
    .end local v11    # "grpIdx":Lorg/apache/ignite/cache/query/annotations/QueryGroupIndex;
    .end local v12    # "grpIdxList":Lorg/apache/ignite/cache/query/annotations/QueryGroupIndex$List;
    .end local v13    # "i$":I
    .end local v14    # "idx":Lorg/apache/ignite/cache/query/annotations/QueryGroupIndex;
    .end local v15    # "len$":I
    .end local v17    # "txtAnnCls":Lorg/apache/ignite/cache/query/annotations/QueryTextField;
    :cond_5
    move-object/from16 v9, p1

    .local v9, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v9, :cond_0

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 913
    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    .local v8, "arr$":[Ljava/lang/reflect/Field;
    array-length v15, v8

    .restart local v15    # "len$":I
    const/4 v13, 0x0

    .restart local v13    # "i$":I
    :goto_2
    if-ge v13, v15, :cond_8

    aget-object v10, v8, v13

    .line 914
    .local v10, "field":Ljava/lang/reflect/Field;
    const-class v2, Lorg/apache/ignite/cache/query/annotations/QuerySqlField;

    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cache/query/annotations/QuerySqlField;

    .line 915
    .local v3, "sqlAnn":Lorg/apache/ignite/cache/query/annotations/QuerySqlField;
    const-class v2, Lorg/apache/ignite/cache/query/annotations/QueryTextField;

    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/cache/query/annotations/QueryTextField;

    .line 917
    .local v4, "txtAnn":Lorg/apache/ignite/cache/query/annotations/QueryTextField;
    if-nez v3, :cond_6

    if-eqz v4, :cond_7

    .line 918
    :cond_6
    new-instance v6, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;

    move/from16 v0, p0

    invoke-direct {v6, v10, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;-><init>(Ljava/lang/reflect/Member;Z)V

    .line 920
    .local v6, "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->parent(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;)V

    .line 922
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    move/from16 v2, p0

    move-object/from16 v7, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->processAnnotation(ZLorg/apache/ignite/cache/query/annotations/QuerySqlField;Lorg/apache/ignite/cache/query/annotations/QueryTextField;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;)V

    .line 924
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addProperty(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;Z)V

    .line 913
    .end local v6    # "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 928
    .end local v3    # "sqlAnn":Lorg/apache/ignite/cache/query/annotations/QuerySqlField;
    .end local v4    # "txtAnn":Lorg/apache/ignite/cache/query/annotations/QueryTextField;
    .end local v10    # "field":Ljava/lang/reflect/Field;
    :cond_8
    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    .local v8, "arr$":[Ljava/lang/reflect/Method;
    array-length v15, v8

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v15, :cond_c

    aget-object v16, v8, v13

    .line 929
    .local v16, "mtd":Ljava/lang/reflect/Method;
    const-class v2, Lorg/apache/ignite/cache/query/annotations/QuerySqlField;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cache/query/annotations/QuerySqlField;

    .line 930
    .restart local v3    # "sqlAnn":Lorg/apache/ignite/cache/query/annotations/QuerySqlField;
    const-class v2, Lorg/apache/ignite/cache/query/annotations/QueryTextField;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/cache/query/annotations/QueryTextField;

    .line 932
    .restart local v4    # "txtAnn":Lorg/apache/ignite/cache/query/annotations/QueryTextField;
    if-nez v3, :cond_9

    if-eqz v4, :cond_b

    .line 933
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_a

    .line 934
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getter with QuerySqlField annotation cannot have parameters: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 937
    :cond_a
    new-instance v6, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-direct {v6, v0, v1}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;-><init>(Ljava/lang/reflect/Member;Z)V

    .line 939
    .restart local v6    # "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->parent(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;)V

    .line 941
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    move/from16 v2, p0

    move-object/from16 v7, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->processAnnotation(ZLorg/apache/ignite/cache/query/annotations/QuerySqlField;Lorg/apache/ignite/cache/query/annotations/QueryTextField;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;)V

    .line 943
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addProperty(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;Z)V

    .line 928
    .end local v6    # "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 912
    .end local v3    # "sqlAnn":Lorg/apache/ignite/cache/query/annotations/QuerySqlField;
    .end local v4    # "txtAnn":Lorg/apache/ignite/cache/query/annotations/QueryTextField;
    .end local v16    # "mtd":Ljava/lang/reflect/Method;
    :cond_c
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    goto/16 :goto_1
.end method

.method static processClassMeta(ZLjava/lang/Class;Lorg/apache/ignite/cache/CacheTypeMetadata;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;)V
    .locals 17
    .param p0, "key"    # Z
    .param p2, "meta"    # Lorg/apache/ignite/cache/CacheTypeMetadata;
    .param p3, "d"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/ignite/cache/CacheTypeMetadata;",
            "Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1002
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getAscendingFields()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1003
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Class;

    move/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v14, v15}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->buildClassProperty(ZLjava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;

    move-result-object v12

    .line 1005
    .local v12, "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v14}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addProperty(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;Z)V

    .line 1007
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_idx"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1009
    .local v10, "idxName":Ljava/lang/String;
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->type()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->isGeometryClass(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_0

    sget-object v14, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->GEO_SPATIAL:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v14}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addIndex(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;

    .line 1011
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->name()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v10, v14, v15, v1}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addFieldToIndex(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1009
    :cond_0
    sget-object v14, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->SORTED:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    goto :goto_1

    .line 1014
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v10    # "idxName":Ljava/lang/String;
    .end local v12    # "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getDescendingFields()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1015
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Class;

    move/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v14, v15}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->buildClassProperty(ZLjava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;

    move-result-object v12

    .line 1017
    .restart local v12    # "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v14}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addProperty(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;Z)V

    .line 1019
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_idx"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1021
    .restart local v10    # "idxName":Ljava/lang/String;
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->type()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->isGeometryClass(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_2

    sget-object v14, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->GEO_SPATIAL:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v14}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addIndex(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;

    .line 1023
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->name()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v10, v14, v15, v1}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addFieldToIndex(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_2

    .line 1021
    :cond_2
    sget-object v14, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->SORTED:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    goto :goto_3

    .line 1026
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v10    # "idxName":Ljava/lang/String;
    .end local v12    # "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getTextFields()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1027
    .local v13, "txtIdx":Ljava/lang/String;
    const-class v14, Ljava/lang/String;

    move/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v13, v14}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->buildClassProperty(ZLjava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;

    move-result-object v12

    .line 1029
    .restart local v12    # "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v14}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addProperty(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;Z)V

    .line 1031
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->name()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addFieldToTextIndex(Ljava/lang/String;)V

    goto :goto_4

    .line 1034
    .end local v12    # "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;
    .end local v13    # "txtIdx":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getGroups()Ljava/util/Map;

    move-result-object v5

    .line 1036
    .local v5, "grps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;>;>;"
    if-eqz v5, :cond_7

    .line 1037
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1038
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1040
    .restart local v10    # "idxName":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/LinkedHashMap;

    .line 1042
    .local v9, "idxFields":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;>;"
    const/4 v11, 0x0

    .line 1044
    .local v11, "order":I
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1045
    .local v8, "idxField":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v15}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Class;

    move/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v14, v15}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->buildClassProperty(ZLjava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;

    move-result-object v12

    .line 1047
    .restart local v12    # "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v14}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addProperty(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;Z)V

    .line 1049
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v14}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 1051
    .local v2, "descending":Ljava/lang/Boolean;
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->name()Ljava/lang/String;

    move-result-object v15

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v14, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v15, v11, v14}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addFieldToIndex(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1053
    add-int/lit8 v11, v11, 0x1

    .line 1054
    goto :goto_5

    .line 1051
    :cond_6
    const/4 v14, 0x0

    goto :goto_6

    .line 1058
    .end local v2    # "descending":Ljava/lang/Boolean;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;>;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "idxField":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;>;"
    .end local v9    # "idxFields":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;>;"
    .end local v10    # "idxName":Ljava/lang/String;
    .end local v11    # "order":I
    .end local v12    # "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getQueryFields()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1059
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Class;

    move/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v14, v15}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->buildClassProperty(ZLjava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;

    move-result-object v12

    .line 1061
    .restart local v12    # "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v14}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addProperty(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;Z)V

    goto :goto_7

    .line 1063
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v12    # "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;
    :cond_8
    return-void
.end method

.method private processKeyAndValueClasses(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/configuration/CacheConfiguration",
            "<**>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;",
            "Lorg/apache/ignite/cache/CacheTypeMetadata;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p1, "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<**>;"
    .local p2, "keyCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "valCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "declaredTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;Lorg/apache/ignite/cache/CacheTypeMetadata;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 165
    new-instance v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;

    invoke-direct {v0, p1, v7}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;-><init>(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V

    .line 167
    .local v0, "d":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->keyClass(Ljava/lang/Class;)V

    .line 168
    invoke-virtual {v0, p3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->valueClass(Ljava/lang/Class;)V

    .line 170
    new-instance v4, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cache/CacheTypeMetadata;

    .line 172
    .local v1, "keyMeta":Lorg/apache/ignite/cache/CacheTypeMetadata;
    if-nez v1, :cond_0

    .line 173
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->access$400(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v9, v4, v0, v7}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->processAnnotationsInClass(ZLjava/lang/Class;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;)V

    .line 177
    :goto_0
    invoke-static {p3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->typeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "valTypeName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->name(Ljava/lang/String;)V

    .line 181
    new-instance v4, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cache/CacheTypeMetadata;

    .line 183
    .local v2, "typeMeta":Lorg/apache/ignite/cache/CacheTypeMetadata;
    if-nez v2, :cond_1

    .line 184
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->access$500(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v8, v4, v0, v7}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->processAnnotationsInClass(ZLjava/lang/Class;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;)V

    .line 188
    :goto_1
    return-object v0

    .line 175
    .end local v2    # "typeMeta":Lorg/apache/ignite/cache/CacheTypeMetadata;
    .end local v3    # "valTypeName":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->access$400(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v9, v4, v1, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->processClassMeta(ZLjava/lang/Class;Lorg/apache/ignite/cache/CacheTypeMetadata;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;)V

    goto :goto_0

    .line 186
    .restart local v2    # "typeMeta":Lorg/apache/ignite/cache/CacheTypeMetadata;
    .restart local v3    # "valTypeName":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->access$500(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v8, v4, v2, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->processClassMeta(ZLjava/lang/Class;Lorg/apache/ignite/cache/CacheTypeMetadata;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;)V

    goto :goto_1
.end method

.method private processPortableMeta(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/cache/CacheTypeMetadata;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    .locals 20
    .param p2, "meta"    # Lorg/apache/ignite/cache/CacheTypeMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/configuration/CacheConfiguration",
            "<**>;",
            "Lorg/apache/ignite/cache/CacheTypeMetadata;",
            ")",
            "Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1075
    .local p1, "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<**>;"
    new-instance v3, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;-><init>(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V

    .line 1077
    .local v3, "d":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getAscendingFields()Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1078
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->buildPortableProperty(Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;

    move-result-object v14

    .line 1080
    .local v14, "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v14, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addProperty(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;Z)V

    .line 1082
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->name()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_idx"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1084
    .local v12, "idxName":Ljava/lang/String;
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->type()Ljava/lang/Class;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->isGeometryClass(Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_0

    sget-object v17, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->GEO_SPATIAL:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v3, v12, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addIndex(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;

    .line 1086
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->name()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v3, v12, v0, v1, v2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addFieldToIndex(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1084
    :cond_0
    sget-object v17, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->SORTED:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    goto :goto_1

    .line 1089
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v12    # "idxName":Ljava/lang/String;
    .end local v14    # "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getDescendingFields()Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1090
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->buildPortableProperty(Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;

    move-result-object v14

    .line 1092
    .restart local v14    # "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v14, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addProperty(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;Z)V

    .line 1094
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->name()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_idx"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1096
    .restart local v12    # "idxName":Ljava/lang/String;
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->type()Ljava/lang/Class;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->isGeometryClass(Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_2

    sget-object v17, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->GEO_SPATIAL:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v3, v12, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addIndex(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;

    .line 1098
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->name()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v3, v12, v0, v1, v2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addFieldToIndex(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_2

    .line 1096
    :cond_2
    sget-object v17, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->SORTED:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    goto :goto_3

    .line 1101
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v12    # "idxName":Ljava/lang/String;
    .end local v14    # "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getTextFields()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1102
    .local v15, "txtIdx":Ljava/lang/String;
    const-class v17, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->buildPortableProperty(Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;

    move-result-object v14

    .line 1104
    .restart local v14    # "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v14, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addProperty(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;Z)V

    .line 1106
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->name()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addFieldToTextIndex(Ljava/lang/String;)V

    goto :goto_4

    .line 1109
    .end local v14    # "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;
    .end local v15    # "txtIdx":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getGroups()Ljava/util/Map;

    move-result-object v7

    .line 1111
    .local v7, "grps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;>;>;"
    if-eqz v7, :cond_7

    .line 1112
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1113
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1115
    .restart local v12    # "idxName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/LinkedHashMap;

    .line 1117
    .local v11, "idxFields":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;>;"
    const/4 v13, 0x0

    .line 1119
    .local v13, "order":I
    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1120
    .local v10, "idxField":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->buildPortableProperty(Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;

    move-result-object v14

    .line 1122
    .restart local v14    # "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v14, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addProperty(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;Z)V

    .line 1124
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 1126
    .local v4, "descending":Ljava/lang/Boolean;
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->name()Ljava/lang/String;

    move-result-object v18

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_6

    const/16 v17, 0x1

    :goto_6
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v3, v12, v0, v13, v1}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addFieldToIndex(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1128
    add-int/lit8 v13, v13, 0x1

    .line 1129
    goto :goto_5

    .line 1126
    :cond_6
    const/16 v17, 0x0

    goto :goto_6

    .line 1133
    .end local v4    # "descending":Ljava/lang/Boolean;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;>;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "idxField":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;>;"
    .end local v11    # "idxFields":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;>;"
    .end local v12    # "idxName":Ljava/lang/String;
    .end local v13    # "order":I
    .end local v14    # "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getQueryFields()Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1134
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->buildPortableProperty(Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;

    move-result-object v14

    .line 1136
    .restart local v14    # "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->access$800(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;)Ljava/util/Map;

    move-result-object v17

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->name()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 1137
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v14, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addProperty(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;Z)V

    goto :goto_7

    .line 1140
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v14    # "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getValueType()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1141
    new-instance v17, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Value type is not set: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1143
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getValueType()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/apache/ignite/internal/util/typedef/internal/U;->classForName(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v16

    .line 1145
    .local v16, "valCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v16, :cond_b

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->typeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v17

    :goto_8
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->name(Ljava/lang/String;)V

    .line 1147
    if-eqz v16, :cond_c

    .end local v16    # "valCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_9
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->valueClass(Ljava/lang/Class;)V

    .line 1148
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getKeyType()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_d

    const-class v17, Ljava/lang/Object;

    :goto_a
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->keyClass(Ljava/lang/Class;)V

    .line 1150
    return-object v3

    .line 1145
    .restart local v16    # "valCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getValueType()Ljava/lang/String;

    move-result-object v17

    goto :goto_8

    .line 1147
    :cond_c
    const-class v16, Ljava/lang/Object;

    goto :goto_9

    .line 1148
    .end local v16    # "valCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getKeyType()Ljava/lang/String;

    move-result-object v17

    const-class v18, Ljava/lang/Object;

    invoke-static/range {v17 .. v18}, Lorg/apache/ignite/internal/util/typedef/internal/U;->classForName(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v17

    goto :goto_a
.end method

.method private rebuildIndexes(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 8
    .param p1, "space"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "desc"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    if-nez v1, :cond_0

    .line 311
    new-instance v7, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    const-string v2, "Indexing is disabled."

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    .line 340
    :goto_0
    return-object v7

    .line 313
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->registered()Z

    move-result v1

    if-nez v1, :cond_2

    .line 314
    :cond_1
    new-instance v7, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v7}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    goto :goto_0

    .line 316
    :cond_2
    new-instance v7, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;

    invoke-direct {v7}, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;-><init>()V

    .line 318
    .local v7, "fut":Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;, "Lorg/apache/ignite/internal/util/worker/GridWorkerFuture<*>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "index-rebuild-worker"

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;-><init>(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;)V

    .line 336
    .local v0, "w":Lorg/apache/ignite/internal/util/worker/GridWorker;
    invoke-virtual {v7, v0}, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;->setWorker(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    .line 338
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->execSvc:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static typeName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 697
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 700
    .local v1, "typeName":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 701
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    add-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 706
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 707
    sget-boolean v2, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 703
    .restart local v0    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 709
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_array"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 712
    :cond_3
    return-object v1
.end method


# virtual methods
.method public initializeCache(Lorg/apache/ignite/configuration/CacheConfiguration;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/configuration/CacheConfiguration",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p1, "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<**>;"
    const/4 v13, 0x0

    .line 116
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v1, "declaredTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;Lorg/apache/ignite/cache/CacheTypeMetadata;>;"
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    invoke-interface {v9, p1}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;->registerCache(Lorg/apache/ignite/configuration/CacheConfiguration;)V

    .line 120
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getTypeMetadata()Ljava/util/Collection;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 121
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getTypeMetadata()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/cache/CacheTypeMetadata;

    .line 122
    .local v6, "meta":Lorg/apache/ignite/cache/CacheTypeMetadata;
    new-instance v9, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getValueType()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11, v13}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V

    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v9}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v9

    invoke-virtual {v6}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getValueType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->typeId(Ljava/lang/String;)I

    move-result v8

    .line 126
    .local v8, "valTypeId":I
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->portableIds:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getValueType()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-direct {p0, p1, v6}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->processPortableMeta(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/cache/CacheTypeMetadata;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;

    move-result-object v2

    .line 130
    .local v2, "desc":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v2}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;->registerType(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;)Z

    move-result v9

    invoke-virtual {v2, v9}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->registered(Z)V

    .line 132
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->typesByName:Ljava/util/Map;

    new-instance v10, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->name()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12, v13}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V

    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->types:Ljava/util/Map;

    new-instance v10, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v8, v13}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;-><init>(Ljava/lang/String;ILorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V

    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 137
    .end local v2    # "desc":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "meta":Lorg/apache/ignite/cache/CacheTypeMetadata;
    .end local v8    # "valTypeId":I
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getIndexedTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 139
    .local v0, "clss":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 140
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v9, v0

    if-ge v3, v9, :cond_1

    .line 141
    aget-object v5, v0, v3

    .line 142
    .local v5, "keyCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v9, v3, 0x1

    aget-object v7, v0, v9

    .line 144
    .local v7, "valCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, v5, v7, v1}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->processKeyAndValueClasses(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;

    move-result-object v2

    .line 146
    .restart local v2    # "desc":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v2}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;->registerType(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;)Z

    move-result v9

    invoke-virtual {v2, v9}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->registered(Z)V

    .line 148
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->typesByName:Ljava/util/Map;

    new-instance v10, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->name()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12, v13}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V

    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->types:Ljava/util/Map;

    new-instance v10, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v7, v13}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V

    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 152
    .end local v2    # "desc":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    .end local v3    # "i":I
    .end local v5    # "keyCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "valCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-void
.end method

.method public onCacheStart(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 2
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    if-nez v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->initializeCache(Lorg/apache/ignite/configuration/CacheConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0
.end method

.method public onCacheStop(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 8
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .prologue
    .line 229
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    if-nez v3, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;->unregisterCache(Lorg/apache/ignite/configuration/CacheConfiguration;)V

    .line 238
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->types:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 240
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 241
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 243
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;

    # getter for: Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->space:Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->access$600(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 246
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->typesByName:Ljava/util/Map;

    new-instance v5, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-direct {v5, v6, v3, v7}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 250
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;>;>;"
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to clear indexing on cache stop (will ignore): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;>;>;"
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto/16 :goto_0

    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;>;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v3
.end method

.method public onKernalStop(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .prologue
    .line 193
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;->onKernalStop(Z)V

    .line 195
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->block()V

    .line 196
    return-void
.end method

.method public onSwap(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "spaceName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 787
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Swap [space="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 790
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->indexing()Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->onSwap(Ljava/lang/String;Ljava/lang/Object;)V

    .line 792
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    if-nez v0, :cond_1

    .line 804
    :goto_0
    return-void

    .line 795
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_2

    .line 796
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to process swap event (grid is stopping)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;->onSwap(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0
.end method

.method public onUndeploy(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 6
    .param p1, "space"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 844
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 845
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Undeploy [space="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 847
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    if-nez v3, :cond_1

    .line 874
    :goto_0
    return-void

    .line 850
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v3

    if-nez v3, :cond_2

    .line 851
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to process undeploy event (grid is stopping)."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 854
    :cond_2
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->types:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 856
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;>;>;"
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 857
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 859
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;

    # getter for: Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->space:Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->access$600(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 862
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;

    .line 864
    .local v0, "desc":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->access$500(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->access$400(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 865
    :cond_4
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;

    # getter for: Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->space:Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->access$600(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;->unregisterType(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;)V

    .line 867
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 872
    .end local v0    # "desc":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;>;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v3

    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;>;>;"
    :cond_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0
.end method

.method public onUnswap(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[B)V
    .locals 3
    .param p1, "spaceName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "val"    # Ljava/lang/Object;
    .param p4, "valBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 817
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unswap [space="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", val="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 820
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->indexing()Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->onUnswap(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 822
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    if-nez v0, :cond_1

    .line 834
    :goto_0
    return-void

    .line 825
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_2

    .line 826
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to process swap event (grid is stopping)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 829
    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;->onUnswap(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0
.end method

.method public query(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 6
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "clause"    # Ljava/lang/String;
    .param p4, "resType"    # Ljava/lang/String;
    .param p5, "filters"    # Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;",
            ")",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 466
    .local p3, "params":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->checkEnabled()V

    .line 468
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to execute query (grid is stopping)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->typesByName:Ljava/util/Map;

    new-instance v1, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p4, v2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;

    .line 474
    .local v4, "type":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->registered()Z

    move-result v0

    if-nez v0, :cond_2

    .line 475
    :cond_1
    new-instance v0, Ljavax/cache/CacheException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find SQL table for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    .end local v4    # "type":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0

    .line 477
    .restart local v4    # "type":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;->query(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 480
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v0
.end method

.method public queryFields(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)Lorg/apache/ignite/internal/processors/query/GridQueryFieldsResult;
    .locals 2
    .param p1, "space"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "clause"    # Ljava/lang/String;
    .param p4, "filters"    # Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;",
            ")",
            "Lorg/apache/ignite/internal/processors/query/GridQueryFieldsResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 766
    .local p3, "params":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->checkEnabled()V

    .line 768
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 769
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to execute query (grid is stopping)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;->queryFields(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)Lorg/apache/ignite/internal/processors/query/GridQueryFieldsResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 775
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0
.end method

.method public queryLocal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cache/query/SqlQuery;)Ljava/util/Iterator;
    .locals 23
    .param p2, "qry"    # Lorg/apache/ignite/cache/query/SqlQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;",
            "Lorg/apache/ignite/cache/query/SqlQuery;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 547
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v2

    if-nez v2, :cond_0

    .line 548
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to execute query (grid is stopping)."

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 551
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, "space":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/cache/query/SqlQuery;->getType()Ljava/lang/String;

    move-result-object v22

    .line 553
    .local v22, "type":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/cache/query/SqlQuery;->getSql()Ljava/lang/String;

    move-result-object v4

    .line 554
    .local v4, "sqlQry":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/cache/query/SqlQuery;->getArgs()[Ljava/lang/Object;

    move-result-object v17

    .line 556
    .local v17, "params":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->typesByName:Ljava/util/Map;

    new-instance v5, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-direct {v5, v3, v0, v7}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;

    .line 558
    .local v6, "typeDesc":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->registered()Z

    move-result v2

    if-nez v2, :cond_2

    .line 559
    :cond_1
    new-instance v2, Ljavax/cache/CacheException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find SQL table for type: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    .end local v3    # "space":Ljava/lang/String;
    .end local v4    # "sqlQry":Ljava/lang/String;
    .end local v6    # "typeDesc":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    .end local v17    # "params":[Ljava/lang/Object;
    .end local v22    # "type":Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 601
    .local v20, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v2, Lorg/apache/ignite/IgniteException;

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    .end local v20    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v2

    .line 561
    .restart local v3    # "space":Ljava/lang/String;
    .restart local v4    # "sqlQry":Ljava/lang/String;
    .restart local v6    # "typeDesc":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    .restart local v17    # "params":[Ljava/lang/Object;
    .restart local v22    # "type":Ljava/lang/String;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;->backupFilter()Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;->query(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v21

    .line 564
    .local v21, "i":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    const/16 v5, 0x60

    invoke-virtual {v2, v5}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    new-instance v7, Lorg/apache/ignite/events/CacheQueryExecutedEvent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v8

    const-string v9, "SQL query executed."

    const/16 v10, 0x60

    sget-object v11, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->SQL:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v4

    invoke-direct/range {v7 .. v19}, Lorg/apache/ignite/events/CacheQueryExecutedEvent;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILorg/apache/ignite/internal/processors/cache/query/CacheQueryType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;[Ljava/lang/Object;Ljava/util/UUID;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 580
    :cond_3
    new-instance v2, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v2, v0, v1}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$2;-><init>(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 604
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v2
.end method

.method public queryLocalFields(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cache/query/SqlFieldsQuery;)Lorg/apache/ignite/cache/query/QueryCursor;
    .locals 19
    .param p2, "qry"    # Lorg/apache/ignite/cache/query/SqlFieldsQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;",
            "Lorg/apache/ignite/cache/query/SqlFieldsQuery;",
            ")",
            "Lorg/apache/ignite/cache/query/QueryCursor",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 621
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 622
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to execute query (grid is stopping)."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 625
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v17

    .line 626
    .local v17, "space":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/cache/query/SqlFieldsQuery;->getSql()Ljava/lang/String;

    move-result-object v8

    .line 627
    .local v8, "sql":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/cache/query/SqlFieldsQuery;->getArgs()[Ljava/lang/Object;

    move-result-object v11

    .line 629
    .local v11, "args":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    invoke-static {v11}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;->backupFilter()Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v8, v2, v3}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;->queryFields(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)Lorg/apache/ignite/internal/processors/query/GridQueryFieldsResult;

    move-result-object v16

    .line 631
    .local v16, "res":Lorg/apache/ignite/internal/processors/query/GridQueryFieldsResult;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    const/16 v2, 0x60

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 632
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v18

    new-instance v1, Lorg/apache/ignite/events/CacheQueryExecutedEvent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    const-string v3, "SQL query executed."

    const/16 v4, 0x60

    sget-object v5, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->SQL:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v13}, Lorg/apache/ignite/events/CacheQueryExecutedEvent;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILorg/apache/ignite/internal/processors/cache/query/CacheQueryType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;[Ljava/lang/Object;Ljava/util/UUID;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 647
    :cond_1
    new-instance v14, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;

    new-instance v1, Lorg/apache/ignite/internal/processors/query/GridQueryCacheObjectsIterator;

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/query/GridQueryFieldsResult;->iterator()Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->keepPortable()Z

    move-result v3

    move-object/from16 v0, p1

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/ignite/internal/processors/query/GridQueryCacheObjectsIterator;-><init>(Ljava/util/Iterator;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)V

    invoke-direct {v14, v1}, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;-><init>(Ljava/util/Iterator;)V

    .line 650
    .local v14, "cursor":Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;, "Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl<Ljava/util/List<*>;>;"
    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/query/GridQueryFieldsResult;->metaData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v14, v1}, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;->fieldsMeta(Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v14

    .line 654
    .end local v8    # "sql":Ljava/lang/String;
    .end local v11    # "args":[Ljava/lang/Object;
    .end local v14    # "cursor":Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;, "Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl<Ljava/util/List<*>;>;"
    .end local v16    # "res":Lorg/apache/ignite/internal/processors/query/GridQueryFieldsResult;
    .end local v17    # "space":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 655
    .local v15, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v1, Ljavax/cache/CacheException;

    invoke-direct {v1, v15}, Ljavax/cache/CacheException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 658
    .end local v15    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v1
.end method

.method public queryText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 4
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "clause"    # Ljava/lang/String;
    .param p3, "resType"    # Ljava/lang/String;
    .param p4, "filters"    # Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;",
            ")",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 738
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->checkEnabled()V

    .line 740
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 741
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to execute query (grid is stopping)."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 744
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->typesByName:Ljava/util/Map;

    new-instance v2, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p3, v3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;

    .line 746
    .local v0, "type":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->registered()Z

    move-result v1

    if-nez v1, :cond_2

    .line 747
    :cond_1
    new-instance v1, Ljavax/cache/CacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find SQL table for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    .end local v0    # "type":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v1

    .line 749
    .restart local v0    # "type":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    invoke-interface {v1, p1, p2, v0, p4}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;->queryText(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 752
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v1
.end method

.method public queryTwoStep(Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;)Lorg/apache/ignite/cache/query/QueryCursor;
    .locals 2
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "qry"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;",
            ")",
            "Lorg/apache/ignite/cache/query/QueryCursor",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 490
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->checkxEnabled()V

    .line 492
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to execute query (grid is stopping)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;->queryTwoStep(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;)Lorg/apache/ignite/cache/query/QueryCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 499
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0
.end method

.method public queryTwoStep(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cache/query/SqlFieldsQuery;)Lorg/apache/ignite/cache/query/QueryCursor;
    .locals 2
    .param p2, "qry"    # Lorg/apache/ignite/cache/query/SqlFieldsQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;",
            "Lorg/apache/ignite/cache/query/SqlFieldsQuery;",
            ")",
            "Lorg/apache/ignite/cache/query/QueryCursor",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 509
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->checkxEnabled()V

    .line 511
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to execute query (grid is stopping)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;->queryTwoStep(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cache/query/SqlFieldsQuery;)Lorg/apache/ignite/cache/query/QueryCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 518
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0
.end method

.method public queryTwoStep(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cache/query/SqlQuery;)Lorg/apache/ignite/cache/query/QueryCursor;
    .locals 2
    .param p2, "qry"    # Lorg/apache/ignite/cache/query/SqlQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;",
            "Lorg/apache/ignite/cache/query/SqlQuery;",
            ")",
            "Lorg/apache/ignite/cache/query/QueryCursor",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->checkxEnabled()V

    .line 530
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to execute query (grid is stopping)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;->queryTwoStep(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cache/query/SqlQuery;)Lorg/apache/ignite/cache/query/QueryCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 537
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0
.end method

.method public rebuildAllIndexes()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 350
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v3

    if-nez v3, :cond_0

    .line 351
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to get space size (grid is stopping)."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 354
    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;-><init>()V

    .line 356
    .local v1, "fut":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<**>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->types:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 357
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;

    # getter for: Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->space:Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->access$600(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;

    invoke-direct {p0, v4, v3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->rebuildIndexes(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 364
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;>;"
    .end local v1    # "fut":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<**>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v3

    .line 359
    .restart local v1    # "fut":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<**>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->markInitialized()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v1
.end method

.method public rebuildIndexes(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p1, "space"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "valTypeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to rebuild indexes (grid is stopping)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->typesByName:Ljava/util/Map;

    new-instance v1, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->rebuildIndexes(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 300
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 669
    sget-boolean v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 671
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove [space="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", val="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 674
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->indexing()Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->remove(Ljava/lang/String;Ljava/lang/Object;)V

    .line 676
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    if-nez v0, :cond_2

    .line 688
    :goto_0
    return-void

    .line 679
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_3

    .line 680
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to remove from index (grid is stopping)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_3
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;->remove(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0
.end method

.method public size(Ljava/lang/String;Ljava/lang/Class;)J
    .locals 4
    .param p1, "space"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 267
    .local p2, "valType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->checkEnabled()V

    .line 269
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get space size (grid is stopping)."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->types:Ljava/util/Map;

    new-instance v2, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;

    .line 275
    .local v0, "desc":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->registered()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 276
    :cond_1
    const-wide/16 v2, -0x1

    .line 281
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    :goto_0
    return-wide v2

    .line 278
    :cond_2
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;->size(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 281
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    .end local v0    # "desc":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v1
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;->start()V

    .line 95
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->injectGeneric(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->execSvc:Ljava/util/concurrent/ExecutorService;

    .line 100
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;->start(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 102
    :cond_0
    return-void
.end method

.method public stop(Z)V
    .locals 1
    .param p1, "cancel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;->stop(Z)V

    .line 202
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;->stop()V

    .line 204
    :cond_0
    return-void
.end method

.method public store(Ljava/lang/String;Ljava/lang/Object;[BLjava/lang/Object;[B[BJ)V
    .locals 15
    .param p1, "space"    # Ljava/lang/String;
    .param p3, "keyBytes"    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "valBytes"    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "ver"    # [B
    .param p7, "expirationTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;[BTV;[B[BJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 383
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "val":Ljava/lang/Object;, "TV;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 384
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p4, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 386
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 387
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Store [space="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", key="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", val="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 389
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->indexing()Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;

    move-result-object v2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p7

    invoke-virtual/range {v2 .. v7}, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->store(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 391
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    if-nez v2, :cond_3

    .line 434
    :goto_0
    return-void

    .line 394
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v2

    if-nez v2, :cond_4

    .line 395
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to write to index (grid is stopping)."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 398
    :cond_4
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 402
    .local v13, "valCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v2, v0}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->isPortableObject(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 403
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v2, v0}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->typeId(Ljava/lang/Object;)I

    move-result v11

    .line 405
    .local v11, "typeId":I
    invoke-direct {p0, v11}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->portableName(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 407
    .local v12, "typeName":Ljava/lang/String;
    if-nez v12, :cond_5

    .line 432
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    .line 410
    :cond_5
    :try_start_1
    new-instance v10, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v11, v2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;-><init>(Ljava/lang/String;ILorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V

    .line 415
    .end local v11    # "typeId":I
    .end local v12    # "typeName":Ljava/lang/String;
    .local v10, "id":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;
    :goto_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->types:Ljava/util/Map;

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;

    .line 417
    .local v4, "desc":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->registered()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_8

    .line 432
    :cond_6
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    .line 413
    .end local v4    # "desc":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    .end local v10    # "id":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;
    :cond_7
    :try_start_2
    new-instance v10, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v13, v2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V

    .restart local v10    # "id":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;
    goto :goto_1

    .line 420
    .restart local v4    # "desc":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    :cond_8
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->valueClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 421
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update index due to class name conflict(multiple classes with same simple name are stored in the same cache) [expCls="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->valueClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", actualCls="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x5d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 432
    .end local v4    # "desc":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    .end local v10    # "id":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;
    .end local v13    # "valCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v2

    .line 425
    .restart local v4    # "desc":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    .restart local v10    # "id":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;
    .restart local v13    # "valCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    :try_start_3
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->keyClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 426
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update index, incorrect key class [expCls="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->keyClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", actualCls="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 429
    :cond_a
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-interface/range {v2 .. v9}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;->store(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;Ljava/lang/Object;Ljava/lang/Object;[BJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 432
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto/16 :goto_0
.end method

.method public type(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;
    .locals 4
    .param p1, "space"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1252
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->typesByName:Ljava/util/Map;

    new-instance v2, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;

    .line 1254
    .local v0, "type":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->registered()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1255
    :cond_0
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find type descriptor for type name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1257
    :cond_1
    return-object v0
.end method

.method public types(Ljava/lang/String;)Ljava/util/Collection;
    .locals 6
    .param p1, "space"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1230
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->types:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1233
    .local v3, "spaceTypes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->types:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1234
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;

    .line 1236
    .local v0, "desc":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->registered()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;

    # getter for: Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->space:Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->access$600(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1237
    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1240
    .end local v0    # "desc":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;>;"
    :cond_1
    return-object v3
.end method
