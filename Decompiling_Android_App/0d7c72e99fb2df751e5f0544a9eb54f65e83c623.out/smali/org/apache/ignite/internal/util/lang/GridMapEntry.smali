.class public Lorg/apache/ignite/internal/util/lang/GridMapEntry;
.super Ljava/lang/Object;
.source "GridMapEntry.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private val:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridMapEntry;, "Lorg/apache/ignite/internal/util/lang/GridMapEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridMapEntry;->key:Ljava/lang/Object;

    .line 48
    iput-object p2, p0, Lorg/apache/ignite/internal/util/lang/GridMapEntry;->val:Ljava/lang/Object;

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridMapEntry;, "Lorg/apache/ignite/internal/util/lang/GridMapEntry<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    if-ne p0, p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v1

    .line 75
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 76
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 78
    check-cast v0, Lorg/apache/ignite/internal/util/lang/GridMapEntry;

    .line 80
    .local v0, "e":Lorg/apache/ignite/internal/util/lang/GridMapEntry;
    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridMapEntry;->key:Ljava/lang/Object;

    iget-object v4, v0, Lorg/apache/ignite/internal/util/lang/GridMapEntry;->key:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridMapEntry;->val:Ljava/lang/Object;

    iget-object v4, v0, Lorg/apache/ignite/internal/util/lang/GridMapEntry;->val:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridMapEntry;, "Lorg/apache/ignite/internal/util/lang/GridMapEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridMapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridMapEntry;, "Lorg/apache/ignite/internal/util/lang/GridMapEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridMapEntry;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridMapEntry;, "Lorg/apache/ignite/internal/util/lang/GridMapEntry<TK;TV;>;"
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridMapEntry;->key:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridMapEntry;->val:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridMapEntry;->val:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridMapEntry;, "Lorg/apache/ignite/internal/util/lang/GridMapEntry<TK;TV;>;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridMapEntry;->val:Ljava/lang/Object;

    .line 65
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridMapEntry;->val:Ljava/lang/Object;

    .line 67
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridMapEntry;, "Lorg/apache/ignite/internal/util/lang/GridMapEntry<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/util/lang/GridMapEntry;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
