.class public Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;
.super Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
.source "IgfsControlResponse.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ERR_CORRUPTED_FILE:I = 0x7

.field private static final ERR_DIRECTORY_NOT_EMPTY:I = 0x4

.field private static final ERR_FILE_NOT_FOUND:I = 0x2

.field private static final ERR_GENERIC:I = 0x0

.field private static final ERR_IGFS_GENERIC:I = 0x1

.field private static final ERR_INVALID_HDFS_VERSION:I = 0x6

.field private static final ERR_PARENT_NOT_DIRECTORY:I = 0x5

.field private static final ERR_PATH_ALREADY_EXISTS:I = 0x3

.field public static final RES_HEADER_SIZE:I = 0x9

.field public static final RES_TYPE_BOOLEAN:I = 0x0

.field public static final RES_TYPE_BYTE_ARRAY:I = 0x8

.field public static final RES_TYPE_COL_IGFS_BLOCK_LOCATION:I = 0x7

.field public static final RES_TYPE_COL_IGFS_FILE:I = 0x5

.field public static final RES_TYPE_COL_IGFS_PATH:I = 0x6

.field public static final RES_TYPE_ERR_STREAM_ID:I = 0x9

.field public static final RES_TYPE_HANDSHAKE:I = 0xa

.field public static final RES_TYPE_IGFS_FILE:I = 0x2

.field public static final RES_TYPE_IGFS_PATH:I = 0x4

.field public static final RES_TYPE_IGFS_PATH_SUMMARY:I = 0xc

.field public static final RES_TYPE_IGFS_STREAM_DESCRIPTOR:I = 0x3

.field public static final RES_TYPE_LONG:I = 0x1

.field public static final RES_TYPE_STATUS:I = 0xb


# instance fields
.field private err:Ljava/lang/String;

.field private errCode:I

.field private len:I

.field private res:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private resType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 121
    invoke-direct {p0}, Lorg/apache/ignite/internal/igfs/common/IgfsMessage;-><init>()V

    .line 103
    iput v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->resType:I

    .line 116
    iput v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->errCode:I

    .line 122
    sget-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->CONTROL_RESPONSE:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->command(Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;)V

    .line 123
    return-void
.end method

.method private errorCode(Lorg/apache/ignite/IgniteCheckedException;)I
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/IgniteCheckedException;

    .prologue
    .line 323
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->errorCode(Lorg/apache/ignite/IgniteCheckedException;Z)I

    move-result v0

    return v0
.end method

.method private errorCode(Lorg/apache/ignite/IgniteCheckedException;Z)I
    .locals 4
    .param p1, "e"    # Lorg/apache/ignite/IgniteCheckedException;
    .param p2, "checkIo"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 335
    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;

    aput-object v3, v2, v1

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 336
    const/4 v0, 0x2

    .line 351
    :cond_0
    :goto_0
    return v0

    .line 337
    :cond_1
    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Lorg/apache/ignite/igfs/IgfsPathAlreadyExistsException;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    const/4 v0, 0x3

    goto :goto_0

    .line 339
    :cond_2
    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Lorg/apache/ignite/igfs/IgfsDirectoryNotEmptyException;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 340
    const/4 v0, 0x4

    goto :goto_0

    .line 341
    :cond_3
    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Lorg/apache/ignite/igfs/IgfsParentNotDirectoryException;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 342
    const/4 v0, 0x5

    goto :goto_0

    .line 343
    :cond_4
    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Lorg/apache/ignite/igfs/IgfsInvalidHdfsVersionException;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 344
    const/4 v0, 0x6

    goto :goto_0

    .line 345
    :cond_5
    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Lorg/apache/ignite/igfs/IgfsCorruptedFileException;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 346
    const/4 v0, 0x7

    goto :goto_0

    .line 348
    :cond_6
    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Lorg/apache/ignite/igfs/IgfsException;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 351
    goto :goto_0
.end method

