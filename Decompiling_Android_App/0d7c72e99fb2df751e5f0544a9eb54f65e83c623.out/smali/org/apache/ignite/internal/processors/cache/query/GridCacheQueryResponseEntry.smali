.class public Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;
.super Ljava/lang/Object;
.source "GridCacheQueryResponseEntry.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/io/Externalizable;


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
        "Ljava/io/Externalizable;"
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;->key:Ljava/lang/Object;

    .line 54
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;->val:Ljava/lang/Object;

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 93
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry<TK;TV;>;"
    if-ne p0, p1, :cond_0

    .line 94
    const/4 v1, 0x1

    .line 101
    :goto_0
    return v1

    .line 96
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 97
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 99
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;

    .line 101
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;->key:Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

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
    .line 59
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;->key:Ljava/lang/Object;

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
    .line 66
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry<TK;TV;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;->key:Ljava/lang/Object;

    .line 88
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;->val:Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry<TK;TV;>;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;->val:Ljava/lang/Object;

    .line 75
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;->val:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;->key:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;->val:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 82
    return-void
.end method
