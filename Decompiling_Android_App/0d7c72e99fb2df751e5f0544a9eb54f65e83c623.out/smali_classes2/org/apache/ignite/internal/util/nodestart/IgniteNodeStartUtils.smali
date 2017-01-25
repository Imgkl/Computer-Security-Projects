.class public Lorg/apache/ignite/internal/util/nodestart/IgniteNodeStartUtils;
.super Ljava/lang/Object;
.source "IgniteNodeStartUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CFG:Ljava/lang/String; = "cfg"

.field private static final DFLT_CFG:Ljava/lang/String; = ""

.field public static final DFLT_MAX_CONN:I = 0x5

.field private static final DFLT_NODES:I = 0x1

.field private static final DFLT_PORT:I = 0x16

.field private static final DFLT_SECTION:Ljava/lang/String; = "defaults"

.field public static final DFLT_TIMEOUT:I = 0x2710

.field public static final HOST:Ljava/lang/String; = "host"

.field public static final IGNITE_HOME:Ljava/lang/String; = "igniteHome"

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final LOGGER:Ljava/lang/String; = "logger"

.field public static final NODES:Ljava/lang/String; = "nodes"

.field public static final PASSWD:Ljava/lang/String; = "passwd"

.field public static final PORT:Ljava/lang/String; = "port"

.field private static final RANGE_SMB:Ljava/lang/String; = "~"

.field public static final SCRIPT:Ljava/lang/String; = "script"

