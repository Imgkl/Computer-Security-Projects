.class public Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;
.super Ljava/lang/Object;
.source "IgfsHandshakeResponse.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private blockSize:J

.field private igfsName:Ljava/lang/String;

.field private paths:Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;

.field private sampling:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;JLjava/lang/Boolean;)V
    .locals 1
    .param p1, "igfsName"    # Ljava/lang/String;
    .param p2, "paths"    # Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;
    .param p3, "blockSize"    # J
    .param p5, "sampling"    # Ljava/lang/Boolean;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;->igfsName:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;->paths:Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;

    .line 61
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;->blockSize:J

    .line 62
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;->sampling:Ljava/lang/Boolean;

    .line 63
    return-void
.end method


# virtual methods
.method public blockSize()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;->blockSize:J

    return-wide v0
.end method

.method public igfsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;->igfsName:Ljava/lang/String;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;->igfsName:Ljava/lang/String;

    .line 113
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;->paths:Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;

    .line 115
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;->paths:Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;->readExternal(Ljava/io/ObjectInput;)V

    .line 117
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;->blockSize:J

    .line 119
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;->sampling:Ljava/lang/Boolean;

    .line 121
    :cond_0
    return-void
.end method

.method public sampling()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;->sampling:Ljava/lang/Boolean;

    return-object v0
.end method

.method public secondaryPaths()Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;->paths:Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;->igfsName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;->paths:Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 99
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;->blockSize:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 101
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;->sampling:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 103
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;->sampling:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    goto :goto_0
.end method
