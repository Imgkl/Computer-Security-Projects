.class public Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
.super Ljava/lang/Object;
.source "IgfsListingEntry.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private accessTime:J

.field private affKey:Lorg/apache/ignite/lang/IgniteUuid;

.field private blockSize:I

.field private fileId:Lorg/apache/ignite/lang/IgniteUuid;

.field private len:J

.field private modificationTime:J

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
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)V
    .locals 2
    .param p1, "fileInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 66
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    .line 68
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->blockSize:I

    .line 70
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->len:J

    .line 73
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->properties()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->props:Ljava/util/Map;

    .line 74
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->accessTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->accessTime:J

    .line 75
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->modificationTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->modificationTime:J

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;JJJ)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    .param p2, "len"    # J
    .param p4, "accessTime"    # J
    .param p6, "modificationTime"    # J

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iget-object v0, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 86
    iget-object v0, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    .line 87
    iget v0, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->blockSize:I

    iput v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->blockSize:I

    .line 88
    iget-object v0, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->props:Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->props:Ljava/util/Map;

    .line 89
    iput-wide p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->accessTime:J

    .line 90
    iput-wide p6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->modificationTime:J

    .line 92
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->len:J

    .line 93
    return-void
.end method


# virtual methods
.method public accessTime()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->accessTime:J

    return-wide v0
.end method

.method public affinityKey()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public blockSize()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->blockSize:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 180
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 185
    :goto_0
    return v1

    .line 181
    :cond_0
    instance-of v1, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 183
    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    .line 185
    .local v0, "that":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public fileId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteUuid;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->blockSize:I

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
    .line 113
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->blockSize:I

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
    .line 134
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->len:J

    return-wide v0
.end method

.method public modificationTime()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->modificationTime:J

    return-wide v0
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
    .line 155
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->props:Ljava/util/Map;

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
    .line 170
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 171
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->blockSize:I

    .line 172
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->len:J

    .line 173
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readStringMap(Ljava/io/DataInput;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->props:Ljava/util/Map;

    .line 174
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->accessTime:J

    .line 175
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->modificationTime:J

    .line 176
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

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
    .line 160
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 161
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->blockSize:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 162
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->len:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 163
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->props:Ljava/util/Map;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeStringMap(Ljava/io/DataOutput;Ljava/util/Map;)V

    .line 164
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->accessTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 165
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->modificationTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 166
    return-void
.end method
