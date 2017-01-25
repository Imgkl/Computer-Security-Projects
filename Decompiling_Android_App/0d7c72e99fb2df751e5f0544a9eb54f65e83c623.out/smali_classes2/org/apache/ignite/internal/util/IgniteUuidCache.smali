.class public final Lorg/apache/ignite/internal/util/IgniteUuidCache;
.super Ljava/lang/Object;
.source "IgniteUuidCache.java"


# static fields
.field private static final MAX:I = 0x400

.field private static final cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x400

    .line 31
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/16 v2, 0x40

    invoke-direct {v0, v3, v3, v1, v2}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;-><init>(IIFI)V

    sput-object v0, Lorg/apache/ignite/internal/util/IgniteUuidCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static onIgniteUuidRead(Ljava/util/UUID;)Ljava/util/UUID;
    .locals 3
    .param p0, "id"    # Ljava/util/UUID;

    .prologue
    .line 41
    sget-object v2, Lorg/apache/ignite/internal/util/IgniteUuidCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 43
    .local v0, "cached":Ljava/util/UUID;
    if-nez v0, :cond_0

    .line 44
    sget-object v2, Lorg/apache/ignite/internal/util/IgniteUuidCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    move-object v0, p0

    invoke-interface {v2, p0, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 46
    .local v1, "old":Ljava/util/UUID;
    if-eqz v1, :cond_0

    .line 47
    move-object v0, v1

    .line 50
    .end local v1    # "old":Ljava/util/UUID;
    :cond_0
    return-object v0
.end method
