.class public final Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
.super Ljava/lang/Object;
.source "IgfsFileInfo.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$1;,
        Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

.field public static final TRASH_ID:Lorg/apache/ignite/lang/IgniteUuid;

.field private static final serialVersionUID:J


# instance fields
.field private accessTime:J

.field private affKey:Lorg/apache/ignite/lang/IgniteUuid;

.field private blockSize:I

.field private evictExclude:Z

.field private fileMap:Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

.field private id:Lorg/apache/ignite/lang/IgniteUuid;

.field private len:J

.field private listing:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private lockId:Lorg/apache/ignite/lang/IgniteUuid;

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
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 35
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->$assertionsDisabled:Z

    .line 40
    new-instance v0, Lorg/apache/ignite/lang/IgniteUuid;

    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v4, v5, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/ignite/lang/IgniteUuid;-><init>(Ljava/util/UUID;J)V

    sput-object v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    .line 43
    new-instance v0, Lorg/apache/ignite/lang/IgniteUuid;

    new-instance v1, Ljava/util/UUID;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/ignite/lang/IgniteUuid;-><init>(Ljava/util/UUID;J)V

    sput-object v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->TRASH_ID:Lorg/apache/ignite/lang/IgniteUuid;

    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 90
    return-void
.end method

.method public constructor <init>(IJLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZLjava/util/Map;)V
    .locals 14
    .param p1, "blockSize"    # I
    .param p2, "len"    # J
    .param p4, "affKey"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "lockId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "evictExclude"    # Z
    .param p7    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p7, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object v0, p0

    move v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p5

    move/from16 v13, p6

    invoke-direct/range {v0 .. v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(ZLorg/apache/ignite/lang/IgniteUuid;IJLorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Ljava/util/Map;Lorg/apache/ignite/lang/IgniteUuid;ZJZ)V

    .line 147
    return-void
.end method

.method constructor <init>(IJZLjava/util/Map;)V
    .locals 14
    .param p1, "blockSize"    # I
    .param p2, "len"    # J
    .param p4, "evictExclude"    # Z
    .param p5    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p5, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object v0, p0

    move v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v8, p5

    move/from16 v13, p4

    invoke-direct/range {v0 .. v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(ZLorg/apache/ignite/lang/IgniteUuid;IJLorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Ljava/util/Map;Lorg/apache/ignite/lang/IgniteUuid;ZJZ)V

    .line 194
    return-void

    .line 192
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILorg/apache/ignite/lang/IgniteUuid;ZLjava/util/Map;)V
    .locals 14
    .param p1, "blockSize"    # I
    .param p2, "affKey"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "evictExclude"    # Z
    .param p4    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p4, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object v0, p0

    move v3, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    move/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(ZLorg/apache/ignite/lang/IgniteUuid;IJLorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Ljava/util/Map;Lorg/apache/ignite/lang/IgniteUuid;ZJZ)V

    .line 132
    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "listing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 118
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object v0, p0

    move-object v6, v2

    move-object v7, p1

    move-object v8, v2

    move-object v9, v2

    move v10, v3

    move v13, v3

    invoke-direct/range {v0 .. v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(ZLorg/apache/ignite/lang/IgniteUuid;IJLorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Ljava/util/Map;Lorg/apache/ignite/lang/IgniteUuid;ZJZ)V

    .line 119
    return-void
.end method

.method constructor <init>(Ljava/util/Map;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)V
    .locals 19
    .param p2, "old"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;",
            ">;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "listing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isDirectory()Z

    move-result v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v0, p2

    iget v5, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize:I

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->len:J

    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->props:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap()Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    move-result-object v11

    move-object/from16 v0, p2

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->lockId:Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-wide v14, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->accessTime:J

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->modificationTime:J

    move-wide/from16 v16, v0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v18

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v18}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(ZLorg/apache/ignite/lang/IgniteUuid;IJLorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Ljava/util/Map;Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;Lorg/apache/ignite/lang/IgniteUuid;ZJJZ)V

    .line 217
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)V
    .locals 19
    .param p1, "info"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .prologue
    .line 304
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isDirectory()Z

    move-result v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v0, p1

    iget v5, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize:I

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->len:J

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing:Ljava/util/Map;

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->props:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap()Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->lockId:Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->accessTime:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->modificationTime:J

    move-wide/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v18

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(ZLorg/apache/ignite/lang/IgniteUuid;IJLorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Ljava/util/Map;Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;Lorg/apache/ignite/lang/IgniteUuid;ZJJZ)V

    .line 306
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;J)V
    .locals 20
    .param p1, "info"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p2, "len"    # J

    .prologue
    .line 156
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isDirectory()Z

    move-result v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v0, p1

    iget v5, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing:Ljava/util/Map;

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->props:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap()Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->lockId:Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->accessTime:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->modificationTime:J

    move-wide/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v18

    move-object/from16 v2, p0

    move-wide/from16 v6, p2

    invoke-direct/range {v2 .. v18}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(ZLorg/apache/ignite/lang/IgniteUuid;IJLorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Ljava/util/Map;Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;Lorg/apache/ignite/lang/IgniteUuid;ZJJZ)V

    .line 158
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;JJ)V
    .locals 20
    .param p1, "info"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p2, "accessTime"    # J
    .param p4, "modificationTime"    # J

    .prologue
    .line 168
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isDirectory()Z

    move-result v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v0, p1

    iget v5, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize:I

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->len:J

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing:Ljava/util/Map;

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->props:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap()Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->lockId:Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v18

    move-object/from16 v2, p0

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    invoke-direct/range {v2 .. v18}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(ZLorg/apache/ignite/lang/IgniteUuid;IJLorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Ljava/util/Map;Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;Lorg/apache/ignite/lang/IgniteUuid;ZJJZ)V

    .line 170
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Ljava/util/Map;)V
    .locals 19
    .param p1, "info"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p2, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isDirectory()Z

    move-result v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v0, p1

    iget v5, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize:I

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->len:J

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap()Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->lockId:Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->accessTime:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->modificationTime:J

    move-wide/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v18

    move-object/from16 v2, p0

    move-object/from16 v10, p2

    invoke-direct/range {v2 .. v18}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(ZLorg/apache/ignite/lang/IgniteUuid;IJLorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Ljava/util/Map;Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;Lorg/apache/ignite/lang/IgniteUuid;ZJJZ)V

    .line 181
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/lang/IgniteUuid;J)V
    .locals 19
    .param p1, "info"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p2, "lockId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "modificationTime"    # J

    .prologue
    .line 204
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isDirectory()Z

    move-result v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v0, p1

    iget v5, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize:I

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->len:J

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing:Ljava/util/Map;

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->props:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap()Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    move-result-object v11

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->accessTime:J

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v18

    move-object/from16 v2, p0

    move-object/from16 v12, p2

    move-wide/from16 v16, p3

    invoke-direct/range {v2 .. v18}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(ZLorg/apache/ignite/lang/IgniteUuid;IJLorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Ljava/util/Map;Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;Lorg/apache/ignite/lang/IgniteUuid;ZJJZ)V

    .line 206
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 14
    .param p1, "id"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 98
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object v0, p0

    move-object v2, p1

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    move v10, v3

    move v13, v3

    invoke-direct/range {v0 .. v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(ZLorg/apache/ignite/lang/IgniteUuid;IJLorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Ljava/util/Map;Lorg/apache/ignite/lang/IgniteUuid;ZJZ)V

    .line 99
    return-void
.end method

.method public constructor <init>(ZLjava/util/Map;)V
    .locals 14
    .param p1, "isDir"    # Z
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v8, p2

    invoke-direct/range {v0 .. v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(ZLorg/apache/ignite/lang/IgniteUuid;IJLorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Ljava/util/Map;Lorg/apache/ignite/lang/IgniteUuid;ZJZ)V

    .line 110
    return-void

    .line 108
    :cond_0
    const/high16 v3, 0x10000

    goto :goto_0
.end method

.method private constructor <init>(ZLorg/apache/ignite/lang/IgniteUuid;IJLorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Ljava/util/Map;Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;Lorg/apache/ignite/lang/IgniteUuid;ZJJZ)V
    .locals 6
    .param p1, "isDir"    # Z
    .param p2, "id"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "blockSize"    # I
    .param p4, "len"    # J
    .param p6, "affKey"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9, "fileMap"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10, "lockId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11, "cpProps"    # Z
    .param p12, "accessTime"    # J
    .param p14, "modificationTime"    # J
    .param p16, "evictExclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "IJ",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "ZJJZ)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p7, "listing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    .local p8, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {p7}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 264
    :cond_0
    if-eqz p1, :cond_2

    .line 265
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Directory length should be zero: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 266
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-eqz p3, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Directory block size should be zero: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 269
    :cond_2
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-gez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File length cannot be negative: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 270
    :cond_3
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-gtz p3, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File block size should be positive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 273
    :cond_4
    if-nez p2, :cond_5

    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object p2

    .end local p2    # "id":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_5
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 274
    if-eqz p1, :cond_6

    const-wide/16 p4, 0x0

    .end local p4    # "len":J
    :cond_6
    iput-wide p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->len:J

    .line 275
    if-eqz p1, :cond_7

    const/4 p3, 0x0

    .end local p3    # "blockSize":I
    :cond_7
    iput p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize:I

    .line 276
    iput-object p6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    .line 277
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing:Ljava/util/Map;

    .line 279
    if-nez p9, :cond_8

    if-nez p1, :cond_8

    .line 280
    new-instance p9, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    .end local p9    # "fileMap":Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;
    invoke-direct {p9}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;-><init>()V

    .line 282
    .restart local p9    # "fileMap":Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;
    :cond_8
    iput-object p9, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap:Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    .line 283
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->accessTime:J

    .line 284
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->modificationTime:J

    .line 287
    if-eqz p8, :cond_9

    invoke-interface {p8}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_9
    const/4 p8, 0x0

    .end local p8    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    :goto_0
    iput-object p8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->props:Ljava/util/Map;

    .line 290
    if-nez p7, :cond_b

    if-eqz p1, :cond_b

    .line 291
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing:Ljava/util/Map;

    .line 293
    :cond_b
    move-object/from16 v0, p10

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->lockId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 294
    move/from16 v0, p16

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude:Z

    .line 295
    return-void

    .line 287
    .restart local p8    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    if-eqz p11, :cond_a

    new-instance v2, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v2, p8}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(Ljava/util/Map;)V

    move-object p8, v2

    goto :goto_0
