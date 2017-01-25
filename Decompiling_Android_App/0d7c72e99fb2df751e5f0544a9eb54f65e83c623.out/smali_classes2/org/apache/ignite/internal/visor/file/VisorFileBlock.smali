.class public Lorg/apache/ignite/internal/visor/file/VisorFileBlock;
.super Ljava/lang/Object;
.source "VisorFileBlock.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final data:[B

.field private final lastModified:J

.field private final off:J

.field private final path:Ljava/lang/String;

.field private final size:J

.field private final zipped:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJZ[B)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "off"    # J
    .param p4, "size"    # J
    .param p6, "lastModified"    # J
    .param p8, "zipped"    # Z
    .param p9, "data"    # [B

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/file/VisorFileBlock;->path:Ljava/lang/String;

    .line 61
    iput-wide p2, p0, Lorg/apache/ignite/internal/visor/file/VisorFileBlock;->off:J

    .line 62
    iput-wide p4, p0, Lorg/apache/ignite/internal/visor/file/VisorFileBlock;->size:J

    .line 63
    iput-wide p6, p0, Lorg/apache/ignite/internal/visor/file/VisorFileBlock;->lastModified:J

    .line 64
    iput-boolean p8, p0, Lorg/apache/ignite/internal/visor/file/VisorFileBlock;->zipped:Z

    .line 65
    iput-object p9, p0, Lorg/apache/ignite/internal/visor/file/VisorFileBlock;->data:[B

    .line 66
    return-void
.end method


# virtual methods
.method public data()[B
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/file/VisorFileBlock;->data:[B

    return-object v0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/file/VisorFileBlock;->lastModified:J

    return-wide v0
.end method

.method public offset()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/file/VisorFileBlock;->off:J

    return-wide v0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/file/VisorFileBlock;->path:Ljava/lang/String;

    return-object v0
.end method

.method public size()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/file/VisorFileBlock;->size:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-class v0, Lorg/apache/ignite/internal/visor/file/VisorFileBlock;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zipped()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/file/VisorFileBlock;->zipped:Z

    return v0
.end method
