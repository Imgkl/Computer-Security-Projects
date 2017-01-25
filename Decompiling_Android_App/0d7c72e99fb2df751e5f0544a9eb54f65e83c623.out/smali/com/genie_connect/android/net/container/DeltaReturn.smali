.class public Lcom/genie_connect/android/net/container/DeltaReturn;
.super Ljava/lang/Object;
.source "DeltaReturn.java"


# static fields
.field public static final DELTA_PARSER_DONT_PARSE:I = -0x22b

.field public static final DELTA_PARSER_LIVE:I = 0x0

.field public static final DELTA_PARSER_VERSION_2:I = 0x2


# instance fields
.field private mDeltas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLatestVersionName:Ljava/lang/String;

.field private mUseDeltaParser:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/genie_connect/android/net/container/DeltaReturn;->mUseDeltaParser:I

    return-void
.end method


# virtual methods
.method public getDeltaParserVersion()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/genie_connect/android/net/container/DeltaReturn;->mUseDeltaParser:I

    return v0
.end method

.method public getDeltas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/genie_connect/android/net/container/DeltaReturn;->mDeltas:Ljava/util/List;

    return-object v0
.end method

.method public getLatestVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/genie_connect/android/net/container/DeltaReturn;->mLatestVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public setDeltaParserVersion(I)V
    .locals 0
    .param p1, "useDeltaParser"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/genie_connect/android/net/container/DeltaReturn;->mUseDeltaParser:I

    .line 59
    return-void
.end method

.method public setDeltas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "deltas":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iput-object p1, p0, Lcom/genie_connect/android/net/container/DeltaReturn;->mDeltas:Ljava/util/List;

    .line 63
    return-void
.end method

.method public setLatestVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "latestVersionName"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/genie_connect/android/net/container/DeltaReturn;->mLatestVersionName:Ljava/lang/String;

    .line 67
    return-void
.end method
