.class public Lorg/apache/ignite/lang/IgniteBiTuple;
.super Ljava/lang/Object;
.source "IgniteBiTuple.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Iterable;
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TV1;TV2;>;",
        "Ljava/util/Map$Entry",
        "<TV1;TV2;>;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Externalizable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private val1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV1;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private val2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV2;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;TV2;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    .local p1, "val1":Ljava/lang/Object;, "TV1;"
    .local p2, "val2":Ljava/lang/Object;, "TV2;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val1:Ljava/lang/Object;

    .line 59
    iput-object p2, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val2:Ljava/lang/Object;

    .line 60
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val1:Ljava/lang/Object;

    .line 230
    iput-object v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val2:Ljava/lang/Object;

    .line 231
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 252
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "ignore":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 181
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val1:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 186
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val2:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TV1;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 280
    if-ne p0, p1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v1

    .line 283
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/lang/IgniteBiTuple;

    if-nez v3, :cond_2

    move v1, v2

    .line 284
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 286
    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 289
    .local v0, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<**>;"
    iget-object v3, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val1:Ljava/lang/Object;

    iget-object v4, v0, Lorg/apache/ignite/lang/IgniteBiTuple;->val1:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val2:Ljava/lang/Object;

    iget-object v4, v0, Lorg/apache/ignite/lang/IgniteBiTuple;->val2:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val2:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV1;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val1:Ljava/lang/Object;

    return-object v0
.end method

.method public get2()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV2;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val2:Ljava/lang/Object;

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV1;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val1:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV2;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val2:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    const/4 v0, 0x0

    .line 274
    iget-object v1, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val1:Ljava/lang/Object;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val1:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val2:Ljava/lang/Object;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val2:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 176
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/lang/IgniteBiTuple;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    new-instance v0, Lorg/apache/ignite/lang/IgniteBiTuple$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/lang/IgniteBiTuple$1;-><init>(Lorg/apache/ignite/lang/IgniteBiTuple;)V

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV1;>;"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val1:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;TV2;)TV2;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    .local p1, "key":Ljava/lang/Object;, "TV1;"
    .local p2, "val":Ljava/lang/Object;, "TV2;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val2:Ljava/lang/Object;

    .line 199
    .local v0, "old":Ljava/lang/Object;, "TV2;"
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/lang/IgniteBiTuple;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    return-object v0

    .line 197
    .end local v0    # "old":Ljava/lang/Object;, "TV2;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TV1;+TV2;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TV1;+TV2;>;"
    const/4 v2, 0x1

    .line 220
    const-string v3, "m"

    invoke-static {p1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-gt v3, v2, :cond_0

    :goto_0
    const-string v3, "m.size() <= 1"

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 223
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 224
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TV1;+TV2;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 221
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TV1;+TV2;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 225
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
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
    .line 268
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val1:Ljava/lang/Object;

    .line 269
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val2:Ljava/lang/Object;

    .line 270
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    const/4 v1, 0x0

    .line 206
    invoke-virtual {p0, p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val2:Ljava/lang/Object;

    .line 209
    .local v0, "v2":Ljava/lang/Object;, "TV2;"
    iput-object v1, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val1:Ljava/lang/Object;

    .line 210
    iput-object v1, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val2:Ljava/lang/Object;

    .line 215
    .end local v0    # "v2":Ljava/lang/Object;, "TV2;"
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;TV2;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    .local p1, "val1":Ljava/lang/Object;, "TV1;"
    .local p2, "val2":Ljava/lang/Object;, "TV2;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set1(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0, p2}, Lorg/apache/ignite/lang/IgniteBiTuple;->set2(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public set1(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    .local p1, "val1":Ljava/lang/Object;, "TV1;"
    iput-object p1, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val1:Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public set2(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV2;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    .local p1, "val2":Ljava/lang/Object;, "TV2;"
    iput-object p1, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val2:Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV2;)TV2;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    .local p1, "val":Ljava/lang/Object;, "TV2;"
    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val2:Ljava/lang/Object;

    .line 132
    .local v0, "old":Ljava/lang/Object;, "TV2;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set2(Ljava/lang/Object;)V

    .line 134
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val1:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val2:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public swap()Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TV2;TV1;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val2:Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val1:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    const-class v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV2;>;"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val2:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

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
    .line 261
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TV1;TV2;>;"
    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val1:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple;->val2:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 263
    return-void
.end method
