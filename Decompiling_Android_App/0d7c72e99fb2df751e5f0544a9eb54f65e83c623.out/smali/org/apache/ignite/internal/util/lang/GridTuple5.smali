.class public Lorg/apache/ignite/internal/util/lang/GridTuple5;
.super Ljava/lang/Object;
.source "GridTuple5.java"

# interfaces
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
        "V3:",
        "Ljava/lang/Object;",
        "V4:",
        "Ljava/lang/Object;",
        "V5:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
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
.field private v1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV1;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private v2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV2;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private v3:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV3;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private v4:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV4;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private v5:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV5;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple5;, "Lorg/apache/ignite/internal/util/lang/GridTuple5<TV1;TV2;TV3;TV4;TV5;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;TV2;TV3;TV4;TV5;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple5;, "Lorg/apache/ignite/internal/util/lang/GridTuple5<TV1;TV2;TV3;TV4;TV5;>;"
    .local p1, "v1":Ljava/lang/Object;, "TV1;"
    .local p2, "v2":Ljava/lang/Object;, "TV2;"
    .local p3, "v3":Ljava/lang/Object;, "TV3;"
    .local p4, "v4":Ljava/lang/Object;, "TV4;"
    .local p5, "v5":Ljava/lang/Object;, "TV5;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v1:Ljava/lang/Object;

    .line 79
    iput-object p2, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v2:Ljava/lang/Object;

    .line 80
    iput-object p3, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v3:Ljava/lang/Object;

    .line 81
    iput-object p4, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v4:Ljava/lang/Object;

    .line 82
    iput-object p5, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v5:Ljava/lang/Object;

    .line 83
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 233
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple5;, "Lorg/apache/ignite/internal/util/lang/GridTuple5<TV1;TV2;TV3;TV4;TV5;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "ignore":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple5;, "Lorg/apache/ignite/internal/util/lang/GridTuple5<TV1;TV2;TV3;TV4;TV5;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 261
    if-ne p0, p1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v1

    .line 264
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/internal/util/lang/GridTuple5;

    if-nez v3, :cond_2

    move v1, v2

    .line 265
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 267
    check-cast v0, Lorg/apache/ignite/internal/util/lang/GridTuple5;

    .line 269
    .local v0, "t":Lorg/apache/ignite/internal/util/lang/GridTuple5;, "Lorg/apache/ignite/internal/util/lang/GridTuple5<*****>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v1:Ljava/lang/Object;

    iget-object v4, v0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v1:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v2:Ljava/lang/Object;

    iget-object v4, v0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v2:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v3:Ljava/lang/Object;

    iget-object v4, v0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v3:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v4:Ljava/lang/Object;

    iget-object v4, v0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v4:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v5:Ljava/lang/Object;

    iget-object v4, v0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v5:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public get1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV1;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple5;, "Lorg/apache/ignite/internal/util/lang/GridTuple5<TV1;TV2;TV3;TV4;TV5;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v1:Ljava/lang/Object;

    return-object v0
.end method

.method public get2()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV2;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple5;, "Lorg/apache/ignite/internal/util/lang/GridTuple5<TV1;TV2;TV3;TV4;TV5;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v2:Ljava/lang/Object;

    return-object v0
.end method

.method public get3()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV3;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple5;, "Lorg/apache/ignite/internal/util/lang/GridTuple5<TV1;TV2;TV3;TV4;TV5;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v3:Ljava/lang/Object;

    return-object v0
.end method

.method public get4()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV4;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple5;, "Lorg/apache/ignite/internal/util/lang/GridTuple5<TV1;TV2;TV3;TV4;TV5;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v4:Ljava/lang/Object;

    return-object v0
.end method

