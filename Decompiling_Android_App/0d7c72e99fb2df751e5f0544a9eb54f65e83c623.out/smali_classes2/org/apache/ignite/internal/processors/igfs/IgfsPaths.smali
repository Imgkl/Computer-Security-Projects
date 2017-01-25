.class public Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;
.super Ljava/lang/Object;
.source "IgfsPaths.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

.field private pathModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Lorg/apache/ignite/igfs/IgfsMode;",
            ">;>;"
        }
    .end annotation
.end field

.field private props:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lorg/apache/ignite/igfs/IgfsMode;Ljava/util/List;)V
    .locals 0
    .param p2, "dfltMode"    # Lorg/apache/ignite/igfs/IgfsMode;
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/ignite/igfs/IgfsMode;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Lorg/apache/ignite/igfs/IgfsMode;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "pathModes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/typedef/T2<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;->props:Ljava/util/Map;

    .line 61
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;->dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

    .line 62
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;->pathModes:Ljava/util/List;

    .line 63
    return-void
.end method


# virtual methods
.method public defaultMode()Lorg/apache/ignite/igfs/IgfsMode;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;->dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

    return-object v0
.end method

.method public pathModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Lorg/apache/ignite/igfs/IgfsMode;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;->pathModes:Ljava/util/List;

    return-object v0
.end method

.method public properties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;->props:Ljava/util/Map;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readStringMap(Ljava/io/DataInput;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;->props:Ljava/util/Map;

    .line 107
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v4

    invoke-static {v4}, Lorg/apache/ignite/igfs/IgfsMode;->fromOrdinal(I)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;->dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

    .line 109
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    .line 112
    .local v3, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;->pathModes:Ljava/util/List;

    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 115
    new-instance v2, Lorg/apache/ignite/igfs/IgfsPath;

    invoke-direct {v2}, Lorg/apache/ignite/igfs/IgfsPath;-><init>()V

    .line 116
    .local v2, "path":Lorg/apache/ignite/igfs/IgfsPath;
    invoke-virtual {v2, p1}, Lorg/apache/ignite/igfs/IgfsPath;->readExternal(Ljava/io/ObjectInput;)V

    .line 118
    new-instance v0, Lorg/apache/ignite/internal/util/typedef/T2;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v4

    invoke-static {v4}, Lorg/apache/ignite/igfs/IgfsMode;->fromOrdinal(I)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lorg/apache/ignite/internal/util/typedef/T2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    .local v0, "entry":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;->pathModes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "entry":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;>;"
    .end local v1    # "i":I
    .end local v2    # "path":Lorg/apache/ignite/igfs/IgfsPath;
    .end local v3    # "size":I
    :cond_0
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;->props:Ljava/util/Map;

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeStringMap(Ljava/io/DataOutput;Ljava/util/Map;)V

    .line 89
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;->dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeEnum(Ljava/io/DataOutput;Ljava/lang/Enum;)V

    .line 91
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;->pathModes:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 92
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 93
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;->pathModes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 95
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;->pathModes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/typedef/T2;

    .line 96
    .local v1, "pathMode":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;>;"
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/typedef/T2;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2, p1}, Lorg/apache/ignite/igfs/IgfsPath;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 97
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/typedef/T2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeEnum(Ljava/io/DataOutput;Ljava/lang/Enum;)V

    goto :goto_0

    .line 101
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pathMode":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;>;"
    :cond_0
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 102
    :cond_1
    return-void
.end method
