.class public Lorg/apache/ignite/internal/util/GridSetWrapper;
.super Lorg/apache/ignite/internal/util/GridSerializableSet;
.source "GridSetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/GridSerializableSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final VAL:Ljava/lang/Object;

.field private static final serialVersionUID:J


# instance fields
.field protected map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TE;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lorg/apache/ignite/internal/util/GridSetWrapper;->VAL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;*>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSetWrapper;, "Lorg/apache/ignite/internal/util/GridSetWrapper<TE;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TE;*>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableSet;-><init>()V

    .line 46
    const-string v0, "map"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridSetWrapper;->map:Ljava/util/Map;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;*>;",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSetWrapper;, "Lorg/apache/ignite/internal/util/GridSetWrapper<TE;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TE;*>;"
    .local p2, "initVals":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/GridSetWrapper;-><init>(Ljava/util/Map;)V

    .line 61
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/util/GridSetWrapper;->addAll(Ljava/util/Collection;)Z

    .line 62
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSetWrapper;, "Lorg/apache/ignite/internal/util/GridSetWrapper<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSetWrapper;->map:Ljava/util/Map;

    sget-object v1, Lorg/apache/ignite/internal/util/GridSetWrapper;->VAL:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSetWrapper;, "Lorg/apache/ignite/internal/util/GridSetWrapper<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSetWrapper;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 130
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 108
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSetWrapper;, "Lorg/apache/ignite/internal/util/GridSetWrapper<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSetWrapper;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final defaultValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSetWrapper;, "Lorg/apache/ignite/internal/util/GridSetWrapper<TE;>;"
    sget-object v0, Lorg/apache/ignite/internal/util/GridSetWrapper;->VAL:Ljava/lang/Object;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 102
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSetWrapper;, "Lorg/apache/ignite/internal/util/GridSetWrapper<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSetWrapper;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSetWrapper;, "Lorg/apache/ignite/internal/util/GridSetWrapper<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSetWrapper;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected final map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/lang/Object;",
            ">;>()TT;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSetWrapper;, "Lorg/apache/ignite/internal/util/GridSetWrapper<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSetWrapper;->map:Ljava/util/Map;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 124
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSetWrapper;, "Lorg/apache/ignite/internal/util/GridSetWrapper<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSetWrapper;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSetWrapper;, "Lorg/apache/ignite/internal/util/GridSetWrapper<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSetWrapper;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSetWrapper;, "Lorg/apache/ignite/internal/util/GridSetWrapper<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSetWrapper;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSetWrapper;, "Lorg/apache/ignite/internal/util/GridSetWrapper<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSetWrapper;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSetWrapper;, "Lorg/apache/ignite/internal/util/GridSetWrapper<TE;>;"
    const-class v0, Lorg/apache/ignite/internal/util/GridSetWrapper;

    const-string v1, "elements"

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridSetWrapper;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
