.class Lorg/apache/ignite/internal/processors/igfs/IgfsSamplingKey;
.super Ljava/lang/Object;
.source "IgfsSamplingKey.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSamplingKey;->name:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 66
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsSamplingKey;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSamplingKey;->name:Ljava/lang/String;

    check-cast p1, Lorg/apache/ignite/internal/processors/igfs/IgfsSamplingKey;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsSamplingKey;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSamplingKey;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSamplingKey;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSamplingKey;->name:Ljava/lang/String;

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
    .line 76
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSamplingKey;->name:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsSamplingKey;

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
    .line 71
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSamplingKey;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 72
    return-void
.end method
