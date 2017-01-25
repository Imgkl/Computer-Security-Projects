.class public Lorg/apache/ignite/internal/util/lang/GridTuple4;
.super Ljava/lang/Object;
.source "GridTuple4.java"

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

.field private val3:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV3;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private val4:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV4;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple4;, "Lorg/apache/ignite/internal/util/lang/GridTuple4<TV1;TV2;TV3;TV4;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;TV2;TV3;TV4;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple4;, "Lorg/apache/ignite/internal/util/lang/GridTuple4<TV1;TV2;TV3;TV4;>;"
    .local p1, "val1":Ljava/lang/Object;, "TV1;"
    .local p2, "val2":Ljava/lang/Object;, "TV2;"
    .local p3, "val3":Ljava/lang/Object;, "TV3;"
    .local p4, "val4":Ljava/lang/Object;, "TV4;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val1:Ljava/lang/Object;

    .line 74
    iput-object p2, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val2:Ljava/lang/Object;

    .line 75
    iput-object p3, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val3:Ljava/lang/Object;

    .line 76
    iput-object p4, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val4:Ljava/lang/Object;

    .line 77
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 205
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple4;, "Lorg/apache/ignite/internal/util/lang/GridTuple4<TV1;TV2;TV3;TV4;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "ignore":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple4;, "Lorg/apache/ignite/internal/util/lang/GridTuple4<TV1;TV2;TV3;TV4;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    if-ne p0, p1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v1

    .line 234
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/internal/util/lang/GridTuple4;

    if-nez v3, :cond_2

    move v1, v2

    .line 235
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 237
    check-cast v0, Lorg/apache/ignite/internal/util/lang/GridTuple4;

    .line 239
    .local v0, "t":Lorg/apache/ignite/internal/util/lang/GridTuple4;, "Lorg/apache/ignite/internal/util/lang/GridTuple4<****>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val1:Ljava/lang/Object;

    iget-object v4, v0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val2:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val2:Ljava/lang/Object;

    iget-object v4, v0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val2:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val3:Ljava/lang/Object;

    iget-object v4, v0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val3:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val4:Ljava/lang/Object;

    iget-object v4, v0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val4:Ljava/lang/Object;

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
    .line 85
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple4;, "Lorg/apache/ignite/internal/util/lang/GridTuple4<TV1;TV2;TV3;TV4;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val1:Ljava/lang/Object;

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
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple4;, "Lorg/apache/ignite/internal/util/lang/GridTuple4<TV1;TV2;TV3;TV4;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val2:Ljava/lang/Object;

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
    .line 103
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple4;, "Lorg/apache/ignite/internal/util/lang/GridTuple4<TV1;TV2;TV3;TV4;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val3:Ljava/lang/Object;

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
    .line 112
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple4;, "Lorg/apache/ignite/internal/util/lang/GridTuple4<TV1;TV2;TV3;TV4;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val4:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple4;, "Lorg/apache/ignite/internal/util/lang/GridTuple4<TV1;TV2;TV3;TV4;>;"
    const/4 v1, 0x0

    .line 244
    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val1:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val1:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 246
    .local v0, "res":I
    :goto_0
    mul-int/lit8 v3, v0, 0xd

    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val2:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val2:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 247
    mul-int/lit8 v3, v0, 0x11

    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val3:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val3:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 248
    mul-int/lit8 v2, v0, 0x13

    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val4:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val4:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 250
    return v0

    .end local v0    # "res":I
    :cond_1
    move v0, v1

    .line 244
    goto :goto_0

    .restart local v0    # "res":I
    :cond_2
    move v2, v1

    .line 246
    goto :goto_1

    :cond_3
    move v2, v1

    .line 247
    goto :goto_2
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
    .line 168
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple4;, "Lorg/apache/ignite/internal/util/lang/GridTuple4<TV1;TV2;TV3;TV4;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridTuple4$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridTuple4$1;-><init>(Lorg/apache/ignite/internal/util/lang/GridTuple4;)V

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
    .line 223
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple4;, "Lorg/apache/ignite/internal/util/lang/GridTuple4<TV1;TV2;TV3;TV4;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val1:Ljava/lang/Object;

    .line 224
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val2:Ljava/lang/Object;

    .line 225
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val3:Ljava/lang/Object;

    .line 226
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val4:Ljava/lang/Object;

    .line 227
    return-void
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;TV2;TV3;TV4;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple4;, "Lorg/apache/ignite/internal/util/lang/GridTuple4<TV1;TV2;TV3;TV4;>;"
    .local p1, "val1":Ljava/lang/Object;, "TV1;"
    .local p2, "val2":Ljava/lang/Object;, "TV2;"
    .local p3, "val3":Ljava/lang/Object;, "TV3;"
    .local p4, "val4":Ljava/lang/Object;, "TV4;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridTuple4;->set1(Ljava/lang/Object;)V

    .line 161
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/util/lang/GridTuple4;->set2(Ljava/lang/Object;)V

    .line 162
    invoke-virtual {p0, p3}, Lorg/apache/ignite/internal/util/lang/GridTuple4;->set3(Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p0, p4}, Lorg/apache/ignite/internal/util/lang/GridTuple4;->set4(Ljava/lang/Object;)V

    .line 164
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
    .line 121
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple4;, "Lorg/apache/ignite/internal/util/lang/GridTuple4<TV1;TV2;TV3;TV4;>;"
    .local p1, "val1":Ljava/lang/Object;, "TV1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val1:Ljava/lang/Object;

    .line 122
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
    .line 130
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple4;, "Lorg/apache/ignite/internal/util/lang/GridTuple4<TV1;TV2;TV3;TV4;>;"
    .local p1, "val2":Ljava/lang/Object;, "TV2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val2:Ljava/lang/Object;

    .line 131
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
    .line 139
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple4;, "Lorg/apache/ignite/internal/util/lang/GridTuple4<TV1;TV2;TV3;TV4;>;"
    .local p1, "val3":Ljava/lang/Object;, "TV3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val3:Ljava/lang/Object;

    .line 140
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
    .line 148
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple4;, "Lorg/apache/ignite/internal/util/lang/GridTuple4<TV1;TV2;TV3;TV4;>;"
    .local p1, "val4":Ljava/lang/Object;, "TV4;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val4:Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple4;, "Lorg/apache/ignite/internal/util/lang/GridTuple4<TV1;TV2;TV3;TV4;>;"
    const-class v0, Lorg/apache/ignite/internal/util/lang/GridTuple4;

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
    .line 214
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple4;, "Lorg/apache/ignite/internal/util/lang/GridTuple4<TV1;TV2;TV3;TV4;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val1:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val2:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val3:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple4;->val4:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 218
    return-void
.end method