.method public get5()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV5;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple5;, "Lorg/apache/ignite/internal/util/lang/GridTuple5<TV1;TV2;TV3;TV4;TV5;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v5:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple5;, "Lorg/apache/ignite/internal/util/lang/GridTuple5<TV1;TV2;TV3;TV4;TV5;>;"
    const/4 v1, 0x0

    .line 274
    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v1:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v1:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 276
    .local v0, "res":I
    :goto_0
    mul-int/lit8 v3, v0, 0xd

    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v2:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v2:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 277
    mul-int/lit8 v3, v0, 0x11

    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v3:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v3:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 278
    mul-int/lit8 v3, v0, 0x13

    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v4:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v4:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 279
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v5:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v5:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 281
    return v0

    .end local v0    # "res":I
    :cond_1
    move v0, v1

    .line 274
    goto :goto_0

    .restart local v0    # "res":I
    :cond_2
    move v2, v1

    .line 276
    goto :goto_1

    :cond_3
    move v2, v1

    .line 277
    goto :goto_2

    :cond_4
    move v2, v1

    .line 278
    goto :goto_3
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
    .line 194
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple5;, "Lorg/apache/ignite/internal/util/lang/GridTuple5<TV1;TV2;TV3;TV4;TV5;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridTuple5$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridTuple5$1;-><init>(Lorg/apache/ignite/internal/util/lang/GridTuple5;)V

    return-object v0
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
    .line 252
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple5;, "Lorg/apache/ignite/internal/util/lang/GridTuple5<TV1;TV2;TV3;TV4;TV5;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v1:Ljava/lang/Object;

    .line 253
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v2:Ljava/lang/Object;

    .line 254
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v3:Ljava/lang/Object;

    .line 255
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v4:Ljava/lang/Object;

    .line 256
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v5:Ljava/lang/Object;

    .line 257
    return-void
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;TV2;TV3;TV4;TV5;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple5;, "Lorg/apache/ignite/internal/util/lang/GridTuple5<TV1;TV2;TV3;TV4;TV5;>;"
    .local p1, "val1":Ljava/lang/Object;, "TV1;"
    .local p2, "val2":Ljava/lang/Object;, "TV2;"
    .local p3, "val3":Ljava/lang/Object;, "TV3;"
    .local p4, "val4":Ljava/lang/Object;, "TV4;"
    .local p5, "val5":Ljava/lang/Object;, "TV5;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridTuple5;->set1(Ljava/lang/Object;)V

    .line 186
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/util/lang/GridTuple5;->set2(Ljava/lang/Object;)V

    .line 187
    invoke-virtual {p0, p3}, Lorg/apache/ignite/internal/util/lang/GridTuple5;->set3(Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p0, p4}, Lorg/apache/ignite/internal/util/lang/GridTuple5;->set4(Ljava/lang/Object;)V

    .line 189
    invoke-virtual {p0, p5}, Lorg/apache/ignite/internal/util/lang/GridTuple5;->set5(Ljava/lang/Object;)V

    .line 190
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
    .line 136
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple5;, "Lorg/apache/ignite/internal/util/lang/GridTuple5<TV1;TV2;TV3;TV4;TV5;>;"
    .local p1, "v1":Ljava/lang/Object;, "TV1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v1:Ljava/lang/Object;

    .line 137
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
    .line 145
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple5;, "Lorg/apache/ignite/internal/util/lang/GridTuple5<TV1;TV2;TV3;TV4;TV5;>;"
    .local p1, "v2":Ljava/lang/Object;, "TV2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v2:Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public set3(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV3;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple5;, "Lorg/apache/ignite/internal/util/lang/GridTuple5<TV1;TV2;TV3;TV4;TV5;>;"
    .local p1, "v3":Ljava/lang/Object;, "TV3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v3:Ljava/lang/Object;

    .line 155
    return-void
.end method

.method public set4(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV4;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple5;, "Lorg/apache/ignite/internal/util/lang/GridTuple5<TV1;TV2;TV3;TV4;TV5;>;"
    .local p1, "v4":Ljava/lang/Object;, "TV4;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v4:Ljava/lang/Object;

    .line 164
    return-void
.end method

.method public set5(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV5;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple5;, "Lorg/apache/ignite/internal/util/lang/GridTuple5<TV1;TV2;TV3;TV4;TV5;>;"
    .local p1, "v5":Ljava/lang/Object;, "TV5;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v5:Ljava/lang/Object;

    .line 173
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple5;, "Lorg/apache/ignite/internal/util/lang/GridTuple5<TV1;TV2;TV3;TV4;TV5;>;"
    const-class v0, Lorg/apache/ignite/internal/util/lang/GridTuple5;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

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
    .line 242
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple5;, "Lorg/apache/ignite/internal/util/lang/GridTuple5<TV1;TV2;TV3;TV4;TV5;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v1:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v2:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v3:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v4:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple5;->v5:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 247
    return-void
.end method
