.class public Lorg/apache/ignite/internal/util/GridEnumCache;
.super Ljava/lang/Object;
.source "GridEnumCache.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ENUM_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/apache/ignite/internal/util/GridEnumCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridEnumCache;->$assertionsDisabled:Z

    .line 29
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/GridEnumCache;->ENUM_CACHE:Ljava/util/concurrent/ConcurrentMap;

    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/apache/ignite/internal/util/GridEnumCache;->ENUM_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 56
    return-void
.end method

.method public static get(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v1, Lorg/apache/ignite/internal/util/GridEnumCache;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 40
    :cond_0
    sget-object v1, Lorg/apache/ignite/internal/util/GridEnumCache;->ENUM_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 42
    .local v0, "vals":[Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 43
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    .line 45
    sget-object v1, Lorg/apache/ignite/internal/util/GridEnumCache;->ENUM_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_1
    return-object v0
.end method
