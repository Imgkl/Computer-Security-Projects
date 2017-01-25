.class public final Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
.super Ljava/lang/Object;
.source "IgfsBlockKey.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/plugin/extensions/communication/Message;",
        "Ljava/io/Externalizable;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private affKey:Lorg/apache/ignite/lang/IgniteUuid;

.field private blockId:J

.field private evictExclude:Z

.field private fileId:Lorg/apache/ignite/lang/IgniteUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZJ)V
    .locals 2
    .param p1, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "affKey"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "evictExclude"    # Z
    .param p4, "blockId"    # J

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 63
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    .line 64
    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->evictExclude:Z

    .line 65
    iput-wide p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->blockId:J

    .line 66
    return-void
.end method


# virtual methods
.method public affinityKey()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p1, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->compareTo(Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;)I
    .locals 9
    .param p1, "o"    # Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v6, -0x1

    .line 105
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v8, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v7, v8}, Lorg/apache/ignite/lang/IgniteUuid;->compareTo(Lorg/apache/ignite/lang/IgniteUuid;)I

    move-result v0

    .line 107
    .local v0, "res":I
    if-eqz v0, :cond_0

    .line 122
    .end local v0    # "res":I
    :goto_0
    return v0

    .line 110
    .restart local v0    # "res":I
    :cond_0
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->blockId:J

    .line 111
    .local v2, "v1":J
    iget-wide v4, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->blockId:J

    .line 113
    .local v4, "v2":J
    cmp-long v7, v2, v4

    if-eqz v7, :cond_2

    .line 114
    cmp-long v7, v2, v4

    if-lez v7, :cond_1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    move v1, v6

    goto :goto_1

    .line 116
    :cond_2
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    if-nez v7, :cond_3

    iget-object v7, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    if-nez v7, :cond_3

    .line 117
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :cond_3
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    if-eqz v7, :cond_4

    iget-object v7, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    if-eqz v7, :cond_4

    .line 120
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v6, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v1, v6}, Lorg/apache/ignite/lang/IgniteUuid;->compareTo(Lorg/apache/ignite/lang/IgniteUuid;)I

    move-result v0

    goto :goto_0

    .line 122
    :cond_4
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    if-eqz v7, :cond_5

    :goto_2
    move v0, v6

    goto :goto_0

    :cond_5
    move v6, v1

    goto :goto_2
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 248
    const/16 v0, 0x41

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    if-ne p1, p0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v1

    .line 151
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 152
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 154
    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    .line 156
    .local v0, "that":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->blockId:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->blockId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->evictExclude:Z

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->evictExclude:Z

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public evictExclude()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->evictExclude:Z

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x4

    return v0
.end method

.method public getBlockId()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->blockId:J

    return-wide v0
.end method

.method public getFileId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteUuid;->hashCode()I

    move-result v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->blockId:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->blockId:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
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
    .line 135
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 136
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    .line 137
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->evictExclude:Z

    .line 138
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->blockId:J

    .line 139
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 205
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 243
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 210
    :pswitch_0
    const-string v1, "affKey"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    .line 212
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 218
    :pswitch_1
    const-string v1, "blockId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->blockId:J

    .line 220
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 226
    :pswitch_2
    const-string v1, "evictExclude"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->evictExclude:Z

    .line 228
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 234
    :pswitch_3
    const-string v1, "fileId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 236
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

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
    .line 127
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 128
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 129
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->evictExclude:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 130
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->blockId:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 131
    return-void
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 164
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 165
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 171
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 198
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 173
    :pswitch_0
    const-string v1, "affKey"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 179
    :pswitch_1
    const-string v1, "blockId"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->blockId:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 185
    :pswitch_2
    const-string v1, "evictExclude"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->evictExclude:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 191
    :pswitch_3
    const-string v1, "fileId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
