.class public Lorg/apache/ignite/internal/util/GridLeanIdentitySet;
.super Ljava/util/AbstractSet;
.source "GridLeanIdentitySet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MAX_ARR_SIZE:I = 0x8


# instance fields
.field private data:Ljava/lang/Object;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanIdentitySet;, "Lorg/apache/ignite/internal/util/GridLeanIdentitySet<TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanIdentitySet;, "Lorg/apache/ignite/internal/util/GridLeanIdentitySet<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v7, 0x1

    .line 59
    iget v6, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->size:I

    if-le v6, v9, :cond_1

    .line 60
    iget-object v6, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->data:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 61
    iget v6, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->size:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->size:I

    move v6, v7

    .line 99
    :goto_0
    return v6

    :cond_0
    move v6, v8

    .line 66
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v8

    .line 70
    goto :goto_0

    .line 72
    :cond_2
    iget v6, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->size:I

    if-nez v6, :cond_4

    .line 73
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->data:Ljava/lang/Object;

    .line 97
    :cond_3
    :goto_1
    iget v6, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->size:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->size:I

    move v6, v7

    .line 99
    goto :goto_0

    .line 74
    :cond_4
    iget v6, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->size:I

    if-ne v6, v7, :cond_5

    .line 75
    new-array v0, v9, [Ljava/lang/Object;

    .line 77
    .local v0, "arr":[Ljava/lang/Object;
    iget-object v6, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->data:Ljava/lang/Object;

    aput-object v6, v0, v8

    .line 78
    aput-object p1, v0, v7

    .line 80
    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->data:Ljava/lang/Object;

    goto :goto_1

    .line 82
    .end local v0    # "arr":[Ljava/lang/Object;
    :cond_5
    iget v6, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->size:I

    if-ge v6, v9, :cond_6

    .line 83
    iget-object v6, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->data:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    iget v8, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->size:I

    aput-object p1, v6, v8

    goto :goto_1

    .line 84
    :cond_6
    iget v6, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->size:I

    if-ne v6, v9, :cond_3

    .line 85
    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    .line 87
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->data:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    move-object v1, v6

    check-cast v1, [Ljava/lang/Object;

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_7

    aget-object v5, v1, v2

    .line 88
    .local v5, "o":Ljava/lang/Object;
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 90
    .end local v5    # "o":Ljava/lang/Object;
    :cond_7
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-boolean v6, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->$assertionsDisabled:Z

    if-nez v6, :cond_8

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    iget v8, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->size:I

    add-int/lit8 v8, v8, 0x1

    if-eq v6, v8, :cond_8

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 94
    :cond_8
    iput-object v4, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->data:Ljava/lang/Object;

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanIdentitySet;, "Lorg/apache/ignite/internal/util/GridLeanIdentitySet<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->data:Ljava/lang/Object;

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->size:I

    .line 106
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanIdentitySet;, "Lorg/apache/ignite/internal/util/GridLeanIdentitySet<TT;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 37
    iget v2, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->size:I

    if-nez v2, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v4

    .line 40
    :cond_1
    iget v2, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->size:I

    if-ne v2, v3, :cond_3

    .line 41
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->data:Ljava/lang/Object;

    if-ne p1, v2, :cond_2

    move v2, v3

    :goto_1
    move v4, v2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    .line 43
    :cond_3
    iget v2, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->size:I

    const/16 v5, 0x8

    if-gt v2, v5, :cond_5

    .line 44
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->data:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 46
    .local v0, "arr":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->size:I

    if-ge v1, v2, :cond_0

    .line 47
    aget-object v2, v0, v1

    if-ne v2, p1, :cond_4

    move v4, v3

    .line 48
    goto :goto_0

    .line 46
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 54
    .end local v0    # "arr":[Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_5
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->data:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanIdentitySet;, "Lorg/apache/ignite/internal/util/GridLeanIdentitySet<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 115
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanIdentitySet;, "Lorg/apache/ignite/internal/util/GridLeanIdentitySet<TT;>;"
    iget v0, p0, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;->size:I

    return v0
.end method
