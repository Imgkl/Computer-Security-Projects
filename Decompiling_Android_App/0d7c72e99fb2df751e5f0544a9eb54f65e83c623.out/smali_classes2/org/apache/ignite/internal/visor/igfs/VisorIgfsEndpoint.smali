.class public Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;
.super Ljava/lang/Object;
.source "VisorIgfsEndpoint.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final gridName:Ljava/lang/String;

.field private final hostName:Ljava/lang/String;

.field private final igfsName:Ljava/lang/String;

.field private final port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "igfsName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "gridName"    # Ljava/lang/String;
    .param p3, "hostName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "port"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;->igfsName:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;->gridName:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;->hostName:Ljava/lang/String;

    .line 56
    iput p4, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;->port:I

    .line 57
    return-void
.end method


# virtual methods
.method public authority()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;->hostName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "addr":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;->igfsName:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;->gridName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 100
    .end local v0    # "addr":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 95
    .restart local v0    # "addr":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;->igfsName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;->gridName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;->gridName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;->igfsName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;->igfsName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;->gridName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public gridName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;->gridName:Ljava/lang/String;

    return-object v0
.end method

.method public hostName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public igfsName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;->igfsName:Ljava/lang/String;

    return-object v0
.end method

.method public port()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;->port:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-class v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
