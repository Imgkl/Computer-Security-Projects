.class public Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;
.super Lorg/apache/ignite/internal/util/GridSerializableSet;
.source "GridBoundedLinkedHashSet.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/GridSerializableSet",
        "<TE;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FAKE:Ljava/lang/Object;

.field private static final serialVersionUID:J


# instance fields
.field private transient map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TE;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->$assertionsDisabled:Z

    .line 45
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->FAKE:Ljava/lang/Object;

    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxCap"    # I

    .prologue
    .line 57
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet<TE;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableSet;-><init>()V

    .line 58
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->map:Ljava/util/HashMap;

    .line 61
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "initCap"    # I
    .param p2, "maxCap"    # I

    .prologue
    .line 117
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet<TE;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableSet;-><init>()V

    .line 118
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gtz p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 120
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;

    invoke-direct {v0, p1, p2}, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;-><init>(II)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->map:Ljava/util/HashMap;

    .line 121
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .param p1, "initCap"    # I
    .param p2, "maxCap"    # I
    .param p3, "loadFactor"    # F

    .prologue
    .line 88
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet<TE;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableSet;-><init>()V

    .line 89
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gtz p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 91
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;-><init>(IIF)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->map:Ljava/util/HashMap;

    .line 92
    return-void
.end method

.method public constructor <init>(IIFZ)V
    .locals 1
    .param p1, "initCap"    # I
    .param p2, "maxCap"    # I
    .param p3, "loadFactor"    # F
    .param p4, "accessOrder"    # Z

    .prologue
    .line 103
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet<TE;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableSet;-><init>()V

    .line 104
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gtz p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 106
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;-><init>(IIFZ)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->map:Ljava/util/HashMap;

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;I)V
    .locals 3
    .param p2, "maxCap"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;I)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableSet;-><init>()V

    .line 73
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gtz p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 75
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1, p2}, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;-><init>(II)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->map:Ljava/util/HashMap;

    .line 77
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 78
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
    .line 171
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->map:Ljava/util/HashMap;

    sget-object v1, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->FAKE:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 189
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 190
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet<TE;>;"
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;

    .line 203
    .local v0, "newSet":Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet<TE;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->map:Ljava/util/HashMap;

    .line 205
    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 160
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 149
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

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
    .line 131
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 182
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->FAKE:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

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
    .line 140
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
