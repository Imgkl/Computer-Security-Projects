.class public final Lorg/apache/ignite/marshaller/MarshallerExclusions;
.super Ljava/lang/Object;
.source "MarshallerExclusions.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EXCL_CLASSES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final INCL_CLASSES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x200

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 34
    const-class v2, Lorg/apache/ignite/marshaller/MarshallerExclusions;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    sput-boolean v2, Lorg/apache/ignite/marshaller/MarshallerExclusions;->$assertionsDisabled:Z

    .line 41
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v5, Lorg/apache/ignite/internal/GridLoggerProxy;

    aput-object v5, v2, v4

    const-class v4, Lorg/apache/ignite/internal/executor/GridExecutorService;

    aput-object v4, v2, v3

    sput-object v2, Lorg/apache/ignite/marshaller/MarshallerExclusions;->INCL_CLASSES:[Ljava/lang/Class;

    .line 48
    new-instance v2, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    const/high16 v3, 0x3f400000    # 0.75f

    const/16 v4, 0x10

    invoke-direct {v2, v6, v6, v3, v4}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;-><init>(IIFI)V

    sput-object v2, Lorg/apache/ignite/marshaller/MarshallerExclusions;->cache:Ljava/util/Map;

    .line 63
    const/4 v1, 0x0

    .line 66
    .local v1, "springCtxCls":Ljava/lang/Class;
    :try_start_0
    const-string v2, "org.springframework.context.ApplicationContext"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 72
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "excl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const-class v2, Ljavax/management/MBeanServer;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    const-class v2, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    const-class v2, Ljava/lang/ClassLoader;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    const-class v2, Ljava/lang/Thread;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    if-eqz v1, :cond_0

    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    const-class v2, Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    const-class v2, Lorg/apache/ignite/compute/ComputeTaskSession;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const-class v2, Lorg/apache/ignite/compute/ComputeLoadBalancer;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const-class v2, Lorg/apache/ignite/compute/ComputeJobContext;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    const-class v2, Lorg/apache/ignite/marshaller/Marshaller;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    const-class v2, Lorg/apache/ignite/internal/GridComponent;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const-class v2, Lorg/apache/ignite/compute/ComputeTaskContinuousMapper;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Class;

    sput-object v2, Lorg/apache/ignite/marshaller/MarshallerExclusions;->EXCL_CLASSES:[Ljava/lang/Class;

    .line 93
    return-void

    .end local v0    # "excl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v1    # "springCtxCls":Ljava/lang/Class;
    :cond_1
    move v2, v4

    .line 34
    goto :goto_0

    .line 68
    .restart local v1    # "springCtxCls":Ljava/lang/Class;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lorg/apache/ignite/marshaller/MarshallerExclusions;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 152
    return-void
.end method

.method public static isExcluded(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lorg/apache/ignite/marshaller/MarshallerExclusions;->cache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 138
    .local v0, "res":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 139
    invoke-static {p0}, Lorg/apache/ignite/marshaller/MarshallerExclusions;->isExcluded0(Ljava/lang/Class;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 141
    sget-object v1, Lorg/apache/ignite/marshaller/MarshallerExclusions;->cache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private static isExcluded0(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 110
    sget-boolean v4, Lorg/apache/ignite/marshaller/MarshallerExclusions;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 112
    :cond_0
    sget-object v2, Lorg/apache/ignite/marshaller/MarshallerExclusions;->INCL_CLASSES:[Ljava/lang/Class;

    .line 115
    .local v2, "inc":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_3

    .line 116
    aget-object v4, v2, v1

    invoke-virtual {v4, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    :cond_1
    :goto_1
    return v3

    .line 115
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_3
    sget-object v0, Lorg/apache/ignite/marshaller/MarshallerExclusions;->EXCL_CLASSES:[Ljava/lang/Class;

    .line 122
    .local v0, "exc":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 123
    aget-object v4, v0, v1

    invoke-virtual {v4, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 124
    const/4 v3, 0x1

    goto :goto_1

    .line 122
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
