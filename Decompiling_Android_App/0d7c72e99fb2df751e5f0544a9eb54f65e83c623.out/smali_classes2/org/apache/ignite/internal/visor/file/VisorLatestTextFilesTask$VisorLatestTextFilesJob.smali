.class Lorg/apache/ignite/internal/visor/file/VisorLatestTextFilesTask$VisorLatestTextFilesJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorLatestTextFilesTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/file/VisorLatestTextFilesTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorLatestTextFilesJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/Collection",
        "<",
        "Lorg/apache/ignite/internal/visor/log/VisorLogFile;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/apache/ignite/internal/visor/file/VisorLatestTextFilesTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/visor/file/VisorLatestTextFilesTask$VisorLatestTextFilesJob;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/lang/IgniteBiTuple;Z)V
    .locals 0
    .param p2, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "arg":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/lang/IgniteBiTuple;ZLorg/apache/ignite/internal/visor/file/VisorLatestTextFilesTask$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/lang/IgniteBiTuple;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/file/VisorLatestTextFilesTask$1;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/file/VisorLatestTextFilesTask$VisorLatestTextFilesJob;-><init>(Lorg/apache/ignite/lang/IgniteBiTuple;Z)V

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
    .line 49
    check-cast p1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/file/VisorLatestTextFilesTask$VisorLatestTextFilesJob;->run(Lorg/apache/ignite/lang/IgniteBiTuple;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected run(Lorg/apache/ignite/lang/IgniteBiTuple;)Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/log/VisorLogFile;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p1, "arg":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v9, 0x1388

    const/4 v7, 0x0

    .line 63
    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 64
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 66
    .local v5, "regexp":Ljava/lang/String;
    sget-boolean v8, Lorg/apache/ignite/internal/visor/file/VisorLatestTextFilesTask$VisorLatestTextFilesJob;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez v4, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 67
    :cond_0
    sget-boolean v8, Lorg/apache/ignite/internal/visor/file/VisorLatestTextFilesTask$VisorLatestTextFilesJob;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    if-nez v5, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 69
    :cond_1
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveIgniteUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    .line 71
    .local v6, "url":Ljava/net/URL;
    if-nez v6, :cond_3

    move-object v0, v7

    .line 88
    :cond_2
    :goto_0
    return-object v0

    .line 75
    :cond_3
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {v6}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 77
    .local v2, "folder":Ljava/io/File;
    invoke-static {v2, v5}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->matchedFiles(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 79
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/log/VisorLogFile;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v0, v7

    .line 80
    goto :goto_0

    .line 82
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v9, :cond_2

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    const/4 v8, 0x0

    const/16 v9, 0x1388

    invoke-interface {v0, v8, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "files":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/log/VisorLogFile;>;"
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/log/VisorLogFile;>;"
    move-object v0, v1

    .end local v1    # "files":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/log/VisorLogFile;>;"
    .restart local v0    # "files":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/log/VisorLogFile;>;"
    goto :goto_0

    .line 87
    .end local v0    # "files":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/log/VisorLogFile;>;"
    .end local v2    # "folder":Ljava/io/File;
    :catch_0
    move-exception v3

    .local v3, "ignored":Ljava/lang/Exception;
    move-object v0, v7

    .line 88
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-class v0, Lorg/apache/ignite/internal/visor/file/VisorLatestTextFilesTask$VisorLatestTextFilesJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
