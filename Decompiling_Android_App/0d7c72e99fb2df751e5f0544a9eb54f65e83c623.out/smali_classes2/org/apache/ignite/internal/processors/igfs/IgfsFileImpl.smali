.class public final Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;
.super Ljava/lang/Object;
.source "IgfsFileImpl.java"

# interfaces
.implements Lorg/apache/ignite/igfs/IgfsFile;
.implements Ljava/io/Externalizable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private accessTime:J

.field private blockSize:I

.field private fileId:Lorg/apache/ignite/lang/IgniteUuid;

.field private grpBlockSize:J

.field private len:J

.field private modificationTime:J

.field private path:Lorg/apache/ignite/igfs/IgfsPath;

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;J)V
    .locals 5
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "info"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p3, "globalGrpBlockSize"    # J

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "path"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    const-string v0, "info"

    invoke-static {p2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    .line 76
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 78
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->blockSize:I

    .line 81
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->blockSize:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 83
    :cond_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->len:J

    .line 85
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    if-nez v0, :cond_4

    .end local p3    # "globalGrpBlockSize":J
    :cond_1
    :goto_0
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->grpBlockSize:J

    .line 89
    :cond_2
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->properties()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->props:Ljava/util/Map;

    .line 91
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->props:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 92
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->props:Ljava/util/Map;

    .line 94
    :cond_3
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->accessTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->accessTime:J

    .line 95
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->modificationTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->modificationTime:J

    .line 96
    return-void

    .line 85
    .restart local p3    # "globalGrpBlockSize":J
    :cond_4
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->length()J

    move-result-wide p3

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;J)V
    .locals 5
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    .param p3, "globalGrpSize"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const-string v2, "path"

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    const-string v2, "entry"

    invoke-static {p2, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    .line 109
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 111
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->blockSize()I

    move-result v2

    iput v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->blockSize:I

    .line 114
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->isFile()Z

    move-result v3

    iget v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->blockSize:I

    if-lez v2, :cond_0

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v2, v1

    goto :goto_0

    .line 115
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->isDirectory()Z

    move-result v2

    iget v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->blockSize:I

    if-nez v3, :cond_2

    :goto_1
    if-eq v2, v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    if-nez v0, :cond_5

    .end local p3    # "globalGrpSize":J
    :cond_4
    :goto_2
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->grpBlockSize:J

    .line 120
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->len:J

    .line 121
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->properties()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->props:Ljava/util/Map;

    .line 123
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->accessTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->accessTime:J

    .line 124
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->modificationTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->modificationTime:J

    .line 125
    return-void

    .line 117
    .restart local p3    # "globalGrpSize":J
    :cond_5
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->length()J

    move-result-wide p3

    goto :goto_2
.end method


# virtual methods
.method public accessTime()J
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->accessTime:J

    return-wide v0
.end method

.method public blockSize()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->blockSize:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 237
    if-ne p1, p0, :cond_0

    .line 238
    const/4 v1, 0x1

    .line 245
    :goto_0
    return v1

    .line 240
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 241
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 243
    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;

    .line 245
    .local v0, "that":Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/igfs/IgfsPath;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public fileId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public groupBlockSize()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->grpBlockSize:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0}, Lorg/apache/ignite/igfs/IgfsPath;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->blockSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->blockSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->len:J

    return-wide v0
.end method

.method public modificationTime()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->modificationTime:J

    return-wide v0
.end method

.method public path()Lorg/apache/ignite/igfs/IgfsPath;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

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
    .line 193
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->props:Ljava/util/Map;

    return-object v0
.end method

.method public property(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->props:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 179
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File property not found [path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_0
    return-object v0
.end method

.method public property(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dfltVal"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 186
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->props:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p2    # "dfltVal":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "dfltVal":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Lorg/apache/ignite/igfs/IgfsPath;

    invoke-direct {v0}, Lorg/apache/ignite/igfs/IgfsPath;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    .line 220
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/igfs/IgfsPath;->readExternal(Ljava/io/ObjectInput;)V

    .line 222
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->blockSize:I

    .line 223
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->grpBlockSize:J

    .line 224
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->len:J

    .line 225
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readStringMap(Ljava/io/DataInput;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->props:Ljava/util/Map;

    .line 226
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->accessTime:J

    .line 227
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->modificationTime:J

    .line 228
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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
    .line 202
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/igfs/IgfsPath;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 204
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->blockSize:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 205
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->grpBlockSize:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 206
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->len:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 207
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->props:Ljava/util/Map;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeStringMap(Ljava/io/DataOutput;Ljava/util/Map;)V

    .line 208
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->accessTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 209
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->modificationTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 210
    return-void
.end method
