.class public final Lorg/apache/ignite/internal/util/GridCollections;
.super Ljava/lang/Object;
.source "GridCollections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/GridCollections$1;,
        Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;,
        Lorg/apache/ignite/internal/util/GridCollections$LockedList;,
        Lorg/apache/ignite/internal/util/GridCollections$LockedSet;,
        Lorg/apache/ignite/internal/util/GridCollections$LockedMap;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static lockedCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;-><init>(Ljava/util/Collection;Lorg/apache/ignite/internal/util/GridCollections$1;)V

    return-object v0
.end method

.method public static lockedMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;-><init>(Ljava/util/Map;Lorg/apache/ignite/internal/util/GridCollections$1;)V

    return-object v0
.end method

.method public static lockedSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridCollections$LockedSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/util/GridCollections$LockedSet;-><init>(Ljava/util/Set;Lorg/apache/ignite/internal/util/GridCollections$1;)V

    return-object v0
.end method
