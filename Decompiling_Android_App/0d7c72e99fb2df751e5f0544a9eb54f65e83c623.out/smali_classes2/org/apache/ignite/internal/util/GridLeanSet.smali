.class public Lorg/apache/ignite/internal/util/GridLeanSet;
.super Lorg/apache/ignite/internal/util/GridSetWrapper;
.source "GridLeanSet.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/GridSetWrapper",
        "<TE;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanSet;, "Lorg/apache/ignite/internal/util/GridLeanSet<TE;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridSetWrapper;-><init>(Ljava/util/Map;)V

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 49
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanSet;, "Lorg/apache/ignite/internal/util/GridLeanSet<TE;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridSetWrapper;-><init>(Ljava/util/Map;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanSet;, "Lorg/apache/ignite/internal/util/GridLeanSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap;

    sget-object v1, Lorg/apache/ignite/internal/util/GridLeanSet;->VAL:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/F;->zip(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridSetWrapper;-><init>(Ljava/util/Map;)V

    .line 62
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 68
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanSet;, "Lorg/apache/ignite/internal/util/GridLeanSet<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/GridLeanSet;

    .line 70
    .local v0, "clone":Lorg/apache/ignite/internal/util/GridLeanSet;, "Lorg/apache/ignite/internal/util/GridLeanSet<TE;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanSet;->map:Ljava/util/Map;

    check-cast v2, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridLeanMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iput-object v2, v0, Lorg/apache/ignite/internal/util/GridLeanSet;->map:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-object v0

    .line 74
    .end local v0    # "clone":Lorg/apache/ignite/internal/util/GridLeanSet;, "Lorg/apache/ignite/internal/util/GridLeanSet<TE;>;"
    :catch_0
    move-exception v1

    .line 75
    .local v1, "ignore":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanSet;, "Lorg/apache/ignite/internal/util/GridLeanSet<TE;>;"
    const-class v0, Lorg/apache/ignite/internal/util/GridLeanSet;

    const-string v1, "elements"

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanSet;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