.method public static throwError(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2
    .param p0, "errCode"    # Ljava/lang/Integer;
    .param p1, "err"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 260
    sget-boolean v0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 261
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 263
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 264
    new-instance v0, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;

    invoke-direct {v0, p1}, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 266
    new-instance v0, Lorg/apache/ignite/igfs/IgfsPathAlreadyExistsException;

    invoke-direct {v0, p1}, Lorg/apache/ignite/igfs/IgfsPathAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 268
    new-instance v0, Lorg/apache/ignite/igfs/IgfsDirectoryNotEmptyException;

    invoke-direct {v0, p1}, Lorg/apache/ignite/igfs/IgfsDirectoryNotEmptyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 270
    new-instance v0, Lorg/apache/ignite/igfs/IgfsParentNotDirectoryException;

    invoke-direct {v0, p1}, Lorg/apache/ignite/igfs/IgfsParentNotDirectoryException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 272
    new-instance v0, Lorg/apache/ignite/igfs/IgfsInvalidHdfsVersionException;

    invoke-direct {v0, p1}, Lorg/apache/ignite/igfs/IgfsInvalidHdfsVersionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 274
    new-instance v0, Lorg/apache/ignite/igfs/IgfsCorruptedFileException;

    invoke-direct {v0, p1}, Lorg/apache/ignite/igfs/IgfsCorruptedFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 276
    new-instance v0, Lorg/apache/ignite/igfs/IgfsException;

    invoke-direct {v0, p1}, Lorg/apache/ignite/igfs/IgfsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_8
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v0, p1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public error(JLjava/lang/String;)V
    .locals 1
    .param p1, "streamId"    # J
    .param p3, "err"    # Ljava/lang/String;

    .prologue
    .line 308
    const/16 v0, 0x9

    iput v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->resType:I

    .line 310
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    .line 311
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->errCode:I

    .line 313
    iput-object p3, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->err:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public error(Lorg/apache/ignite/IgniteCheckedException;)V
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/IgniteCheckedException;

    .prologue
    .line 299
    invoke-virtual {p1}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->err:Ljava/lang/String;

    .line 300
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->errorCode(Lorg/apache/ignite/IgniteCheckedException;)I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->errCode:I

    .line 301
    return-void
.end method

.method public errorCode()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->errCode:I

    return v0
.end method

.method public files(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsFile;>;"
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->resType:I

    .line 201
    iput-object p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    .line 202
    return-void
.end method

.method public handshake(Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;)V
    .locals 1
    .param p1, "res"    # Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;

    .prologue
    .line 226
    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->resType:I

    .line 228
    iput-object p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    .line 229
    return-void
.end method

.method public hasError()Z
    .locals 2

    .prologue
    .line 251
    iget v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->errCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length(I)V
    .locals 0
    .param p1, "len"    # I

    .prologue
    .line 244
    iput p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->len:I

    .line 245
    return-void
.end method

.method public locations(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsBlockLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsBlockLocation;>;"
    const/4 v0, 0x7

    iput v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->resType:I

    .line 219
    iput-object p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    .line 220
    return-void
.end method

.method public paths(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsPath;>;"
    const/4 v0, 0x6

    iput v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->resType:I

    .line 210
    iput-object p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    .line 211
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 18
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 445
    const/16 v16, 0x9

    move/from16 v0, v16

    new-array v7, v0, [B

    .line 447
    .local v7, "hdr":[B
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/io/ObjectInput;->readFully([B)V

    .line 449
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v7, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->resType:I

    .line 451
    const/16 v16, 0x4

    aget-byte v16, v7, v16

    if-eqz v16, :cond_1

    const/4 v5, 0x1

    .line 453
    .local v5, "hasErr":Z
    :goto_0
    if-eqz v5, :cond_2

    .line 454
    invoke-interface/range {p1 .. p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->err:Ljava/lang/String;

    .line 455
    invoke-interface/range {p1 .. p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->errCode:I

    .line 457
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->resType:I

    move/from16 v16, v0

    const/16 v17, 0x9

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 458
    invoke-interface/range {p1 .. p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    .line 627
    :cond_0
    :goto_1
    return-void

    .line 451
    .end local v5    # "hasErr":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 463
    .restart local v5    # "hasErr":Z
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->resType:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 465
    :pswitch_1
    invoke-interface/range {p1 .. p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    goto :goto_1

    .line 470
    :pswitch_2
    invoke-interface/range {p1 .. p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    goto :goto_1

    .line 475
    :pswitch_3
    invoke-interface/range {p1 .. p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v6

    .line 477
    .local v6, "hasVal":Z
    if-eqz v6, :cond_0

    .line 478
    new-instance v12, Lorg/apache/ignite/igfs/IgfsPath;

    invoke-direct {v12}, Lorg/apache/ignite/igfs/IgfsPath;-><init>()V

    .line 480
    .local v12, "path":Lorg/apache/ignite/igfs/IgfsPath;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lorg/apache/ignite/igfs/IgfsPath;->readExternal(Ljava/io/ObjectInput;)V

    .line 482
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    goto :goto_1

    .line 489
    .end local v6    # "hasVal":Z
    .end local v12    # "path":Lorg/apache/ignite/igfs/IgfsPath;
    :pswitch_4
    invoke-interface/range {p1 .. p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v6

    .line 491
    .restart local v6    # "hasVal":Z
    if-eqz v6, :cond_0

    .line 492
    new-instance v15, Lorg/apache/ignite/igfs/IgfsPathSummary;

    invoke-direct {v15}, Lorg/apache/ignite/igfs/IgfsPathSummary;-><init>()V

    .line 494
    .local v15, "sum":Lorg/apache/ignite/igfs/IgfsPathSummary;
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lorg/apache/ignite/igfs/IgfsPathSummary;->readExternal(Ljava/io/ObjectInput;)V

    .line 496
    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    goto :goto_1

    .line 503
    .end local v6    # "hasVal":Z
    .end local v15    # "sum":Lorg/apache/ignite/igfs/IgfsPathSummary;
    :pswitch_5
    invoke-interface/range {p1 .. p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v6

    .line 505
    .restart local v6    # "hasVal":Z
    if-eqz v6, :cond_0

    .line 506
    new-instance v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;

    invoke-direct {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;-><init>()V

    .line 508
    .local v3, "file":Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->readExternal(Ljava/io/ObjectInput;)V

    .line 510
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    goto :goto_1

    .line 517
    .end local v3    # "file":Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;
    .end local v6    # "hasVal":Z
    :pswitch_6
    invoke-interface/range {p1 .. p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v6

    .line 519
    .restart local v6    # "hasVal":Z
    if-eqz v6, :cond_0

    .line 520
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamDescriptor;

    invoke-direct {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamDescriptor;-><init>()V

    .line 522
    .local v2, "desc":Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamDescriptor;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamDescriptor;->readExternal(Ljava/io/ObjectInput;)V

    .line 524
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    goto :goto_1

    .line 531
    .end local v2    # "desc":Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamDescriptor;
    .end local v6    # "hasVal":Z
    :pswitch_7
    invoke-interface/range {p1 .. p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v6

    .line 533
    .restart local v6    # "hasVal":Z
    if-eqz v6, :cond_0

    .line 534
    new-instance v11, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;

    invoke-direct {v11}, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;-><init>()V

    .line 536
    .local v11, "msg":Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;->readExternal(Ljava/io/ObjectInput;)V

    .line 538
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    goto/16 :goto_1

    .line 545
    .end local v6    # "hasVal":Z
    .end local v11    # "msg":Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;
    :pswitch_8
    invoke-interface/range {p1 .. p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v6

    .line 547
    .restart local v6    # "hasVal":Z
    if-eqz v6, :cond_0

    .line 548
    new-instance v11, Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;

    invoke-direct {v11}, Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;-><init>()V

    .line 550
    .local v11, "msg":Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;->readExternal(Ljava/io/ObjectInput;)V

    .line 552
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    goto/16 :goto_1

    .line 559
    .end local v6    # "hasVal":Z
    .end local v11    # "msg":Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;
    :pswitch_9
    const/4 v4, 0x0

    .line 561
    .local v4, "files":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsFile;>;"
    invoke-interface/range {p1 .. p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v14

    .line 563
    .local v14, "size":I
    if-ltz v14, :cond_3

    .line 564
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "files":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsFile;>;"
    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 566
    .restart local v4    # "files":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsFile;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v14, :cond_3

    .line 567
    new-instance v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;

    invoke-direct {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;-><init>()V

    .line 569
    .restart local v3    # "file":Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;->readExternal(Ljava/io/ObjectInput;)V

    .line 571
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 566
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 575
    .end local v3    # "file":Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;
    .end local v8    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    goto/16 :goto_1

    .line 581
    .end local v4    # "files":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsFile;>;"
    .end local v14    # "size":I
    :pswitch_a
    const/4 v13, 0x0

    .line 583
    .local v13, "paths":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsPath;>;"
    invoke-interface/range {p1 .. p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v14

    .line 585
    .restart local v14    # "size":I
    if-ltz v14, :cond_4

    .line 586
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "paths":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsPath;>;"
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 588
    .restart local v13    # "paths":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsPath;>;"
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v14, :cond_4

    .line 589
    new-instance v12, Lorg/apache/ignite/igfs/IgfsPath;

    invoke-direct {v12}, Lorg/apache/ignite/igfs/IgfsPath;-><init>()V

    .line 591
    .restart local v12    # "path":Lorg/apache/ignite/igfs/IgfsPath;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lorg/apache/ignite/igfs/IgfsPath;->readExternal(Ljava/io/ObjectInput;)V

    .line 593
    invoke-interface {v13, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 588
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 597
    .end local v8    # "i":I
    .end local v12    # "path":Lorg/apache/ignite/igfs/IgfsPath;
    :cond_4
    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    goto/16 :goto_1

    .line 603
    .end local v13    # "paths":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsPath;>;"
    .end local v14    # "size":I
    :pswitch_b
    const/4 v10, 0x0

    .line 605
    .local v10, "locations":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsBlockLocation;>;"
    invoke-interface/range {p1 .. p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v14

    .line 607
    .restart local v14    # "size":I
    if-ltz v14, :cond_5

    .line 608
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "locations":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsBlockLocation;>;"
    invoke-direct {v10, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 610
    .restart local v10    # "locations":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsBlockLocation;>;"
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    if-ge v8, v14, :cond_5

    .line 611
    new-instance v9, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;

    invoke-direct {v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;-><init>()V

    .line 613
    .local v9, "location":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->readExternal(Ljava/io/ObjectInput;)V

    .line 615
    invoke-interface {v10, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 610
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 619
    .end local v8    # "i":I
    .end local v9    # "location":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;
    :cond_5
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    goto/16 :goto_1

    .line 625
    .end local v10    # "locations":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsBlockLocation;>;"
    .end local v14    # "size":I
    :pswitch_c
    sget-boolean v16, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->$assertionsDisabled:Z

    if-nez v16, :cond_0

    new-instance v16, Ljava/lang/AssertionError;

    const-string v17, "Response type of byte array should never be processed by marshaller."

    invoke-direct/range {v16 .. v17}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v16

    .line 463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

.method public response()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    return-object v0
.end method

.method public response(J)V
    .locals 1
    .param p1, "res"    # J

    .prologue
    .line 145
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->resType:I

    .line 147
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    .line 148
    return-void
.end method

.method public response(Lorg/apache/ignite/igfs/IgfsFile;)V
    .locals 1
    .param p1, "res"    # Lorg/apache/ignite/igfs/IgfsFile;

    .prologue
    .line 172
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->resType:I

    .line 174
    iput-object p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    .line 175
    return-void
.end method

.method public response(Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 1
    .param p1, "res"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 181
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->resType:I

    .line 183
    iput-object p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    .line 184
    return-void
.end method

.method public response(Lorg/apache/ignite/igfs/IgfsPathSummary;)V
    .locals 1
    .param p1, "res"    # Lorg/apache/ignite/igfs/IgfsPathSummary;

    .prologue
    .line 190
    const/16 v0, 0xc

    iput v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->resType:I

    .line 192
    iput-object p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    .line 193
    return-void
.end method

.method public response(Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamDescriptor;)V
    .locals 1
    .param p1, "res"    # Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamDescriptor;

    .prologue
    .line 163
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->resType:I

    .line 165
    iput-object p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    .line 166
    return-void
.end method

.method public response(Z)V
    .locals 1
    .param p1, "res"    # Z

    .prologue
    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->resType:I

    .line 138
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public response([[B)V
    .locals 1
    .param p1, "res"    # [[B

    .prologue
    .line 154
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->resType:I

    .line 156
    iput-object p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    .line 157
    return-void
.end method

.method public status(Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;)V
    .locals 1
    .param p1, "res"    # Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;

    .prologue
    .line 235
    const/16 v0, 0xb

    iput v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->resType:I

    .line 237
    iput-object p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    .line 238
    return-void
.end method

.method public throwError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 285
    iget v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->errCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->err:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->throwError(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    const-class v0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 12
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    const/16 v10, 0x9

    new-array v3, v10, [B

    .line 364
    .local v3, "hdr":[B
    iget v10, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->resType:I

    const/4 v11, 0x0

    invoke-static {v10, v3, v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    .line 366
    const/4 v8, 0x4

    .line 368
    .local v8, "off":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "off":I
    .local v9, "off":I
    iget-object v10, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->err:Ljava/lang/String;

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    :goto_0
    aput-byte v10, v3, v8

    .line 370
    iget v10, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->resType:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_0

    .line 371
    iget v10, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->len:I

    invoke-static {v10, v3, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    .line 373
    :cond_0
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->write([B)V

    .line 375
    iget-object v10, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->err:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 376
    iget-object v10, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->err:Ljava/lang/String;

    invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 377
    iget v10, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->errCode:I

    invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 379
    iget v10, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->resType:I

    const/16 v11, 0x9

    if-ne v10, v11, :cond_1

    .line 380
    iget-object v10, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface {p1, v10, v11}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 435
    :cond_1
    :goto_1
    return-void

    .line 368
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 385
    :cond_3
    iget v10, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->resType:I

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 387
    :pswitch_1
    iget-object v10, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    goto :goto_1

    .line 392
    :pswitch_2
    iget-object v10, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface {p1, v10, v11}, Ljava/io/ObjectOutput;->writeLong(J)V

    goto :goto_1

    .line 397
    :pswitch_3
    iget-object v10, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    check-cast v10, [[B

    move-object v1, v10

    check-cast v1, [[B

    .line 399
    .local v1, "buf":[[B
    move-object v0, v1

    .local v0, "arr$":[[B
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v7, :cond_1

    aget-object v2, v0, v4

    .line 400
    .local v2, "bytes":[B
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->write([B)V

    .line 399
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 410
    .end local v0    # "arr$":[[B
    .end local v1    # "buf":[[B
    .end local v2    # "bytes":[B
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    :pswitch_4
    iget-object v10, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    :goto_3
    invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 412
    iget-object v10, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    if-eqz v10, :cond_1

    .line 413
    iget-object v10, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    check-cast v10, Ljava/io/Externalizable;

    invoke-interface {v10, p1}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_1

    .line 410
    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .line 421
    :pswitch_5
    iget-object v6, p0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->res:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    .line 423
    .local v6, "items":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/Externalizable;>;"
    if-eqz v6, :cond_5

    .line 424
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v10

    invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 426
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Externalizable;

    .line 427
    .local v5, "item":Ljava/io/Externalizable;
    invoke-interface {v5, p1}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_4

    .line 430
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "item":Ljava/io/Externalizable;
    :cond_5
    const/4 v10, -0x1

    invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_1

    .line 385
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
