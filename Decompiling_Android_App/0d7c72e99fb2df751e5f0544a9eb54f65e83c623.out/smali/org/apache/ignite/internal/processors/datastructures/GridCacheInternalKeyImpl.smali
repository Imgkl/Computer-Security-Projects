.class public Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKeyImpl;
.super Ljava/lang/Object;
.source "GridCacheInternalKeyImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKeyImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKeyImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKeyImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKeyImpl;->name:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 67
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKeyImpl;->name:Ljava/lang/String;

    check-cast p1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKeyImpl;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/apache/ignite/cache/affinity/AffinityKeyMapped;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKeyImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKeyImpl;->name:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKeyImpl;

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
    .line 77
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKeyImpl;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 78
    return-void
.end method
