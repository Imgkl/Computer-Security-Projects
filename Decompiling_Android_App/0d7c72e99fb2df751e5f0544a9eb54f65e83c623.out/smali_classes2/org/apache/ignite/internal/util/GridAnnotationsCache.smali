.class public final Lorg/apache/ignite/internal/util/GridAnnotationsCache;
.super Ljava/lang/Object;
.source "GridAnnotationsCache.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final anns:Ljava/util/concurrent/ConcurrentMap;
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
            ">;",
            "Lorg/apache/ignite/internal/util/lang/GridTuple",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/ignite/internal/util/GridAnnotationsCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridAnnotationsCache;->$assertionsDisabled:Z

    .line 35
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/GridAnnotationsCache;->anns:Ljava/util/concurrent/ConcurrentMap;

    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 44
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v3, Lorg/apache/ignite/internal/util/GridAnnotationsCache;->anns:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentMap;

    .line 46
    .local v1, "clsAnns":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Lorg/apache/ignite/internal/util/lang/GridTuple<Ljava/lang/annotation/Annotation;>;>;"
    if-nez v1, :cond_0

    .line 47
    sget-object v3, Lorg/apache/ignite/internal/util/GridAnnotationsCache;->anns:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lorg/jsr166/ConcurrentHashMap8;

    .end local v1    # "clsAnns":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Lorg/apache/ignite/internal/util/lang/GridTuple<Ljava/lang/annotation/Annotation;>;>;"
    invoke-direct {v1}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    .restart local v1    # "clsAnns":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Lorg/apache/ignite/internal/util/lang/GridTuple<Ljava/lang/annotation/Annotation;>;>;"
    invoke-interface {v3, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentMap;

    .line 50
    .local v2, "old":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Lorg/apache/ignite/internal/util/lang/GridTuple<Ljava/lang/annotation/Annotation;>;>;"
    if-eqz v2, :cond_0

    .line 51
    move-object v1, v2

    .line 54
    .end local v2    # "old":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Lorg/apache/ignite/internal/util/lang/GridTuple<Ljava/lang/annotation/Annotation;>;>;"
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/lang/GridTuple;

    .line 56
    .local v0, "ann":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<TT;>;"
    if-nez v0, :cond_1

    .line 57
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v0

    .line 59
    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/annotation/Annotation;

    return-object v3
.end method

.method public static onUndeployed(Ljava/lang/ClassLoader;)V
    .locals 3
    .param p0, "ldr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 70
    sget-boolean v2, Lorg/apache/ignite/internal/util/GridAnnotationsCache;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 72
    :cond_0
    sget-object v2, Lorg/apache/ignite/internal/util/GridAnnotationsCache;->anns:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 73
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    sget-object v2, Lorg/apache/ignite/internal/util/GridAnnotationsCache;->anns:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    return-void
.end method
