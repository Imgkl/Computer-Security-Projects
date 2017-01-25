.class public Lorg/apache/ignite/internal/util/lang/GridTuple;
.super Ljava/lang/Object;
.source "GridTuple.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
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
    .line 47
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<TV;>;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple;->val:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/util/lang/GridTuple;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/lang/GridTuple;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple;->val:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 106
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "ignore":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    if-ne p1, p0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v1

    .line 134
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/internal/util/lang/GridTuple;

    if-nez v3, :cond_2

    move v1, v2

    .line 135
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 137
    check-cast v0, Lorg/apache/ignite/internal/util/lang/GridTuple;

    .line 140
    .local v0, "t":Lorg/apache/ignite/internal/util/lang/GridTuple;
    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridTuple;->val:Ljava/lang/Object;

    if-nez v3, :cond_3

    iget-object v3, v0, Lorg/apache/ignite/internal/util/lang/GridTuple;->val:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple;->val:Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/ignite/internal/util/lang/GridTuple;->val:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 126
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple;->val:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple;->val:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridTuple$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridTuple$1;-><init>(Lorg/apache/ignite/internal/util/lang/GridTuple;)V

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
    .line 121
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<TV;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple;->val:Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<TV;>;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple;->val:Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<TV;>;"
    const-class v0, Lorg/apache/ignite/internal/util/lang/GridTuple;

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
    .line 115
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple;->val:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 116
    return-void
.end method
