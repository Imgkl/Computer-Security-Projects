.class public final Lorg/apache/ignite/internal/util/GridConfigurationFinder;
.super Ljava/lang/Object;
.source "GridConfigurationFinder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DFLT_CFG:Ljava/lang/String;

.field public static final Q_PREFIX:Ljava/lang/String; = "(?)"

.field private static final Q_PREFIX_LEN:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/util/GridConfigurationFinder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridConfigurationFinder;->$assertionsDisabled:Z

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "default-config.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/util/GridConfigurationFinder;->DFLT_CFG:Ljava/lang/String;

    .line 39
    const-string v0, "(?)"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/util/GridConfigurationFinder;->Q_PREFIX_LEN:I

    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lorg/apache/ignite/internal/util/GridConfigurationFinder;->Q_PREFIX_LEN:I

    return v0
.end method

.method public static getConfigFiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getIgniteHome()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/ignite/internal/util/GridConfigurationFinder;->getConfigFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getConfigFiles(Ljava/io/File;)Ljava/util/List;
    .locals 6
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    sget-boolean v2, Lorg/apache/ignite/internal/util/GridConfigurationFinder;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 70
    :cond_0
    invoke-static {p0}, Lorg/apache/ignite/internal/util/GridConfigurationFinder;->listFiles(Ljava/io/File;)Ljava/util/LinkedList;

    move-result-object v1

    .line 73
    .local v1, "lst":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/String;Ljava/lang/Long;Ljava/io/File;>;>;"
    new-instance v2, Lorg/apache/ignite/internal/util/GridConfigurationFinder$1;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/GridConfigurationFinder$1;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getIgniteHome()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/util/GridConfigurationFinder;->DFLT_CFG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "dflt":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    sget-object v2, Lorg/apache/ignite/internal/util/GridConfigurationFinder;->DFLT_CFG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple3;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 91
    :cond_1
    return-object v1
.end method

.method private static listFiles(Ljava/io/File;)Ljava/util/LinkedList;
    .locals 19
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    sget-boolean v14, Lorg/apache/ignite/internal/util/GridConfigurationFinder;->$assertionsDisabled:Z

    if-nez v14, :cond_0

    if-nez p0, :cond_0

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 107
    :cond_0
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 109
    .local v10, "paths":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/String;Ljava/lang/Long;Ljava/io/File;>;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_d

    aget-object v8, v2, v5

    .line 110
    .local v8, "name":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 113
    invoke-static {v3}, Lorg/apache/ignite/internal/util/GridConfigurationFinder;->listFiles(Ljava/io/File;)Ljava/util/LinkedList;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 109
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".xml"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 115
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    invoke-direct {v14, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v11, "reader":Ljava/io/BufferedReader;
    const/4 v15, 0x0

    .line 116
    const/4 v12, 0x0

    .line 117
    .local v12, "springCfg":Z
    const/4 v4, 0x0

    .line 121
    .local v4, "ggCfg":Z
    :cond_3
    :try_start_0
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 122
    const-string v14, "http://www.springframework.org/schema/beans"

    invoke-virtual {v7, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 123
    const/4 v12, 0x1

    .line 125
    :cond_4
    const-string v14, "class=\"org.apache.ignite.configuration.IgniteConfiguration\""

    invoke-virtual {v7, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 126
    const/4 v4, 0x1

    .line 128
    :cond_5
    if-eqz v12, :cond_3

    if-eqz v4, :cond_3

    .line 132
    :cond_6
    if-eqz v12, :cond_9

    .line 133
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getIgniteHome()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 135
    .local v9, "path":Ljava/lang/String;
    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 136
    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 138
    :cond_7
    sget-object v14, Lorg/apache/ignite/internal/util/GridConfigurationFinder;->DFLT_CFG:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 139
    if-nez v4, :cond_8

    .line 140
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "(?) "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 142
    :cond_8
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v9, v14, v3}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple3;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    .end local v9    # "path":Ljava/lang/String;
    :cond_9
    if-eqz v11, :cond_1

    if-eqz v15, :cond_a

    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v13

    .local v13, "x2":Ljava/lang/Throwable;
    invoke-virtual {v15, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .end local v13    # "x2":Ljava/lang/Throwable;
    :cond_a
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_1

    .line 115
    .end local v7    # "line":Ljava/lang/String;
    :catch_1
    move-exception v14

    :try_start_2
    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :catchall_0
    move-exception v15

    move-object/from16 v18, v15

    move-object v15, v14

    move-object/from16 v14, v18

    :goto_2
    if-eqz v11, :cond_b

    if-eqz v15, :cond_c

    :try_start_3
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_b
    :goto_3
    throw v14

    :catch_2
    move-exception v13

    .restart local v13    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v15, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v13    # "x2":Ljava/lang/Throwable;
    :cond_c
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    goto :goto_3

    .line 149
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "ggCfg":Z
    .end local v8    # "name":Ljava/lang/String;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .end local v12    # "springCfg":Z
    :cond_d
    return-object v10

    .line 145
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "ggCfg":Z
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "springCfg":Z
    :catchall_1
    move-exception v14

    goto :goto_2
.end method
