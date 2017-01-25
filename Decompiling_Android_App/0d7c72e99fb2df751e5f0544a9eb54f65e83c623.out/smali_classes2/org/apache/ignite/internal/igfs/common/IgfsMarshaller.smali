.class public Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;
.super Ljava/lang/Object;
.source "IgfsMarshaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller$1;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final HEADER_SIZE:I = 0x18


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    return-void
.end method

.method public static createHeader(JLorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;)[B
    .locals 4
    .param p0, "reqId"    # J
    .param p2, "cmd"    # Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .prologue
    .line 45
    sget-boolean v1, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 47
    :cond_0
    const/16 v1, 0x18

    new-array v0, v1, [B

    .line 49
    .local v0, "hdr":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    .line 51
    invoke-virtual {p2}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    .line 53
    return-object v0
.end method

.method public static fillHeader([BJLorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;)[B
    .locals 3
    .param p0, "hdr"    # [B
    .param p1, "reqId"    # J
    .param p3, "cmd"    # Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .prologue
    const/4 v1, 0x0

    .line 64
    sget-boolean v0, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 66
    :cond_0
    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 68
    invoke-static {p1, p2, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    .line 70
    invoke-virtual {p3}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->ordinal()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    .line 72
    return-object p0
.end method

.method private readPath(Ljava/io/ObjectInput;)Lorg/apache/ignite/igfs/IgfsPath;
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 334
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    new-instance v0, Lorg/apache/ignite/igfs/IgfsPath;

    invoke-direct {v0}, Lorg/apache/ignite/igfs/IgfsPath;-><init>()V

    .line 337
    .local v0, "path":Lorg/apache/ignite/igfs/IgfsPath;
    invoke-virtual {v0, p1}, Lorg/apache/ignite/igfs/IgfsPath;->readExternal(Ljava/io/ObjectInput;)V

    .line 342
    .end local v0    # "path":Lorg/apache/ignite/igfs/IgfsPath;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readString(Ljava/io/DataInput;)Ljava/lang/String;
    .locals 2
    .param p1, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 367
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v0

    .line 369
    .local v0, "hasStr":Z
    if-eqz v0, :cond_0

    .line 370
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 372
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writePath(Ljava/io/ObjectOutput;Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .param p2, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 322
    if-eqz p2, :cond_0

    .line 323
    invoke-virtual {p2, p1}, Lorg/apache/ignite/igfs/IgfsPath;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 324
    :cond_0
    return-void

    .line 320
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeString(Ljava/io/DataOutput;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "str"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 355
    if-eqz p2, :cond_0

    .line 356
    invoke-interface {p1, p2}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 357
    :cond_0
    return-void

    .line 353
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public marshall(Lorg/apache/ignite/internal/igfs/common/IgfsMessage;[BLjava/io/ObjectOutput;)V
    .locals 8
    .param p1, "msg"    # Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    .param p2, "hdr"    # [B
    .param p3, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 82
    sget-boolean v5, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p2, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 83
    :cond_0
    sget-boolean v5, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    array-length v5, p2

    const/16 v6, 0x18

    if-eq v5, v6, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 86
    :cond_1
    :try_start_0
    sget-object v5, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller$1;->$SwitchMap$org$apache$ignite$internal$igfs$common$IgfsIpcCommand:[I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/igfs/common/IgfsMessage;->command()Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 178
    sget-boolean v5, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;->$assertionsDisabled:Z

    if-nez v5, :cond_8

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/ignite/internal/igfs/common/IgfsMessage;->command()Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    const-string v6, "Failed to send message to IGFS data node (is data node up and running?)"

    invoke-direct {v5, v6, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 88
    .end local v2    # "e":Ljava/io/IOException;
    :pswitch_0
    :try_start_1
    invoke-interface {p3, p2}, Ljava/io/ObjectOutput;->write([B)V

    .line 90
    move-object v0, p1

    check-cast v0, Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;

    move-object v3, v0

    .line 92
    .local v3, "req":Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;->gridName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v3}, Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;->igfsName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v3}, Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;->logDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 188
    .end local v3    # "req":Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;
    :cond_2
    :goto_0
    return-void

    .line 99
    :pswitch_1
    invoke-interface {p3, p2}, Ljava/io/ObjectOutput;->write([B)V

    goto :goto_0

    .line 118
    :pswitch_2
    invoke-interface {p3, p2}, Ljava/io/ObjectOutput;->write([B)V

    .line 120
    move-object v0, p1

    check-cast v0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;

    move-object v3, v0

    .line 122
    .local v3, "req":Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v5

    invoke-direct {p0, p3, v5}, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;->writePath(Ljava/io/ObjectOutput;Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 123
    invoke-virtual {v3}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->destinationPath()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v5

    invoke-direct {p0, p3, v5}, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;->writePath(Ljava/io/ObjectOutput;Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 124
    invoke-virtual {v3}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->flag()Z

    move-result v5

    invoke-interface {p3, v5}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 125
    invoke-virtual {v3}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->colocate()Z

    move-result v5

    invoke-interface {p3, v5}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 126
    invoke-virtual {v3}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->properties()Ljava/util/Map;

    move-result-object v5

    invoke-static {p3, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeStringMap(Ljava/io/DataOutput;Ljava/util/Map;)V

    .line 129
    invoke-virtual {p1}, Lorg/apache/ignite/internal/igfs/common/IgfsMessage;->command()Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->AFFINITY:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    if-ne v5, v6, :cond_3

    .line 130
    invoke-virtual {v3}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->start()J

    move-result-wide v6

    invoke-interface {p3, v6, v7}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 131
    invoke-virtual {v3}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->length()J

    move-result-wide v6

    invoke-interface {p3, v6, v7}, Ljava/io/ObjectOutput;->writeLong(J)V

    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual {p1}, Lorg/apache/ignite/internal/igfs/common/IgfsMessage;->command()Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->OPEN_CREATE:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    if-ne v5, v6, :cond_4

    .line 134
    invoke-virtual {v3}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->replication()I

    move-result v5

    invoke-interface {p3, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 135
    invoke-virtual {v3}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->blockSize()J

    move-result-wide v6

    invoke-interface {p3, v6, v7}, Ljava/io/ObjectOutput;->writeLong(J)V

    goto :goto_0

    .line 137
    :cond_4
    invoke-virtual {p1}, Lorg/apache/ignite/internal/igfs/common/IgfsMessage;->command()Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->SET_TIMES:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    if-ne v5, v6, :cond_5

    .line 138
    invoke-virtual {v3}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->accessTime()J

    move-result-wide v6

    invoke-interface {p3, v6, v7}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 139
    invoke-virtual {v3}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->modificationTime()J

    move-result-wide v6

    invoke-interface {p3, v6, v7}, Ljava/io/ObjectOutput;->writeLong(J)V

    goto :goto_0

    .line 141
    :cond_5
    invoke-virtual {p1}, Lorg/apache/ignite/internal/igfs/common/IgfsMessage;->command()Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->OPEN_READ:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    if-ne v5, v6, :cond_2

    invoke-virtual {v3}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->flag()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 142
    invoke-virtual {v3}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->sequentialReadsBeforePrefetch()I

    move-result v5

    invoke-interface {p3, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto/16 :goto_0

    .line 150
    .end local v3    # "req":Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;
    :pswitch_3
    sget-boolean v5, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;->$assertionsDisabled:Z

    if-nez v5, :cond_6

    invoke-virtual {p1}, Lorg/apache/ignite/internal/igfs/common/IgfsMessage;->command()Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->WRITE_BLOCK:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    if-ne v5, v6, :cond_6

    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "WRITE_BLOCK should be marshalled manually."

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 152
    :cond_6
    move-object v0, p1

    check-cast v0, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;

    move-object v3, v0

    .line 154
    .local v3, "req":Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;->streamId()J

    move-result-wide v6

    const/16 v5, 0xc

    invoke-static {v6, v7, p2, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    .line 156
    invoke-virtual {p1}, Lorg/apache/ignite/internal/igfs/common/IgfsMessage;->command()Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->READ_BLOCK:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    if-ne v5, v6, :cond_7

    .line 157
    invoke-virtual {v3}, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;->length()I

    move-result v5

    const/16 v6, 0x14

    invoke-static {v5, p2, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    .line 159
    :cond_7
    invoke-interface {p3, p2}, Ljava/io/ObjectOutput;->write([B)V

    .line 161
    invoke-virtual {p1}, Lorg/apache/ignite/internal/igfs/common/IgfsMessage;->command()Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->READ_BLOCK:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    if-ne v5, v6, :cond_2

    .line 162
    invoke-virtual {v3}, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;->position()J

    move-result-wide v6

    invoke-interface {p3, v6, v7}, Ljava/io/ObjectOutput;->writeLong(J)V

    goto/16 :goto_0

    .line 168
    .end local v3    # "req":Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;
    :pswitch_4
    invoke-interface {p3, p2}, Ljava/io/ObjectOutput;->write([B)V

    .line 170
    move-object v0, p1

    check-cast v0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;

    move-object v4, v0

    .line 172
    .local v4, "res":Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;
    invoke-virtual {v4, p3}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->writeExternal(Ljava/io/ObjectOutput;)V

    goto/16 :goto_0

    .line 180
    .end local v4    # "res":Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;
    :cond_8
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to marshal message (invalid command): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/ignite/internal/igfs/common/IgfsMessage;->command()Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public unmarshall(Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;[BLjava/io/ObjectInput;)Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    .locals 9
    .param p1, "cmd"    # Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;
    .param p2, "hdr"    # [B
    .param p3, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 198
    sget-boolean v6, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p2, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 199
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    array-length v6, p2

    const/16 v7, 0x18

    if-eq v6, v7, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 204
    :cond_1
    :try_start_0
    sget-object v6, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller$1;->$SwitchMap$org$apache$ignite$internal$igfs$common$IgfsIpcCommand:[I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 295
    sget-boolean v6, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;->$assertionsDisabled:Z

    if-nez v6, :cond_7

    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v6, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to unmarshal client message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_0
    :try_start_1
    new-instance v2, Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;

    invoke-direct {v2}, Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;-><init>()V

    .line 208
    .local v2, "req":Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;->gridName(Ljava/lang/String;)V

    .line 209
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;->igfsName(Ljava/lang/String;)V

    .line 210
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;->logDirectory(Ljava/lang/String;)V

    .line 212
    move-object v1, v2

    .line 301
    .end local v2    # "req":Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;
    .local v1, "msg":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    :goto_1
    sget-boolean v6, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;->$assertionsDisabled:Z

    if-nez v6, :cond_8

    if-nez v1, :cond_8

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 307
    .end local v1    # "msg":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    :catch_1
    move-exception v0

    goto :goto_0

    .line 218
    :pswitch_1
    new-instance v1, Lorg/apache/ignite/internal/igfs/common/IgfsStatusRequest;

    invoke-direct {v1}, Lorg/apache/ignite/internal/igfs/common/IgfsStatusRequest;-><init>()V

    .line 220
    .restart local v1    # "msg":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    goto :goto_1

    .line 237
    .end local v1    # "msg":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    :pswitch_2
    new-instance v2, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;

    invoke-direct {v2}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;-><init>()V

    .line 239
    .local v2, "req":Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;->readPath(Ljava/io/ObjectInput;)Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->path(Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 240
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;->readPath(Ljava/io/ObjectInput;)Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->destinationPath(Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 241
    invoke-interface {p3}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v6

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->flag(Z)V

    .line 242
    invoke-interface {p3}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v6

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->colocate(Z)V

    .line 243
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readStringMap(Ljava/io/DataInput;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->properties(Ljava/util/Map;)V

    .line 246
    sget-object v6, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->AFFINITY:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    if-ne p1, v6, :cond_3

    .line 247
    invoke-interface {p3}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->start(J)V

    .line 248
    invoke-interface {p3}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->length(J)V

    .line 261
    :cond_2
    :goto_2
    move-object v1, v2

    .line 263
    .restart local v1    # "msg":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    goto :goto_1

    .line 250
    .end local v1    # "msg":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    :cond_3
    sget-object v6, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->OPEN_CREATE:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    if-ne p1, v6, :cond_4

    .line 251
    invoke-interface {p3}, Ljava/io/ObjectInput;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->replication(I)V

    .line 252
    invoke-interface {p3}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->blockSize(J)V

    goto :goto_2

    .line 254
    :cond_4
    sget-object v6, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->SET_TIMES:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    if-ne p1, v6, :cond_5

    .line 255
    invoke-interface {p3}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->accessTime(J)V

    .line 256
    invoke-interface {p3}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->modificationTime(J)V

    goto :goto_2

    .line 258
    :cond_5
    sget-object v6, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->OPEN_READ:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    if-ne p1, v6, :cond_2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->flag()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 259
    invoke-interface {p3}, Ljava/io/ObjectInput;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->sequentialReadsBeforePrefetch(I)V

    goto :goto_2

    .line 269
    .end local v2    # "req":Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;
    :pswitch_3
    new-instance v2, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;

    invoke-direct {v2}, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;-><init>()V

    .line 271
    .local v2, "req":Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;
    const/16 v6, 0xc

    invoke-static {p2, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v4

    .line 273
    .local v4, "streamId":J
    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;->streamId(J)V

    .line 274
    const/16 v6, 0x14

    invoke-static {p2, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;->length(I)V

    .line 276
    sget-object v6, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->READ_BLOCK:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    if-ne p1, v6, :cond_6

    .line 277
    invoke-interface {p3}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;->position(J)V

    .line 279
    :cond_6
    move-object v1, v2

    .line 281
    .restart local v1    # "msg":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    goto/16 :goto_1

    .line 285
    .end local v1    # "msg":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    .end local v2    # "req":Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;
    .end local v4    # "streamId":J
    :pswitch_4
    new-instance v3, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;

    invoke-direct {v3}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;-><init>()V

    .line 287
    .local v3, "res":Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;
    invoke-virtual {v3, p3}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->readExternal(Ljava/io/ObjectInput;)V

    .line 289
    move-object v1, v3

    .line 291
    .restart local v1    # "msg":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    goto/16 :goto_1

    .line 297
    .end local v1    # "msg":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    .end local v3    # "res":Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;
    :cond_7
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to unmarshal message (invalid command): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 303
    .restart local v1    # "msg":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    :cond_8
    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/igfs/common/IgfsMessage;->command(Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 305
    return-object v1

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
