.class public Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;
.super Ljava/lang/Object;
.source "VisorQueryTask.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/query/VisorQueryTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisorQueryArg"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final cacheName:Ljava/lang/String;

.field private final pageSize:Ljava/lang/Integer;

.field private final proj:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private final qryTxt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p2, "cacheName"    # Ljava/lang/String;
    .param p3, "qryTxt"    # Ljava/lang/String;
    .param p4, "pageSize"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "proj":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;->proj:Ljava/util/Collection;

    .line 80
    iput-object p2, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;->cacheName:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;->qryTxt:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;->pageSize:Ljava/lang/Integer;

    .line 83
    return-void
.end method


# virtual methods
.method public cacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public pageSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;->pageSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public proj()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;->proj:Ljava/util/Collection;

    return-object v0
.end method

.method public queryTxt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;->qryTxt:Ljava/lang/String;

    return-object v0
.end method
