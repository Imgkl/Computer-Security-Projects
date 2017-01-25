.class final Lorg/apache/ignite/internal/util/GridCollections$LockedSet;
.super Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;
.source "GridCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LockedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/GridCollections$LockedCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedSet;, "Lorg/apache/ignite/internal/util/GridCollections$LockedSet<TE;>;"
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;-><init>(Ljava/util/Collection;Lorg/apache/ignite/internal/util/GridCollections$1;)V

    .line 295
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Lorg/apache/ignite/internal/util/GridCollections$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Set;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/GridCollections$1;

    .prologue
    .line 285
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedSet;, "Lorg/apache/ignite/internal/util/GridCollections$LockedSet<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/GridCollections$LockedSet;-><init>(Ljava/util/Set;)V

    return-void
.end method
