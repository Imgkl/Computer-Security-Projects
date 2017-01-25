.class Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchJob$1;
.super Ljava/util/LinkedList;
.source "VisorLogSearchTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchJob;->searchInFile(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/lang/String;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchJob;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchJob;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchJob$1;->this$0:Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchJob;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 149
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchJob$1;->add(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchJob$1;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchJob$1;->removeFirst()Ljava/lang/Object;

    .line 154
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
