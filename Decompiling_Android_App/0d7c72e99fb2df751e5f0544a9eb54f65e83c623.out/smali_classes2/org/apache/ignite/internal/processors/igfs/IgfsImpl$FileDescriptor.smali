.class final Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;
.super Ljava/lang/Object;
.source "IgfsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileDescriptor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final fileId:Lorg/apache/ignite/lang/IgniteUuid;

.field private final fileName:Ljava/lang/String;

.field private final isFile:Z

.field private final parentId:Lorg/apache/ignite/lang/IgniteUuid;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1755
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Z)V
    .locals 1
    .param p1, "parentId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "isFile"    # Z

    .prologue
    .line 1777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1778
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1780
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->parentId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 1781
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->fileName:Ljava/lang/String;

    .line 1783
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 1784
    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->isFile:Z

    .line 1785
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;ZLorg/apache/ignite/internal/processors/igfs/IgfsImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$1;

    .prologue
    .line 1755
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Z)V

    return-void
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;

    .prologue
    .line 1755
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->parentId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;

    .prologue
    .line 1755
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->isFile:Z

    return v0
.end method

.method static synthetic access$1900(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;

    .prologue
    .line 1755
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;

    .prologue
    .line 1755
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->fileName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1800
    if-ne p1, p0, :cond_1

    .line 1808
    :cond_0
    :goto_0
    return v1

    .line 1803
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 1804
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 1806
    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;

    .line 1808
    .local v0, "that":Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->isFile:Z

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->isFile:Z

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->fileName:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->parentId:Lorg/apache/ignite/lang/IgniteUuid;

    if-nez v3, :cond_5

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->parentId:Lorg/apache/ignite/lang/IgniteUuid;

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->parentId:Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->parentId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1789
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->parentId:Lorg/apache/ignite/lang/IgniteUuid;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->parentId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteUuid;->hashCode()I

    move-result v0

    .line 1791
    .local v0, "res":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1792
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v2}, Lorg/apache/ignite/lang/IgniteUuid;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1793
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->isFile:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    :goto_1
    add-int v0, v2, v1

    .line 1795
    return v0

    .line 1789
    .end local v0    # "res":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1793
    .restart local v0    # "res":I
    :cond_1
    const/16 v1, 0x4d5

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1814
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
