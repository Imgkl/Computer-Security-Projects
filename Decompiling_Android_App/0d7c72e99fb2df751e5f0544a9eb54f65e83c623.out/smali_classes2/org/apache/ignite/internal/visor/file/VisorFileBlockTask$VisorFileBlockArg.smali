.class public Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;
.super Ljava/lang/Object;
.source "VisorFileBlockTask.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisorFileBlockArg"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final blockSz:I

.field private final lastModified:J

.field private final off:J

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JIJ)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "off"    # J
    .param p4, "blockSz"    # I
    .param p5, "lastModified"    # J

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;->path:Ljava/lang/String;

    .line 73
    iput-wide p2, p0, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;->off:J

    .line 74
    iput p4, p0, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;->blockSz:I

    .line 75
    iput-wide p5, p0, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;->lastModified:J

    .line 76
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;

    .prologue
    .line 49
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;->off:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;

    .prologue
    .line 49
    iget v0, p0, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;->blockSz:I

    return v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;

    .prologue
    .line 49
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;->lastModified:J

    return-wide v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-class v0, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
