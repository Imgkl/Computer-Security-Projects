.class Lorg/apache/ignite/internal/visor/igfs/VisorIgfsFormatTask$VisorIgfsFormatJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorIgfsFormatTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/igfs/VisorIgfsFormatTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorIgfsFormatJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "debug"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLorg/apache/ignite/internal/visor/igfs/VisorIgfsFormatTask$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsFormatTask$1;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsFormatTask$VisorIgfsFormatJob;-><init>(Ljava/lang/String;Z)V

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
    .line 41
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsFormatTask$VisorIgfsFormatJob;->run(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected run(Ljava/lang/String;)Ljava/lang/Void;
    .locals 4
    .param p1, "igfsName"    # Ljava/lang/String;

    .prologue
    .line 56
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsFormatTask$VisorIgfsFormatJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/IgniteEx;->fileSystem(Ljava/lang/String;)Lorg/apache/ignite/IgniteFileSystem;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/IgniteFileSystem;->format()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const/4 v1, 0x0

    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to format IGFS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-class v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsFormatTask$VisorIgfsFormatJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
