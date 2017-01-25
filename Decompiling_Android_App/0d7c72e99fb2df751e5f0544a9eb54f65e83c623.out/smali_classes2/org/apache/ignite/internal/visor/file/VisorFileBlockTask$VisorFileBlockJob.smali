.class Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorFileBlockTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorFileBlockJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<+",
        "Ljava/io/IOException;",
        "Lorg/apache/ignite/internal/visor/file/VisorFileBlock;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;Z)V
    .locals 0
    .param p1, "arg"    # Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;
    .param p2, "debug"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;ZLorg/apache/ignite/internal/visor/file/VisorFileBlockTask$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$1;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockJob;-><init>(Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;Z)V

    return-void
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
    .line 87
    check-cast p1, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockJob;->run(Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method protected run(Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 11
    .param p1, "arg"    # Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<+",
            "Ljava/io/IOException;",
            "Lorg/apache/ignite/internal/visor/file/VisorFileBlock;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 103
    :try_start_0
    # getter for: Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;->path:Ljava/lang/String;
    invoke-static {p1}, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;->access$100(Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveIgniteUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v9

    .line 105
    .local v9, "url":Ljava/net/URL;
    if-nez v9, :cond_0

    .line 106
    new-instance v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    new-instance v1, Ljava/nio/file/NoSuchFileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File path not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;->path:Ljava/lang/String;
    invoke-static {p1}, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;->access$100(Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    .end local v9    # "url":Ljava/net/URL;
    :goto_0
    return-object v0

    .line 108
    .restart local v9    # "url":Ljava/net/URL;
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {v9}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    # getter for: Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;->off:J
    invoke-static {p1}, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;->access$200(Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;)J

    move-result-wide v1

    # getter for: Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;->blockSz:I
    invoke-static {p1}, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;->access$300(Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;)I

    move-result v3

    # getter for: Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;->lastModified:J
    invoke-static {p1}, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;->access$400(Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->readBlock(Ljava/io/File;JIJ)Lorg/apache/ignite/internal/visor/file/VisorFileBlock;

    move-result-object v6

    .line 110
    .local v6, "block":Lorg/apache/ignite/internal/visor/file/VisorFileBlock;
    new-instance v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 112
    .end local v6    # "block":Lorg/apache/ignite/internal/visor/file/VisorFileBlock;
    .end local v9    # "url":Ljava/net/URL;
    :catch_0
    move-exception v7

    .line 113
    .local v7, "e":Ljava/io/IOException;
    new-instance v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-direct {v0, v7, v10}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 116
    .local v8, "ignored":Ljava/net/URISyntaxException;
    new-instance v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    new-instance v1, Ljava/nio/file/NoSuchFileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File path not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;->path:Ljava/lang/String;
    invoke-static {p1}, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;->access$100(Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v10}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-class v0, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
