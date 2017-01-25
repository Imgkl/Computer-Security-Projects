.class public Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeaderKey;
.super Ljava/lang/Object;
.source "GridCacheSetHeaderKey.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeaderKey;->name:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 68
    if-ne p0, p1, :cond_0

    .line 69
    const/4 v1, 0x1

    .line 76
    :goto_0
    return v1

    .line 71
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 72
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 74
    check-cast v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeaderKey;

    .line 76
    .local v0, "setKey":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeaderKey;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeaderKey;->name:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeaderKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeaderKey;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeaderKey;->name:Ljava/lang/String;

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
    .line 63
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeaderKey;->name:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeaderKey;

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
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeaderKey;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 59
    return-void
.end method
