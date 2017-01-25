.class public Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;
.super Ljava/lang/Object;
.source "VisorLogSearchTask.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisorLogSearchArg"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final filePtrn:Ljava/lang/String;

.field private final folder:Ljava/lang/String;

.field private final limit:I

.field private final searchStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "filePtrn"    # Ljava/lang/String;
    .param p4, "limit"    # I

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;->searchStr:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;->folder:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;->filePtrn:Ljava/lang/String;

    .line 110
    iput p4, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;->limit:I

    .line 111
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;->folder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;->filePtrn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;

    .prologue
    .line 84
    iget v0, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;->limit:I

    return v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;->searchStr:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-class v0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