.end method

.method private constructor <init>(ZLorg/apache/ignite/lang/IgniteUuid;IJLorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Ljava/util/Map;Lorg/apache/ignite/lang/IgniteUuid;ZJZ)V
    .locals 17
    .param p1, "isDir"    # Z
    .param p2, "id"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "blockSize"    # I
    .param p4, "len"    # J
    .param p6, "affKey"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9, "lockId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10, "cpProps"    # Z
    .param p11, "modificationTime"    # J
    .param p13, "evictExclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "IJ",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "ZJZ)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p7, "listing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    .local p8, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-wide/from16 v12, p11

    move-wide/from16 v14, p11

    move/from16 v16, p13

    invoke-direct/range {v0 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(ZLorg/apache/ignite/lang/IgniteUuid;IJLorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Ljava/util/Map;Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;Lorg/apache/ignite/lang/IgniteUuid;ZJJZ)V

    .line 239
    return-void
.end method

.method static synthetic access$102(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsPath;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p1, "x1"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 35
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->path:Lorg/apache/ignite/igfs/IgfsPath;

    return-object p1
.end method

.method public static builder()Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$Builder;
    .locals 3

    .prologue
    .line 315
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$Builder;

    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-direct {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$Builder;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$1;)V

    return-object v0
.end method

.method public static builder(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$Builder;
    .locals 3
    .param p0, "origin"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .prologue
    .line 328
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$Builder;

    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$Builder;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$1;)V

    return-object v0
.end method


# virtual methods
.method public accessTime()J
    .locals 2

    .prologue
    .line 389
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->accessTime:J

    return-wide v0
.end method

.method public affinityKey()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public affinityKey(Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0
    .param p1, "affKey"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 424
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    .line 425
    return-void
.end method

.method public blockSize()I
    .locals 1

    .prologue
    .line 371
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 373
    :cond_0
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize:I

    return v0
.end method

.method public blocksCount()J
    .locals 4

    .prologue
    .line 380
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 382
    :cond_0
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->len:J

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 516
    if-ne p1, p0, :cond_1

    .line 524
    :cond_0
    :goto_0
    return v1

    .line 519
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 520
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 522
    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 524
    .local v0, "that":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id:Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->len:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->len:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->props:Ljava/util/Map;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->props:Ljava/util/Map;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->lockId:Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->lockId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public evictExclude()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude:Z

    return v0
.end method

.method public fileMap()Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap:Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    return-object v0
.end method

.method public fileMap(Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;)V
    .locals 0
    .param p1, "fileMap"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    .prologue
    .line 438
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap:Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    .line 439
    return-void
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 510
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteUuid;->hashCode()I

    move-result v0

    iget v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize:I

    xor-int/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->len:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->len:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->props:Ljava/util/Map;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    xor-int/2addr v0, v2

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->lockId:Lorg/apache/ignite/lang/IgniteUuid;

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->props:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->lockId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteUuid;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public id()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize:I

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
    .line 344
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize:I

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
    .line 360
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 362
    :cond_0
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->len:J

    return-wide v0
.end method

.method public listing()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 409
    :goto_0
    return-object v0

    .line 407
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 409
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public lockId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->lockId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public modificationTime()J
    .locals 2

    .prologue
    .line 396
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->modificationTime:J

    return-wide v0
.end method

.method public path()Lorg/apache/ignite/igfs/IgfsPath;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->path:Lorg/apache/ignite/igfs/IgfsPath;

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
    .line 447
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->props:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->props:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->props:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
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
    .line 494
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 495
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize:I

    .line 496
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->len:J

    .line 497
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readStringMap(Ljava/io/DataInput;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->props:Ljava/util/Map;

    .line 498
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->lockId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 499
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    .line 500
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing:Ljava/util/Map;

    .line 501
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap:Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    .line 502
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->accessTime:J

    .line 503
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->modificationTime:J

    .line 504
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude:Z

    .line 505
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/igfs/IgfsPath;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->path:Lorg/apache/ignite/igfs/IgfsPath;

    .line 506
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

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
    .line 478
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 479
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 480
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->len:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 481
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->props:Ljava/util/Map;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeStringMap(Ljava/io/DataOutput;Ljava/util/Map;)V

    .line 482
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->lockId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 483
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affKey:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 484
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 485
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap:Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 486
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->accessTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 487
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->modificationTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 488
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 489
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 490
    return-void
.end method
