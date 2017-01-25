.class Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;
.super Ljava/lang/Object;
.source "GridResourceIoc.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final annCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fieldCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Lorg/apache/ignite/internal/processors/resource/GridResourceField;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mtdCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field private final skipCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final taskMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->taskMap:Ljava/util/concurrent/ConcurrentMap;

    .line 42
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    .line 46
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->mtdCache:Ljava/util/concurrent/ConcurrentMap;

    .line 53
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->skipCache:Ljava/util/concurrent/ConcurrentMap;

    .line 57
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->annCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private cacheFields(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/lang/Class;[Lorg/apache/ignite/internal/processors/resource/GridResourceField;)V
    .locals 5
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "fields"    # [Lorg/apache/ignite/internal/processors/resource/GridResourceField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Lorg/apache/ignite/internal/processors/resource/GridResourceField;",
            ")V"
        }
    .end annotation

    .prologue
    .line 411
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz p1, :cond_1

    .line 412
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->taskMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->newCSet()Lorg/apache/ignite/lang/IgniteCallable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 414
    .local v0, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 416
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 419
    .end local v0    # "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->newCMap()Lorg/apache/ignite/lang/IgniteCallable;

    move-result-object v3

    invoke-static {v2, p2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 422
    .local v1, "rsrcFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;[Lorg/apache/ignite/internal/processors/resource/GridResourceField;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 424
    :cond_2
    invoke-interface {v1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    return-void
.end method

.method private cacheMethods(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/lang/Class;[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;)V
    .locals 5
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "mtds"    # [Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;",
            ")V"
        }
    .end annotation

    .prologue
    .line 450
    .local p2, "rsrcCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz p1, :cond_1

    .line 451
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->taskMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->newCSet()Lorg/apache/ignite/lang/IgniteCallable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 453
    .local v0, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 455
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 458
    .end local v0    # "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->mtdCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->newCMap()Lorg/apache/ignite/lang/IgniteCallable;

    move-result-object v3

    invoke-static {v2, p2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 461
    .local v1, "rsrcMtds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 463
    :cond_2
    invoke-interface {v1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    return-void
.end method

.method private getFieldsFromCache(Ljava/lang/Class;Ljava/lang/Class;)[Lorg/apache/ignite/internal/processors/resource/GridResourceField;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)[",
            "Lorg/apache/ignite/internal/processors/resource/GridResourceField;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 396
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 398
    .local v0, "annCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;[Lorg/apache/ignite/internal/processors/resource/GridResourceField;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/ignite/internal/processors/resource/GridResourceField;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getFieldsWithAnnotation(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/lang/Class;)[Lorg/apache/ignite/internal/processors/resource/GridResourceField;
    .locals 11
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)[",
            "Lorg/apache/ignite/internal/processors/resource/GridResourceField;"
        }
    .end annotation

    .prologue
    .line 357
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0, p2, p3}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->getFieldsFromCache(Ljava/lang/Class;Ljava/lang/Class;)[Lorg/apache/ignite/internal/processors/resource/GridResourceField;

    move-result-object v5

    .line 359
    .local v5, "fields":[Lorg/apache/ignite/internal/processors/resource/GridResourceField;
    if-nez v5, :cond_5

    .line 360
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v6, "fieldsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/resource/GridResourceField;>;"
    const-class v9, Lorg/apache/ignite/internal/processors/resource/GridNoImplicitInjection;

    invoke-virtual {v9, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v0, 0x1

    .line 364
    .local v0, "allowImplicitInjection":Z
    :goto_0
    move-object v3, p2

    .local v3, "cls0":Ljava/lang/Class;
    :goto_1
    const-class v9, Ljava/lang/Object;

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 365
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/reflect/Field;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v8, :cond_3

    aget-object v4, v2, v7

    .line 366
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, p3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 368
    .local v1, "ann":Ljava/lang/annotation/Annotation;
    if-eqz v1, :cond_2

    .line 369
    new-instance v9, Lorg/apache/ignite/internal/processors/resource/GridResourceField;

    invoke-direct {v9, v4, v1}, Lorg/apache/ignite/internal/processors/resource/GridResourceField;-><init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_0
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 362
    .end local v0    # "allowImplicitInjection":Z
    .end local v1    # "ann":Ljava/lang/annotation/Annotation;
    .end local v2    # "arr$":[Ljava/lang/reflect/Field;
    .end local v3    # "cls0":Ljava/lang/Class;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 370
    .restart local v0    # "allowImplicitInjection":Z
    .restart local v1    # "ann":Ljava/lang/annotation/Annotation;
    .restart local v2    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v3    # "cls0":Ljava/lang/Class;
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    :cond_2
    if-eqz v0, :cond_0

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/resource/GridResourceUtils;->mayRequireResources(Ljava/lang/reflect/Field;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 372
    new-instance v9, Lorg/apache/ignite/internal/processors/resource/GridResourceField;

    const/4 v10, 0x0

    invoke-direct {v9, v4, v10}, Lorg/apache/ignite/internal/processors/resource/GridResourceField;-><init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 364
    .end local v1    # "ann":Ljava/lang/annotation/Annotation;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    .line 377
    .end local v2    # "arr$":[Ljava/lang/reflect/Field;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 378
    sget-object v5, Lorg/apache/ignite/internal/processors/resource/GridResourceField;->EMPTY_ARRAY:[Lorg/apache/ignite/internal/processors/resource/GridResourceField;

    .line 382
    :goto_4
    invoke-direct {p0, p1, p2, p3, v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->cacheFields(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/lang/Class;[Lorg/apache/ignite/internal/processors/resource/GridResourceField;)V

    .line 385
    .end local v0    # "allowImplicitInjection":Z
    .end local v3    # "cls0":Ljava/lang/Class;
    .end local v6    # "fieldsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/resource/GridResourceField;>;"
    :cond_5
    return-object v5

    .line 380
    .restart local v0    # "allowImplicitInjection":Z
    .restart local v3    # "cls0":Ljava/lang/Class;
    .restart local v6    # "fieldsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/resource/GridResourceField;>;"
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lorg/apache/ignite/internal/processors/resource/GridResourceField;

    invoke-interface {v6, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "fields":[Lorg/apache/ignite/internal/processors/resource/GridResourceField;
    check-cast v5, [Lorg/apache/ignite/internal/processors/resource/GridResourceField;

    .restart local v5    # "fields":[Lorg/apache/ignite/internal/processors/resource/GridResourceField;
    goto :goto_4
.end method

.method private getMethodsFromCache(Ljava/lang/Class;Ljava/lang/Class;)[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)[",
            "Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 435
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->mtdCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 437
    .local v0, "annCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private injectInternal(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/util/Set;)Z
    .locals 24
    .param p1, "target"    # Ljava/lang/Object;
    .param p3, "injector"    # Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;
    .param p4, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 139
    .local p2, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p5, "depCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p6, "checkedObjs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    sget-boolean v5, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 140
    :cond_0
    sget-boolean v5, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-nez p2, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 141
    :cond_1
    sget-boolean v5, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    if-nez p3, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 142
    :cond_2
    sget-boolean v5, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-nez p6, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 144
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    .line 146
    .local v23, "targetCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->skipCache:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Set;

    .line 149
    .local v22, "skipClss":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    if-eqz v22, :cond_5

    invoke-interface/range {v22 .. v23}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 150
    const/16 v18, 0x0

    .line 205
    :cond_4
    :goto_0
    return v18

    .line 153
    :cond_5
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 154
    const/16 v18, 0x0

    goto :goto_0

    .line 156
    :cond_6
    const/4 v12, 0x0

    .line 158
    .local v12, "annCnt":I
    const/16 v18, 0x0

    .line 160
    .local v18, "injected":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->getFieldsWithAnnotation(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/lang/Class;)[Lorg/apache/ignite/internal/processors/resource/GridResourceField;

    move-result-object v13

    .local v13, "arr$":[Lorg/apache/ignite/internal/processors/resource/GridResourceField;
    array-length v0, v13

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    aget-object v16, v13, v17

    .line 161
    .local v16, "field":Lorg/apache/ignite/internal/processors/resource/GridResourceField;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/resource/GridResourceField;->processFieldValue()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 162
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/resource/GridResourceField;->getField()Ljava/lang/reflect/Field;

    move-result-object v15

    .line 165
    .local v15, "f":Ljava/lang/reflect/Field;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 167
    .local v6, "obj":Ljava/lang/Object;
    if-eqz v6, :cond_7

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 169
    invoke-direct/range {v5 .. v11}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->injectInternal(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/util/Set;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 171
    .local v19, "injected0":Z
    or-int v18, v18, v19

    .line 185
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v15    # "f":Ljava/lang/reflect/Field;
    .end local v19    # "injected0":Z
    :cond_7
    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 160
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 174
    .restart local v15    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v14

    .line 175
    .local v14, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to inject resource [field="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", target="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v14}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 180
    .end local v14    # "e":Ljava/lang/IllegalAccessException;
    .end local v15    # "f":Ljava/lang/reflect/Field;
    :cond_8
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;->inject(Lorg/apache/ignite/internal/processors/resource/GridResourceField;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V

    .line 182
    const/16 v18, 0x1

    goto :goto_2

    .line 188
    .end local v16    # "field":Lorg/apache/ignite/internal/processors/resource/GridResourceField;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->getMethodsWithAnnotation(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/lang/Class;)[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;

    move-result-object v13

    .local v13, "arr$":[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;
    array-length v0, v13

    move/from16 v20, v0

    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    aget-object v21, v13, v17

    .line 189
    .local v21, "mtd":Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;->inject(Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V

    .line 191
    const/16 v18, 0x1

    .line 193
    add-int/lit8 v12, v12, 0x1

    .line 188
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 196
    .end local v21    # "mtd":Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;
    :cond_a
    if-nez v12, :cond_4

    .line 197
    if-nez v22, :cond_b

    .line 198
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->skipCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->newCSet()Lorg/apache/ignite/lang/IgniteCallable;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-static {v5, v0, v7}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "skipClss":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    check-cast v22, Ljava/util/Set;

    .line 200
    .restart local v22    # "skipClss":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    :cond_b
    sget-boolean v5, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->$assertionsDisabled:Z

    if-nez v5, :cond_c

    if-nez v22, :cond_c

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 202
    :cond_c
    invoke-interface/range {v22 .. v23}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method filter(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Object;Ljava/util/Collection;)[Ljava/lang/Class;
    .locals 7
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;)[",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    .local p3, "annClss":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    sget-boolean v5, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p2, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 256
    :cond_0
    sget-boolean v5, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 258
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 260
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->annCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    .line 262
    .local v3, "res":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-nez v3, :cond_5

    .line 263
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6}, Ljava/util/HashSet;-><init>(IF)V

    .line 266
    .local v4, "res0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 267
    .local v0, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0, p2, v0, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->isAnnotationPresent(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 268
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    .end local v0    # "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/Class;

    .line 273
    invoke-interface {v4, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 275
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->annCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "res0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    :cond_5
    return-object v3
.end method

.method getMethodsWithAnnotation(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/lang/Class;)[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;
    .locals 9
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)[",
            "Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;"
        }
    .end annotation

    .prologue
    .line 321
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0, p2, p3}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->getMethodsFromCache(Ljava/lang/Class;Ljava/lang/Class;)[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;

    move-result-object v6

    .line 323
    .local v6, "mtds":[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;
    if-nez v6, :cond_3

    .line 324
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v7, "mtdsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;>;"
    move-object v2, p2

    .local v2, "cls0":Ljava/lang/Class;
    :goto_0
    const-class v8, Ljava/lang/Object;

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 327
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Method;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 328
    .local v5, "mtd":Ljava/lang/reflect/Method;
    invoke-virtual {v5, p3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 330
    .local v0, "ann":Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_0

    .line 331
    new-instance v8, Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;

    invoke-direct {v8, v5, v0}, Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 326
    .end local v0    # "ann":Ljava/lang/annotation/Annotation;
    .end local v5    # "mtd":Ljava/lang/reflect/Method;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 335
    .end local v1    # "arr$":[Ljava/lang/reflect/Method;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 336
    sget-object v6, Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;->EMPTY_ARRAY:[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;

    .line 340
    :goto_2
    invoke-direct {p0, p1, p2, p3, v6}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->cacheMethods(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/lang/Class;[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;)V

    .line 343
    .end local v2    # "cls0":Ljava/lang/Class;
    .end local v7    # "mtdsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;>;"
    :cond_3
    return-object v6

    .line 338
    .restart local v2    # "cls0":Ljava/lang/Class;
    .restart local v7    # "mtdsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;>;"
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "mtds":[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;
    check-cast v6, [Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;

    .restart local v6    # "mtds":[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;
    goto :goto_2
.end method

.method inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z
    .locals 7
    .param p1, "target"    # Ljava/lang/Object;
    .param p3, "injector"    # Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;
    .param p4, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
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
    .line 110
    .local p2, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p5, "depCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 111
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 112
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 114
    :cond_2
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->isAnnotationPresent(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    new-instance v6, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;

    invoke-direct {v6}, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->injectInternal(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/util/Set;)Z

    move-result v0

    .line 118
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAnnotationPresent(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)Z
    .locals 7
    .param p1, "target"    # Ljava/lang/Object;
    .param p3, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 217
    sget-boolean v6, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 218
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    if-nez p2, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 220
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 222
    .local v3, "targetCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->skipCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 224
    .local v2, "skipClss":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 242
    :goto_0
    return v4

    .line 227
    :cond_2
    invoke-direct {p0, p3, v3, p2}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->getFieldsWithAnnotation(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/lang/Class;)[Lorg/apache/ignite/internal/processors/resource/GridResourceField;

    move-result-object v0

    .line 229
    .local v0, "fields":[Lorg/apache/ignite/internal/processors/resource/GridResourceField;
    array-length v6, v0

    if-lez v6, :cond_3

    move v4, v5

    .line 230
    goto :goto_0

    .line 232
    :cond_3
    invoke-virtual {p0, p3, v3, p2}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->getMethodsWithAnnotation(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/lang/Class;)[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;

    move-result-object v1

    .line 234
    .local v1, "mtds":[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;
    array-length v6, v1

    if-lez v6, :cond_4

    move v4, v5

    .line 235
    goto :goto_0

    .line 237
    :cond_4
    if-nez v2, :cond_5

    .line 238
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->skipCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->newCSet()Lorg/apache/ignite/lang/IgniteCallable;

    move-result-object v6

    invoke-static {v5, p2, v6}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "skipClss":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    check-cast v2, Ljava/util/Set;

    .line 240
    .restart local v2    # "skipClss":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    :cond_5
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method isCached(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->isCached(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isCached(Ljava/lang/String;)Z
    .locals 4
    .param p1, "clsName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 298
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 299
    .local v0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    .end local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v2

    .line 303
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->mtdCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 304
    .restart local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 308
    .end local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method onUndeployed(Ljava/lang/ClassLoader;)V
    .locals 6
    .param p1, "ldr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 64
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->taskMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 66
    .local v1, "clss":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    if-eqz v1, :cond_2

    .line 67
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 68
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->mtdCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 70
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->skipCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 71
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Ljava/util/Set<Ljava/lang/Class<*>;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 73
    .local v4, "skipClss":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    if-eqz v4, :cond_0

    .line 74
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 77
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Ljava/util/Set<Ljava/lang/Class<*>;>;>;"
    .end local v4    # "skipClss":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 78
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->annCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 80
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public printMemoryStats()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   taskMapSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->taskMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   fieldCacheSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   mtdCacheSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->mtdCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   skipCacheSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->skipCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    return-void
.end method

.method undeployAll()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->taskMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 87
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->mtdCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 88
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 89
    return-void
.end method
