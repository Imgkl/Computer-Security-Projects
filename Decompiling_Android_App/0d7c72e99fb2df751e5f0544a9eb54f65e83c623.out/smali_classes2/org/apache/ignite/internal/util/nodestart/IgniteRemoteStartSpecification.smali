.class public Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;
.super Ljava/lang/Object;
.source "IgniteRemoteStartSpecification.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private cfg:Ljava/lang/String;

.field private cfgName:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private igniteHome:Ljava/lang/String;

.field private final key:Ljava/io/File;

.field private final keyName:Ljava/lang/String;

.field private logger:Lorg/apache/ignite/IgniteLogger;

.field private final nodes:I

.field private final passwd:Ljava/lang/String;

.field private final port:I

.field private script:Ljava/lang/String;

.field private final uname:Ljava/lang/String;

.field private valid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/io/File;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "host"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "port"    # I
    .param p3, "uname"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "passwd"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "key"    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "nodes"    # I
    .param p7, "igniteHome"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8, "cfg"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9, "script"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/io/File;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/io/File;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "port"    # I
    .param p3, "uname"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "passwd"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "key"    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "nodes"    # I
    .param p7, "igniteHome"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8, "cfg"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9, "script"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10, "logger"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    sget-boolean v1, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-gtz p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 102
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-gtz p6, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 104
    :cond_1
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .end local p1    # "host":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->host:Ljava/lang/String;

    .line 105
    iput p2, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->port:I

    .line 106
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .end local p3    # "uname":Ljava/lang/String;
    :goto_1
    iput-object p3, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->uname:Ljava/lang/String;

    .line 107
    invoke-static {p4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .end local p4    # "passwd":Ljava/lang/String;
    :goto_2
    iput-object p4, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->passwd:Ljava/lang/String;

    .line 108
    iput-object p5, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->key:Ljava/io/File;

    .line 109
    iput p6, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->nodes:I

    .line 110
    invoke-static {p7}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .end local p7    # "igniteHome":Ljava/lang/String;
    :goto_3
    iput-object p7, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->igniteHome:Ljava/lang/String;

    .line 111
    invoke-static {p8}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    move-object v1, p8

    :goto_4
    iput-object v1, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->cfg:Ljava/lang/String;

    .line 112
    if-nez p8, :cond_7

    move-object v1, v0

    :goto_5
    iput-object v1, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->cfgName:Ljava/lang/String;

    .line 113
    if-nez p5, :cond_8

    const-string v1, ""

    :goto_6
    iput-object v1, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->keyName:Ljava/lang/String;

    .line 114
    invoke-static {p9}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .end local p9    # "script":Ljava/lang/String;
    :goto_7
    iput-object p9, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->script:Ljava/lang/String;

    .line 115
    iput-object p10, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->logger:Lorg/apache/ignite/IgniteLogger;

    .line 116
    return-void

    .restart local p1    # "host":Ljava/lang/String;
    .restart local p3    # "uname":Ljava/lang/String;
    .restart local p4    # "passwd":Ljava/lang/String;
    .restart local p7    # "igniteHome":Ljava/lang/String;
    .restart local p9    # "script":Ljava/lang/String;
    :cond_2
    move-object p1, v0

    .line 104
    goto :goto_0

    .end local p1    # "host":Ljava/lang/String;
    :cond_3
    move-object p3, v0

    .line 106
    goto :goto_1

    .end local p3    # "uname":Ljava/lang/String;
    :cond_4
    move-object p4, v0

    .line 107
    goto :goto_2

    .end local p4    # "passwd":Ljava/lang/String;
    :cond_5
    move-object p7, v0

    .line 110
    goto :goto_3

    .end local p7    # "igniteHome":Ljava/lang/String;
    :cond_6
    move-object v1, v0

    .line 111
    goto :goto_4

    .line 112
    :cond_7
    invoke-static {p8}, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->shorten(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 113
    :cond_8
    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->shorten(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_9
    move-object p9, v0

    .line 114
    goto :goto_7
.end method

.method private static shorten(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 159
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 160
    .local v1, "idx1":I
    const/16 v3, 0x5c

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 161
    .local v2, "idx2":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 163
    .local v0, "idx":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .end local p0    # "path":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "path":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public configuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->cfg:Ljava/lang/String;

    return-object v0
.end method

.method public configurationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->cfgName:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    if-ne p0, p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v1

    .line 122
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 124
    check-cast v0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;

    .line 126
    .local v0, "that":Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->host:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->host:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->uname:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->uname:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->passwd:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->passwd:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->key:Ljava/io/File;

    if-nez v3, :cond_7

    iget-object v3, v0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->key:Ljava/io/File;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->igniteHome:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, v0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->igniteHome:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_5
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->cfg:Ljava/lang/String;

    if-nez v3, :cond_9

    iget-object v3, v0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->cfg:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_6
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->script:Ljava/lang/String;

    if-nez v3, :cond_a

    iget-object v3, v0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->script:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_7
    iget v3, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->port:I

    iget v4, v0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->port:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->nodes:I

    iget v4, v0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->nodes:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->host:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->uname:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->uname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->passwd:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->passwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->key:Ljava/io/File;

    iget-object v4, v0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->key:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->igniteHome:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->igniteHome:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->cfg:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->cfg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_6

    :cond_a
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->script:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->script:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_7
.end method

.method public fixPaths(C)V
    .locals 3
    .param p1, "separator"    # C

    .prologue
    const/16 v2, 0x5c

    const/16 v1, 0x2f

    .line 270
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->igniteHome:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->igniteHome:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->igniteHome:Ljava/lang/String;

    .line 273
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->script:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->script:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->script:Ljava/lang/String;

    .line 276
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->cfg:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->cfg:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->cfg:Ljava/lang/String;

    .line 278
    :cond_2
    return-void
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->host:Ljava/lang/String;

    if-nez v2, :cond_0

    move v0, v1

    .line 140
    .local v0, "res":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->uname:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    add-int v0, v3, v2

    .line 141
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->passwd:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    :goto_2
    add-int v0, v3, v2

    .line 142
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->key:Ljava/io/File;

    if-nez v2, :cond_3

    move v2, v1

    :goto_3
    add-int v0, v3, v2

    .line 143
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->igniteHome:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v1

    :goto_4
    add-int v0, v3, v2

    .line 144
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->cfg:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v1

    :goto_5
    add-int v0, v3, v2

    .line 145
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->script:Ljava/lang/String;

    if-nez v3, :cond_6

    :goto_6
    add-int v0, v2, v1

    .line 146
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->port:I

    add-int v0, v1, v2

    .line 147
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->nodes:I

    add-int v0, v1, v2

    .line 149
    return v0

    .line 138
    .end local v0    # "res":I
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->host:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 140
    .restart local v0    # "res":I
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->uname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 141
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->passwd:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 142
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->key:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v2

    goto :goto_3

    .line 143
    :cond_4
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->igniteHome:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 144
    :cond_5
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->cfg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 145
    :cond_6
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->script:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6
.end method

.method public host()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->host:Ljava/lang/String;

    return-object v0
.end method

.method public igniteHome()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->igniteHome:Ljava/lang/String;

    return-object v0
.end method

.method public key()Ljava/io/File;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->key:Ljava/io/File;

    return-object v0
.end method

.method public keyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->keyName:Ljava/lang/String;

    return-object v0
.end method

.method public logger()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->logger:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method public nodes()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->nodes:I

    return v0
.end method

.method public password()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->passwd:Ljava/lang/String;

    return-object v0
.end method

.method public port()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->port:I

    return v0
.end method

.method public script()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->script:Ljava/lang/String;

    return-object v0
.end method

.method public username()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->uname:Ljava/lang/String;

    return-object v0
.end method

.method public valid(Z)V
    .locals 0
    .param p1, "valid"    # Z

    .prologue
    .line 261
    iput-boolean p1, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->valid:Z

    .line 262
    return-void
.end method

.method public valid()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->valid:Z

    return v0
.end method
