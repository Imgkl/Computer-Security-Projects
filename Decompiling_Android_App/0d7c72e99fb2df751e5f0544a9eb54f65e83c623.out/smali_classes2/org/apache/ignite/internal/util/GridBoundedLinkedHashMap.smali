.class public Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;
.super Ljava/util/LinkedHashMap;
.source "GridBoundedLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private maxCap:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxCap"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;, "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 45
    if-gtz p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum capacity is non-positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput p1, p0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;->maxCap:I

    .line 49
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "initCap"    # I
    .param p2, "maxCap"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;, "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 63
    if-gt p2, p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum capacity is smaller than initial capacity [maxCap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", initCap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iput p2, p0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;->maxCap:I

    .line 68
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 3
    .param p1, "initCap"    # I
    .param p2, "maxCap"    # I
    .param p3, "loadFactor"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;, "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1, p3}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 84
    if-lt p2, p1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum capacity is smaller than initial capacity [maxCap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", initCap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iput p2, p0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;->maxCap:I

    .line 89
    return-void
.end method

.method public constructor <init>(IIFZ)V
    .locals 3
    .param p1, "initCap"    # I
    .param p2, "maxCap"    # I
    .param p3, "loadFactor"    # F
    .param p4, "accessOrder"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;, "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 108
    if-lt p2, p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum capacity is smaller than initial capacity [maxCap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", initCap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iput p2, p0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;->maxCap:I

    .line 113
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 123
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;, "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap<TK;TV;>;"
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;

    .line 125
    .local v0, "m":Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;, "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap<TK;TV;>;"
    iget v1, p0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;->maxCap:I

    iput v1, v0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;->maxCap:I

    .line 127
    return-object v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;, "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;->maxCap:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