.field public static final UNAME:Ljava/lang/String; = "uname"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/util/nodestart/IgniteNodeStartUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/nodestart/IgniteNodeStartUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method public static expandHost(Ljava/lang/String;)Ljava/util/Set;
    .locals 13
    .param p0, "addr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 353
    sget-boolean v10, Lorg/apache/ignite/internal/util/nodestart/IgniteNodeStartUtils;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    if-nez p0, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 355
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 357
    .local v1, "addrs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v10, "~"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 358
    const-string v10, "~"

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 360
    .local v9, "parts":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    .line 361
    new-instance v10, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid IP range: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 363
    :cond_1
    aget-object v10, v9, v12

    const/16 v11, 0x2e

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 365
    .local v8, "lastDot":I
    if-gez v8, :cond_2

    .line 366
    new-instance v10, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid IP range: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 368
    :cond_2
    aget-object v10, v9, v12

    invoke-virtual {v10, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "base":Ljava/lang/String;
    aget-object v10, v9, v12

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 370
    .local v4, "begin":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v6, v9, v10

    .line 373
    .local v6, "end":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 374
    .local v0, "a":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 376
    .local v2, "b":I
    if-le v0, v2, :cond_3

    .line 377
    new-instance v10, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid IP range: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v0    # "a":I
    .end local v2    # "b":I
    :catch_0
    move-exception v5

    .line 383
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v10, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid IP range: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 379
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "a":I
    .restart local v2    # "b":I
    :cond_3
    move v7, v0

    .local v7, "i":I
    :goto_0
    if-gt v7, v2, :cond_5

    .line 380
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 379
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 387
    .end local v0    # "a":I
    .end local v2    # "b":I
    .end local v3    # "base":Ljava/lang/String;
    .end local v4    # "begin":Ljava/lang/String;
    .end local v6    # "end":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "lastDot":I
    .end local v9    # "parts":[Ljava/lang/String;
    :cond_4
    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_5
    return-object v1
.end method

.method public static parseFile(Ljava/io/File;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 17
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 101
    sget-boolean v14, Lorg/apache/ignite/internal/util/nodestart/IgniteNodeStartUtils;->$assertionsDisabled:Z

    if-nez v14, :cond_0

    if-nez p0, :cond_0

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 102
    :cond_0
    sget-boolean v14, Lorg/apache/ignite/internal/util/nodestart/IgniteNodeStartUtils;->$assertionsDisabled:Z

    if-nez v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 103
    :cond_1
    sget-boolean v14, Lorg/apache/ignite/internal/util/nodestart/IgniteNodeStartUtils;->$assertionsDisabled:Z

    if-nez v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->isFile()Z

    move-result v14

    if-nez v14, :cond_2

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 105
    :cond_2
    const/4 v1, 0x0

    .line 107
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v10, 0x1

    .line 110
    .local v10, "lineCnt":I
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v16, "UTF-8"

    invoke-direct/range {v14 .. v16}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v12, 0x0

    .line 114
    .local v12, "section":Ljava/lang/String;
    :try_start_1
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 115
    .local v6, "hosts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .line 116
    .local v3, "dflts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v11, 0x0

    .line 118
    .local v11, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "line":Ljava/lang/String;
    if-eqz v9, :cond_a

    .line 119
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, "l":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "#"

    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, ";"

    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 118
    :cond_3
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 124
    :cond_4
    const-string v14, "["

    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    const-string v14, "]"

    invoke-virtual {v8, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 125
    invoke-static {v12, v6, v3, v11}, Lorg/apache/ignite/internal/util/nodestart/IgniteNodeStartUtils;->processSection(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 127
    .local v4, "dfltsTmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v4, :cond_5

    .line 128
    move-object v3, v4

    .line 130
    :cond_5
    new-instance v11, Ljava/util/HashMap;

    .end local v11    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 132
    .restart local v11    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v14, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 133
    goto :goto_1

    .line 134
    .end local v4    # "dfltsTmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    const-string v14, "="

    invoke-virtual {v8, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 135
    if-nez v12, :cond_7

    .line 136
    new-instance v14, Lorg/apache/ignite/IgniteCheckedException;

    const-string v15, "Ignite ini format doesn\'t support unnamed section."

    invoke-direct {v14, v15}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 172
    .end local v3    # "dflts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "hosts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v8    # "l":Ljava/lang/String;
    .end local v9    # "line":Ljava/lang/String;
    .end local v11    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v14

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v12    # "section":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_2
    move-object v5, v14

    .line 173
    .local v5, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_2
    new-instance v14, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to parse INI file (line "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    :goto_4
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v14

    .line 138
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "dflts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6    # "hosts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v8    # "l":Ljava/lang/String;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v11    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v12    # "section":Ljava/lang/String;
    :cond_7
    const/4 v14, 0x0

    const/16 v15, 0x3d

    :try_start_3
    invoke-virtual {v8, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, "key":Ljava/lang/String;
    const/16 v14, 0x3d

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v9, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 141
    .local v13, "val":Ljava/lang/String;
    const/4 v14, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :cond_8
    :goto_5
    packed-switch v14, :pswitch_data_0

    goto/16 :goto_1

    .line 148
    :pswitch_0
    invoke-interface {v11, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 172
    .end local v3    # "dflts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "hosts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "l":Ljava/lang/String;
    .end local v9    # "line":Ljava/lang/String;
    .end local v11    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "val":Ljava/lang/String;
    :catch_1
    move-exception v14

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v12    # "section":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_6
    move-object v5, v14

    goto :goto_3

    .line 141
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "dflts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6    # "hosts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "l":Ljava/lang/String;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v11    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v12    # "section":Ljava/lang/String;
    .restart local v13    # "val":Ljava/lang/String;
    :sswitch_0
    const-string v15, "host"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v14, 0x0

    goto :goto_5

    :sswitch_1
    const-string v15, "uname"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v14, 0x1

    goto :goto_5

    :sswitch_2
    const-string v15, "passwd"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v14, 0x2

    goto :goto_5

    :sswitch_3
    const-string v15, "igniteHome"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v14, 0x3

    goto :goto_5

    :sswitch_4
    const-string v15, "cfg"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v14, 0x4

    goto :goto_5

    :sswitch_5
    const-string v15, "script"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v14, 0x5

    goto :goto_5

    :sswitch_6
    const-string v15, "port"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v14, 0x6

    goto :goto_5

    :sswitch_7
    const-string v15, "nodes"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v14, 0x7

    goto :goto_5

    :sswitch_8
    const-string v15, "key"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/16 v14, 0x8

    goto :goto_5

    .line 153
    :pswitch_1
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 176
    .end local v3    # "dflts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "hosts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "l":Ljava/lang/String;
    .end local v9    # "line":Ljava/lang/String;
    .end local v11    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "val":Ljava/lang/String;
    :catchall_1
    move-exception v14

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 157
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "dflts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6    # "hosts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "l":Ljava/lang/String;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v11    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v13    # "val":Ljava/lang/String;
    :pswitch_2
    const-string v14, "key"

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 162
    .end local v7    # "key":Ljava/lang/String;
    .end local v13    # "val":Ljava/lang/String;
    :cond_9
    new-instance v14, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to parse INI file (line "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 165
    .end local v8    # "l":Ljava/lang/String;
    :cond_a
    invoke-static {v12, v6, v3, v11}, Lorg/apache/ignite/internal/util/nodestart/IgniteNodeStartUtils;->processSection(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 167
    .restart local v4    # "dfltsTmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v4, :cond_b

    .line 168
    move-object v3, v4

    .line 170
    :cond_b
    invoke-static {v6, v3}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v14

    .line 176
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    return-object v14

    .line 172
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "dflts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "dfltsTmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "hosts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v9    # "line":Ljava/lang/String;
    .end local v11    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "section":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_2
    move-exception v14

    goto/16 :goto_2

    :catch_3
    move-exception v14

    goto/16 :goto_6

    .line 141
    :sswitch_data_0
    .sparse-switch
        -0x3b544d62 -> :sswitch_2
        -0x361a2f35 -> :sswitch_5
        -0x5848477 -> :sswitch_3
        0x18064 -> :sswitch_4
        0x19e5f -> :sswitch_8
        0x30f5a8 -> :sswitch_0
        0x349881 -> :sswitch_6
        0x64212b1 -> :sswitch_7
        0x6a43880 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static processDefaults(Ljava/util/Map;)Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;
    .locals 12
    .param p0    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "dflts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v2, 0x16

    .line 248
    .local v2, "port":I
    const-string v0, "user.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "uname":Ljava/lang/String;
    const/4 v4, 0x0

    .line 250
    .local v4, "passwd":Ljava/lang/String;
    const/4 v5, 0x0

    .line 251
    .local v5, "key":Ljava/io/File;
    const/4 v6, 0x1

    .line 252
    .local v6, "nodes":I
    const/4 v7, 0x0

    .line 253
    .local v7, "igniteHome":Ljava/lang/String;
    const-string v8, ""

    .line 254
    .local v8, "cfg":Ljava/lang/String;
    const/4 v9, 0x0

    .line 255
    .local v9, "script":Ljava/lang/String;
    const/4 v10, 0x0

    .line 257
    .local v10, "log":Lorg/apache/ignite/IgniteLogger;
    if-eqz p0, :cond_8

    .line 258
    const-string v0, "port"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    const-string v0, "port"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 261
    :cond_0
    const-string v0, "uname"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 262
    const-string v0, "uname"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "uname":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 264
    .restart local v3    # "uname":Ljava/lang/String;
    :cond_1
    const-string v0, "passwd"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 265
    const-string v0, "passwd"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "passwd":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 267
    .restart local v4    # "passwd":Ljava/lang/String;
    :cond_2
    const-string v0, "key"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 268
    const-string v0, "key"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "key":Ljava/io/File;
    check-cast v5, Ljava/io/File;

    .line 270
    .restart local v5    # "key":Ljava/io/File;
    :cond_3
    const-string v0, "nodes"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 271
    const-string v0, "nodes"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 273
    :cond_4
    const-string v0, "igniteHome"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 274
    const-string v0, "igniteHome"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "igniteHome":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 276
    .restart local v7    # "igniteHome":Ljava/lang/String;
    :cond_5
    const-string v0, "cfg"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 277
    const-string v0, "cfg"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "cfg":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 279
    .restart local v8    # "cfg":Ljava/lang/String;
    :cond_6
    const-string v0, "script"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 280
    const-string v0, "script"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "script":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 282
    .restart local v9    # "script":Ljava/lang/String;
    :cond_7
    const-string v0, "logger"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 283
    const-string v0, "logger"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "log":Lorg/apache/ignite/IgniteLogger;
    check-cast v10, Lorg/apache/ignite/IgniteLogger;

    .line 286
    .restart local v10    # "log":Lorg/apache/ignite/IgniteLogger;
    :cond_8
    if-gtz v2, :cond_9

    .line 287
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid port number: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_9
    if-gtz v6, :cond_a

    .line 290
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid number of nodes: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_a
    new-instance v0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v10}, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/io/File;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    return-object v0
.end method

.method private static processHost(Ljava/util/Map;Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;)Ljava/util/Collection;
    .locals 15
    .param p1, "dfltSpec"    # Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/nodestart/IgniteNodeStartUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 307
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/nodestart/IgniteNodeStartUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 309
    :cond_1
    const-string v0, "host"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 310
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    const-string v10, "Host must be specified."

    invoke-direct {v0, v10}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_2
    const-string v0, "host"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/nodestart/IgniteNodeStartUtils;->expandHost(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v11

    .line 313
    .local v11, "hosts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "port"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "port"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 314
    .local v2, "port":I
    :goto_0
    const-string v0, "uname"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "uname"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 315
    .local v3, "uname":Ljava/lang/String;
    :goto_1
    const-string v0, "passwd"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "passwd"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 316
    .local v4, "passwd":Ljava/lang/String;
    :goto_2
    const-string v0, "key"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "key"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    move-object v5, v0

    .line 317
    .local v5, "key":Ljava/io/File;
    :goto_3
    const-string v0, "nodes"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "nodes"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 318
    .local v6, "nodes":I
    :goto_4
    const-string v0, "igniteHome"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "igniteHome"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 319
    .local v7, "igniteHome":Ljava/lang/String;
    :goto_5
    const-string v0, "cfg"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "cfg"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 320
    .local v8, "cfg":Ljava/lang/String;
    :goto_6
    const-string v0, "script"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v0, "script"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 322
    .local v9, "script":Ljava/lang/String;
    :goto_7
    if-gtz v2, :cond_b

    .line 323
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid port number: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    .end local v2    # "port":I
    .end local v3    # "uname":Ljava/lang/String;
    .end local v4    # "passwd":Ljava/lang/String;
    .end local v5    # "key":Ljava/io/File;
    .end local v6    # "nodes":I
    .end local v7    # "igniteHome":Ljava/lang/String;
    .end local v8    # "cfg":Ljava/lang/String;
    .end local v9    # "script":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->port()I

    move-result v2

    goto/16 :goto_0

    .line 314
    .restart local v2    # "port":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->username()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 315
    .restart local v3    # "uname":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->password()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 316
    .restart local v4    # "passwd":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->key()Ljava/io/File;

    move-result-object v5

    goto :goto_3

    .line 317
    .restart local v5    # "key":Ljava/io/File;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->nodes()I

    move-result v6

    goto :goto_4

    .line 318
    .restart local v6    # "nodes":I
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->igniteHome()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 319
    .restart local v7    # "igniteHome":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->configuration()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 320
    .restart local v8    # "cfg":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->script()Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    .line 325
    .restart local v9    # "script":Ljava/lang/String;
    :cond_b
    if-gtz v6, :cond_c

    .line 326
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid number of nodes: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_c
    if-nez v4, :cond_d

    if-nez v5, :cond_d

    .line 329
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    const-string v10, "Password or private key file must be specified."

    invoke-direct {v0, v10}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_d
    if-eqz v4, :cond_e

    if-eqz v5, :cond_e

    .line 332
    const/4 v4, 0x0

    .line 334
    :cond_e
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 337
    .local v13, "specs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 338
    .local v1, "host":Ljava/lang/String;
    new-instance v0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->logger()Lorg/apache/ignite/IgniteLogger;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/io/File;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 341
    .end local v1    # "host":Ljava/lang/String;
    :cond_f
    return-object v13
.end method

.method private static processSection(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p0, "section"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p1, "hosts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .local p2, "dflts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 192
    if-eqz p0, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move-object p3, v0

    .line 204
    .end local p3    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    return-object p3

    .line 195
    .restart local p3    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const-string v1, "defaults"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    if-eqz p2, :cond_1

    .line 197
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    const-string v1, "Only one \'defaults\' section is allowed."

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_3
    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object p3, v0

    .line 204
    goto :goto_0
.end method

.method public static specifications(Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "hosts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .local p1, "dflts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v6

    .line 222
    .local v6, "specsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;>;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/nodestart/IgniteNodeStartUtils;->processDefaults(Ljava/util/Map;)Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;

    move-result-object v0

    .line 224
    .local v0, "dfltSpec":Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 225
    .local v1, "host":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v1, v0}, Lorg/apache/ignite/internal/util/nodestart/IgniteNodeStartUtils;->processHost(Ljava/util/Map;Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;)Ljava/util/Collection;

    move-result-object v5

    .line 227
    .local v5, "specs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;

    .line 228
    .local v4, "spec":Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->host()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/apache/ignite/internal/util/nodestart/IgniteNodeStartUtils$1;

    invoke-direct {v8}, Lorg/apache/ignite/internal/util/nodestart/IgniteNodeStartUtils$1;-><init>()V

    invoke-static {v6, v7, v8}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    .end local v1    # "host":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "spec":Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;
    .end local v5    # "specs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;>;"
    :cond_1
    return-object v6
.end method
