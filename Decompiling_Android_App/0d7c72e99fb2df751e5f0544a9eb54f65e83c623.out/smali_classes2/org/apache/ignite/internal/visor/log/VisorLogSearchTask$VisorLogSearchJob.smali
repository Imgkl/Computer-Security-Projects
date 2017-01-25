.class Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorLogSearchTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorLogSearchJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;",
        "Ljava/util/Collection",
        "<",
        "Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;Z)V
    .locals 0
    .param p1, "arg"    # Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;
    .param p2, "debug"    # Z

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 132
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;ZLorg/apache/ignite/internal/visor/log/VisorLogSearchTask$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$1;

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchJob;-><init>(Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;Z)V

    return-void
.end method

.method private searchInFile(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/lang/String;I)Ljava/util/List;
    .locals 23
    .param p1, "f"    # Ljava/io/File;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "searchStr"    # Ljava/lang/String;
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<[",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v15, "searched":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/lang/GridTuple3<[Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    const/4 v12, 0x0

    .line 148
    .local v12, "line":I
    new-instance v13, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;

    const/16 v18, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v13, v0, v1, v2}, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;-><init>(Ljava/io/File;ILjava/nio/charset/Charset;)V

    .local v13, "reader":Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;
    const/16 v19, 0x0

    .line 149
    :try_start_0
    new-instance v11, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchJob$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchJob$1;-><init>(Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchJob;)V

    .line 159
    .local v11, "lastLines":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "lastFoundLine":I
    const/4 v6, 0x0

    .line 161
    .local v6, "foundCnt":I
    :goto_0
    invoke-virtual {v13}, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, "s":Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 162
    add-int/lit8 v12, v12, 0x1

    .line 164
    if-lez v10, :cond_0

    sub-int v18, v12, v10

    const/16 v20, 0xa

    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_0

    .line 165
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v7, v18, -0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_0

    .line 166
    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/ignite/internal/util/lang/GridTuple3;

    .line 168
    .local v16, "tup":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<[Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get2()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v4, v12, v18

    .line 170
    .local v4, "delta":I
    const/16 v18, 0xa

    move/from16 v0, v18

    if-gt v4, v0, :cond_0

    if-eqz v4, :cond_0

    .line 171
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get1()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    rsub-int/lit8 v20, v4, 0xa

    aput-object v14, v18, v20

    .line 165
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 177
    .end local v4    # "delta":I
    .end local v7    # "i":I
    .end local v16    # "tup":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<[Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    move/from16 v0, p4

    if-ge v6, v0, :cond_2

    .line 178
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 179
    const/16 v18, 0x15

    move/from16 v0, v18

    new-array v3, v0, [Ljava/lang/String;

    .line 181
    .local v3, "buf":[Ljava/lang/String;
    const/16 v18, 0xa

    aput-object v14, v3, v18

    .line 183
    const/4 v7, 0x1

    .line 185
    .restart local v7    # "i":I
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 186
    .local v9, "l":Ljava/lang/String;
    add-int/lit8 v18, v7, 0xa

    aput-object v9, v3, v18

    .line 188
    add-int/lit8 v7, v7, 0x1

    .line 189
    goto :goto_2

    .line 191
    .end local v9    # "l":Ljava/lang/String;
    :cond_1
    move v10, v12

    .line 193
    new-instance v18, Lorg/apache/ignite/internal/util/lang/GridTuple3;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/ignite/internal/util/lang/GridTuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v6, v6, 0x1

    .line 199
    .end local v3    # "buf":[Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v11, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_0

    .line 148
    .end local v6    # "foundCnt":I
    .end local v10    # "lastFoundLine":I
    .end local v11    # "lastLines":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v14    # "s":Ljava/lang/String;
    :catch_0
    move-exception v18

    :try_start_1
    throw v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :catchall_0
    move-exception v19

    move-object/from16 v22, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v22

    :goto_3
    if-eqz v13, :cond_3

    if-eqz v19, :cond_7

    :try_start_2
    invoke-virtual {v13}, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_4
    throw v18

    .restart local v6    # "foundCnt":I
    .restart local v10    # "lastFoundLine":I
    .restart local v11    # "lastLines":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v14    # "s":Ljava/lang/String;
    :cond_4
    if-eqz v13, :cond_5

    if-eqz v19, :cond_6

    :try_start_3
    invoke-virtual {v13}, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 203
    :cond_5
    :goto_5
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/util/lang/GridTuple3;

    .line 204
    .local v5, "entry":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<[Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get2()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v18, v12, v18

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->set2(Ljava/lang/Object;)V

    .line 205
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->set3(Ljava/lang/Object;)V

    goto :goto_6

    .line 201
    .end local v5    # "entry":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<[Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v17

    .local v17, "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v17    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-virtual {v13}, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->close()V

    goto :goto_5

    .end local v6    # "foundCnt":I
    .end local v10    # "lastFoundLine":I
    .end local v11    # "lastLines":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v14    # "s":Ljava/lang/String;
    :catch_2
    move-exception v17

    .restart local v17    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v17    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v13}, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->close()V

    goto :goto_4

    .line 208
    .restart local v6    # "foundCnt":I
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "lastFoundLine":I
    .restart local v11    # "lastLines":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v14    # "s":Ljava/lang/String;
    :cond_8
    return-object v15

    .line 201
    .end local v6    # "foundCnt":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "lastFoundLine":I
    .end local v11    # "lastLines":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v14    # "s":Ljava/lang/String;
    :catchall_1
    move-exception v18

    goto :goto_3
.end method


# virtual methods
.method protected bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 122
    check-cast p1, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchJob;->run(Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected run(Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;)Ljava/util/Collection;
    .locals 29
    .param p1, "arg"    # Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    # getter for: Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;->folder:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;->access$100(Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveIgniteUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v28

    .line 215
    .local v28, "url":Ljava/net/URL;
    if-nez v28, :cond_0

    .line 216
    new-instance v3, Lorg/apache/ignite/internal/GridInternalException;

    new-instance v10, Ljava/io/FileNotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Log folder not found: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;->folder:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;->access$100(Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v10}, Lorg/apache/ignite/internal/GridInternalException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v3

    throw v3

    .line 218
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteEx;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    .line 219
    .local v4, "uuid":Ljava/util/UUID;
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    .line 221
    .local v23, "nid":Ljava/lang/String;
    # getter for: Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;->filePtrn:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;->access$200(Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "@nid8"

    const/4 v11, 0x0

    const/16 v12, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "@nid"

    move-object/from16 v0, v23

    invoke-virtual {v3, v10, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 224
    .local v17, "filePtrn":Ljava/lang/String;
    :try_start_0
    new-instance v18, Ljava/io/File;

    invoke-virtual/range {v28 .. v28}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 225
    .local v18, "fld":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v3, v18

    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v24, v3, 0x1

    .line 227
    .local v24, "pathIdx":I
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->matchedFiles(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    .line 229
    .local v22, "matchingFiles":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/log/VisorLogFile;>;"
    new-instance v26, Ljava/util/ArrayList;

    # getter for: Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;->limit:I
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;->access$300(Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;)I

    move-result v3

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 231
    .local v26, "results":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;>;"
    const/16 v25, 0x0

    .line 233
    .local v25, "resCnt":I
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/ignite/internal/visor/log/VisorLogFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 235
    .local v21, "logFile":Lorg/apache/ignite/internal/visor/log/VisorLogFile;
    :try_start_1
    new-instance v16, Ljava/io/File;

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/visor/log/VisorLogFile;->path()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v16, "f":Ljava/io/File;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->textFile(Ljava/io/File;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->decode(Ljava/io/File;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 240
    .local v2, "charset":Ljava/nio/charset/Charset;
    # getter for: Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;->limit:I
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;->access$300(Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move/from16 v0, v25

    if-ne v0, v3, :cond_5

    .line 261
    .end local v2    # "charset":Ljava/nio/charset/Charset;
    .end local v16    # "f":Ljava/io/File;
    .end local v21    # "logFile":Lorg/apache/ignite/internal/visor/log/VisorLogFile;
    :cond_2
    :try_start_2
    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v26, 0x0

    .end local v26    # "results":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;>;"
    :cond_3
    return-object v26

    .line 225
    .end local v22    # "matchingFiles":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/log/VisorLogFile;>;"
    .end local v24    # "pathIdx":I
    .end local v25    # "resCnt":I
    :cond_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getParentFile()Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto :goto_0

    .line 243
    .restart local v2    # "charset":Ljava/nio/charset/Charset;
    .restart local v16    # "f":Ljava/io/File;
    .restart local v21    # "logFile":Lorg/apache/ignite/internal/visor/log/VisorLogFile;
    .restart local v22    # "matchingFiles":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/log/VisorLogFile;>;"
    .restart local v24    # "pathIdx":I
    .restart local v25    # "resCnt":I
    .restart local v26    # "results":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;>;"
    :cond_5
    :try_start_3
    # getter for: Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;->searchStr:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;->access$400(Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;->limit:I
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;->access$300(Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;)I

    move-result v10

    sub-int v10, v10, v25

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2, v3, v10}, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchJob;->searchInFile(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v27

    .line 246
    .local v27, "searched":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/lang/GridTuple3<[Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v3

    add-int v25, v25, v3

    .line 248
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, "path":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v6

    .local v6, "sz":J
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 251
    .local v8, "lastModified":J
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/ignite/internal/util/lang/GridTuple3;

    .line 252
    .local v15, "e":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<[Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v3, Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get1()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get2()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v15}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get3()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v3 .. v13}, Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;-><init>(Ljava/util/UUID;Ljava/lang/String;JJ[Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 257
    .end local v2    # "charset":Ljava/nio/charset/Charset;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "sz":J
    .end local v8    # "lastModified":J
    .end local v15    # "e":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<[Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v16    # "f":Ljava/io/File;
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v27    # "searched":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/lang/GridTuple3<[Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 263
    .end local v18    # "fld":Ljava/io/File;
    .end local v21    # "logFile":Lorg/apache/ignite/internal/visor/log/VisorLogFile;
    .end local v22    # "matchingFiles":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/log/VisorLogFile;>;"
    .end local v24    # "pathIdx":I
    .end local v25    # "resCnt":I
    .end local v26    # "results":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;>;"
    :catch_1
    move-exception v14

    .line 264
    .local v14, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/apache/ignite/IgniteException;

    invoke-direct {v3, v14}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    const-class v0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
