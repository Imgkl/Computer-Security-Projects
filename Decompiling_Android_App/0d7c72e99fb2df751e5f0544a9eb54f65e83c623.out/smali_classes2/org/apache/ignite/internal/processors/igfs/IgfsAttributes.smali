.class public Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
.super Ljava/lang/Object;
.source "IgfsAttributes.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private blockSize:I

.field private dataCacheName:Ljava/lang/String;

.field private dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

.field private fragmentizerEnabled:Z

.field private grpSize:I

.field private igfsName:Ljava/lang/String;

.field private metaCacheName:Ljava/lang/String;

.field private pathModes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/igfs/IgfsMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;Ljava/util/Map;Z)V
    .locals 0
    .param p1, "igfsName"    # Ljava/lang/String;
    .param p2, "blockSize"    # I
    .param p3, "grpSize"    # I
    .param p4, "metaCacheName"    # Ljava/lang/String;
    .param p5, "dataCacheName"    # Ljava/lang/String;
    .param p6, "dfltMode"    # Lorg/apache/ignite/igfs/IgfsMode;
    .param p8, "fragmentizerEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/igfs/IgfsMode;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/igfs/IgfsMode;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p7, "pathModes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->blockSize:I

    .line 71
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->igfsName:Ljava/lang/String;

    .line 72
    iput p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->grpSize:I

    .line 73
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->metaCacheName:Ljava/lang/String;

    .line 74
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->dataCacheName:Ljava/lang/String;

    .line 75
    iput-object p6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

    .line 76
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->pathModes:Ljava/util/Map;

    .line 77
    iput-boolean p8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->fragmentizerEnabled:Z

    .line 78
    return-void
.end method


# virtual methods
.method public blockSize()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->blockSize:I

    return v0
.end method

.method public dataCacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->dataCacheName:Ljava/lang/String;

    return-object v0
.end method

.method public defaultMode()Lorg/apache/ignite/igfs/IgfsMode;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

    return-object v0
.end method

.method public fragmentizerEnabled()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->fragmentizerEnabled:Z

    return v0
.end method

.method public groupSize()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->grpSize:I

    return v0
.end method

.method public igfsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->igfsName:Ljava/lang/String;

    return-object v0
.end method

.method public metaCacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->metaCacheName:Ljava/lang/String;

    return-object v0
.end method

.method public pathModes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/igfs/IgfsMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->pathModes:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->pathModes:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 169
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->igfsName:Ljava/lang/String;

    .line 170
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->blockSize:I

    .line 171
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->grpSize:I

    .line 172
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->metaCacheName:Ljava/lang/String;

    .line 173
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->dataCacheName:Ljava/lang/String;

    .line 174
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v2

    invoke-static {v2}, Lorg/apache/ignite/igfs/IgfsMode;->fromOrdinal(I)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

    .line 175
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->fragmentizerEnabled:Z

    .line 177
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 180
    .local v1, "size":I
    new-instance v2, Ljava/util/HashMap;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v3}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->pathModes:Ljava/util/Map;

    .line 182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 183
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->pathModes:Ljava/util/Map;

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v4

    invoke-static {v4}, Lorg/apache/ignite/igfs/IgfsMode;->fromOrdinal(I)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "i":I
    .end local v1    # "size":I
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
    .line 145
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->igfsName:Ljava/lang/String;

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 146
    iget v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->blockSize:I

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 147
    iget v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->grpSize:I

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 148
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->metaCacheName:Ljava/lang/String;

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->dataCacheName:Ljava/lang/String;

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeEnum(Ljava/io/DataOutput;Ljava/lang/Enum;)V

    .line 151
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->fragmentizerEnabled:Z

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 153
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->pathModes:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 154
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 156
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->pathModes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 158
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->pathModes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 159
    .local v1, "pathMode":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 160
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeEnum(Ljava/io/DataOutput;Ljava/lang/Enum;)V

    goto :goto_0

    .line 164
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pathMode":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;>;"
    :cond_0
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 165
    :cond_1
    return-void
.end method
