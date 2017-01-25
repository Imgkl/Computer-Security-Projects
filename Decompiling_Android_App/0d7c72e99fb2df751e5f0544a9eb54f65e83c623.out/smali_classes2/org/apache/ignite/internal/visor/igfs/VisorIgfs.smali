.class public Lorg/apache/ignite/internal/visor/igfs/VisorIgfs;
.super Ljava/lang/Object;
.source "VisorIgfs.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final metrics:Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;

.field private final mode:Lorg/apache/ignite/igfs/IgfsMode;

.field private final name:Ljava/lang/String;

.field private final secondaryFsConfigured:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfs;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfs;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # Lorg/apache/ignite/igfs/IgfsMode;
    .param p3, "metrics"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;
    .param p4, "secondaryFsConfigured"    # Z

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfs;->name:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfs;->mode:Lorg/apache/ignite/igfs/IgfsMode;

    .line 61
    iput-object p3, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfs;->metrics:Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;

    .line 62
    iput-boolean p4, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfs;->secondaryFsConfigured:Z

    .line 63
    return-void
.end method

.method public static from(Lorg/apache/ignite/IgniteFileSystem;)Lorg/apache/ignite/internal/visor/igfs/VisorIgfs;
    .locals 5
    .param p0, "igfs"    # Lorg/apache/ignite/IgniteFileSystem;

    .prologue
    .line 70
    sget-boolean v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfs;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 72
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/visor/igfs/VisorIgfs;

    invoke-interface {p0}, Lorg/apache/ignite/IgniteFileSystem;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lorg/apache/ignite/IgniteFileSystem;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDefaultMode()Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v3

    invoke-interface {p0}, Lorg/apache/ignite/IgniteFileSystem;->metrics()Lorg/apache/ignite/igfs/IgfsMetrics;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->from(Lorg/apache/ignite/igfs/IgfsMetrics;)Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;

    move-result-object v4

    invoke-interface {p0}, Lorg/apache/ignite/IgniteFileSystem;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getSecondaryFileSystem()Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfs;-><init>(Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;Z)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public metrics()Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfs;->metrics:Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;

    return-object v0
.end method

.method public mode()Lorg/apache/ignite/igfs/IgfsMode;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfs;->mode:Lorg/apache/ignite/igfs/IgfsMode;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfs;->name:Ljava/lang/String;

    return-object v0
.end method

.method public secondaryFileSystemConfigured()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfs;->secondaryFsConfigured:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-class v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfs;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
