.class public Lorg/apache/ignite/internal/visor/log/VisorLogFile;
.super Ljava/lang/Object;
.source "VisorLogFile.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final lastModified:J

.field private final path:Ljava/lang/String;

.field private final size:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 46
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/visor/log/VisorLogFile;-><init>(Ljava/lang/String;JJ)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "lastModified"    # J

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/log/VisorLogFile;->path:Ljava/lang/String;

    .line 58
    iput-wide p2, p0, Lorg/apache/ignite/internal/visor/log/VisorLogFile;->size:J

    .line 59
    iput-wide p4, p0, Lorg/apache/ignite/internal/visor/log/VisorLogFile;->lastModified:J

    .line 60
    return-void
.end method


# virtual methods
.method public lastModified()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/log/VisorLogFile;->lastModified:J

    return-wide v0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/log/VisorLogFile;->path:Ljava/lang/String;

    return-object v0
.end method

.method public size()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/log/VisorLogFile;->size:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-class v0, Lorg/apache/ignite/internal/visor/log/VisorLogFile;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
